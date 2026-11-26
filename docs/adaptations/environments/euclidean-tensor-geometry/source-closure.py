"""Inventory pinned upstream imports by reading Git blobs.

Local attribution: grwtsk contributors.
"""

import collections
import hashlib
import json
import pathlib
import re
import subprocess
import sys

repo = sys.argv[1] if len(sys.argv) > 1 else '/tmp/grwtsk-openai379-audit'
revision = '3344da59991ed94f9ba711217b29c1d760badfa6'
def git(*args):
    return subprocess.check_output(['git', '-C', repo, *args])

tree = {}
for item in git('ls-tree', '-zr', revision, 'lean').split(b'\0'):
    if not item:
        continue
    header, path = item.decode().split('\t')
    mode, kind, sha = header.split()
    if kind == 'blob' and path.endswith('.lean'):
        tree[path.removeprefix('lean/').removesuffix('.lean').replace('/', '.')] = (path, sha)

roots = {
    'tensor_chart': ['OAI.LinearAlgebra.SpectralBooks.SpectralFlatLaw'],
    'tensor_geometry': [
        'OAI.LinearAlgebra.SpectralBooks.SpectralFlatLaw',
        'OAI.LinearAlgebra.SpectralBooks.EveryField',
        'OAI.Hierarchy.PrimeFlats',
        'OAI.Hierarchy.Homogenization',
        'OAI.Hierarchy.BallWidth',
    ],
    'matrix_exponents': [
        'OAI.LinearAlgebra.SpectralBooks.ExactExponent',
        'OAI.LinearAlgebra.SpectralBooks.DivisionExponent',
        'OAI.LinearAlgebra.SpectralBooks.CircuitRankSpecialization',
        'OAI.LinearAlgebra.SpectralBooks.SquareRankModel',
    ],
    'matrix_rank_comparison': ['OAI.LinearAlgebra.SpectralBooks.BorderComparison'],
    'arithmetic_hierarchy': ['OAI.Hierarchy.Strict', 'OAI.Hierarchy.SeparationFromFlats'],
    'hamiltonian_permanent': [
        'OAI.Computability.VPVNP.Separation',
        'OAI.Computability.VPVNP.ClassSeparation',
        'OAI.Computability.VPVNP.QuantitativeSeparation',
    ],
    'finite_fourier': [
        'OAI.LinearAlgebra.FiniteFourier.Main',
        "OAI.LinearAlgebra.FiniteFourier.IntegralConvolutionTheorem",
        'OAI.Computability.FourierTransform.Main',
    ],
    'tape_integer_multiplication': [
        'OAI.Computability.NearSquareRoot.Main',
        'OAI.Computability.MultitapeWeakETH.NearRoot',
    ],
    'sunflowers': ['OAI.Combinatorics.Sunflower.FixedBase'],
}
challenges = ['ArithmeticHierarchy', 'VPVNP', 'ExactFourier', 'UniformFourier',
              'NearSquareRootMultiplication', 'MultitapeWeakETH', 'MatrixExponent', 'Sunflower']

batch = subprocess.Popen(['git', '-C', repo, 'cat-file', '--batch'], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
def blob(sha):
    batch.stdin.write(sha.encode() + b'\n')
    batch.stdin.flush()
    result = batch.stdout.readline().decode().strip().split()
    if len(result) != 3:
        raise ValueError(result)
    body = batch.stdout.read(int(result[2])).decode()
    batch.stdout.read(1)
    return body

comment_tokens = re.compile(r'/\-|\-/|--|\n')
def without_comments(s):
    depth = 0
    last = 0
    out = []
    single = False
    for match in comment_tokens.finditer(s):
        if depth == 0 and not single:
            out.append(s[last:match.start()])
        elif match[0] == '\n':
            out.append('\n')
        if match[0] == '--' and depth == 0:
            single = True
        elif match[0] == '\n':
            single = False
            if depth == 0:
                out.append('\n')
        elif not single and match[0] == '/-':
            depth += 1
        elif not single and match[0] == '-/' and depth:
            depth -= 1
        last = match.end()
    if depth == 0 and not single:
        out.append(s[last:])
    return ''.join(out)

import_line = re.compile(r'^(?:(?:public|private|meta)\s+)*import\s+(.+)$')
seen = {}
def read(module):
    if module in seen:
        return
    path, sha = tree[module]
    s = without_comments(blob(sha))
    imports = []
    for ln in s.splitlines():
        ln = ln.strip()
        if not ln or ln in {'prelude','module'}:
            continue
        m = import_line.fullmatch(ln)
        if not m:
            break
        imports.extend(m.group(1).split())
    seen[module] = {'path': path, 'git_blob': sha, 'imports': imports}
    for dependency in imports:
        if dependency in tree:
            read(dependency)

def closure(start):
    pending = list(start)
    included = set()
    external = set()
    while pending:
        module = pending.pop()
        if module in included:
            continue
        if module not in tree:
            external.add(module)
            continue
        included.add(module)
        pending.extend(seen[module]['imports'])
    data = ''.join('\t'.join([k, seen[k]['git_blob']])+'\n' for k in sorted(included))
    return dict(roots=start, count=len(included), sha256=hashlib.sha256(data.encode()).hexdigest(),
                external_prefixes=dict(sorted(collections.Counter(k.split('.')[0] for k in external).items())),
                external_imports=sorted(external))

for group in roots.values():
    for module in group:
        read(module)
for name in challenges:
    read('ComparatorChallenges.'+name)
batch.stdin.close()
assert batch.wait() == 0
pieces = {key: closure(group) for key, group in roots.items()}
pieces['combined_solution'] = closure([m for group in roots.values() for m in group])
pieces['comparator_challenges'] = closure(['ComparatorChallenges.'+name for name in challenges])
out = pathlib.Path(sys.argv[2] if len(sys.argv) > 2 else '/tmp/grwtsk-openai379-final-closure.json')
out.write_text(json.dumps(dict(revision=revision, method='Transitive source import traversal using Git blobs. Each closure SHA-256 hashes sorted module<TAB>git_blob<LF> records. External package closure and Lean term dependency auditing require Lean.',
    closures=pieces, modules=dict(sorted(seen.items()))), ensure_ascii=False, indent=2)+'\n')
for key, item in pieces.items():
    print(key, item['count'], item['sha256'], item['external_prefixes'])
