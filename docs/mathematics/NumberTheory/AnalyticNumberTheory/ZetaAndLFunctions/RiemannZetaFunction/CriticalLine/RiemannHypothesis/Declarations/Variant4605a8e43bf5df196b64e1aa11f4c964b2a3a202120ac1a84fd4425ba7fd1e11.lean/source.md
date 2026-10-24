# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Declarations.Variant4605a8e43bf5df196b64e1aa11f4c964b2a3a202120ac1a84fd4425ba7fd1e11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a4bda3049b8b738612642fd9f6e90d8ba6a1dd5` · SHA-256 `4605a8e43bf5df196b64e1aa11f4c964b2a3a202120ac1a84fd4425ba7fd1e11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
# Naming and source organization

## Canonical identities

| Kind | Exact name |
| --- | --- |
| Git repository | `formal-research` |
| Lake package | `formal-research` |
| Lean library | `FormalResearch` |
| Lean root module | `FormalResearch` |
| Default Git branch | `main` |

Repository and package names use lowercase-kebab-case. Lean modules and
namespaces use UpperCamelCase, retaining the established canonical acronym
`SOCAS`.

| Research family | Machine slug | Lean namespace |
| --- | --- | --- |
| Mathematical Tooling | `mathematical-tooling` | `FormalResearch.MathematicalTooling` |
| Noeaaeue | `noeaaeue` | `FormalResearch.Noeaaeue` |
| SOCAS | `socas` | `FormalResearch.SOCAS` |
| Riemann Hypothesis | `riemann-hypothesis` | `FormalResearch.RiemannHypothesis` |
| Graham's-number neighborhood factorization | `graham-number-neighborhood-factorization` | `FormalResearch.GrahamNumberNeighborhoodFactorization` |
| Intuition at the Proof Horizon | `proof-horizon` | `FormalResearch.ProofHorizon` |

The machine-readable titles and mappings live in
[`registry/projects.toml`](../registry/projects.toml). Do not infer a namespace
from a display title. Do not invent an expansion of `SOCAS` or substitute `RH`,
`Graham`, `GN`, or `IPH` for canonical source namespaces. Use American-English
`Factorization` / `factorization`, following Mathlib spelling.

## Modules and declarations

A meaningful mathematical namespace immediately follows `FormalResearch`.
Do not introduce top-level containers called `Projects`, `Theorems`,
`ResearchProjects`, `Misc`, or `Experiments`.

Example future import paths illustrate the organization without asserting those
modules currently exist:

```lean
import FormalResearch.MathematicalTooling.Transport.Finite
import FormalResearch.Noeaaeue.Kernel.Syntax
import FormalResearch.RiemannHypothesis.CriticalLine.Basic
import FormalResearch.ProofHorizon.ProofCarryingGrammar.Kernel.Soundness
```

Use these declaration conventions:

| Kind | Convention | Examples |
| --- | --- | --- |
| Types, structures, mathematical predicates | UpperCamelCase | `ProofState`, `Grammar`, `ProofCertificate`, `FiniteGame`, `TransportCompatible`, `RiemannHypothesis` |
| Functions returning data | lowerCamelCase | `normalizeGrammar`, `transportState`, `certificateOfProof` |
| Theorems and proofs | semantic snake_case | `transport_comp`, `finite_game_terminates`, `certificate_sound`, `grammar_kernel_complete`, `zero_mem_critical_line_of_hypothesis` |

Avoid `main_theorem`, `theorem_17`, `result_4`, `paper_theorem`, `ghost_theorem`,
and `important_result`: these describe presentation or importance rather than
mathematical content.

The persistent ID `T-017` may eventually map through the registry to a semantic
declaration such as `FormalResearch.ProofHorizon.finite_game_resolution`. It
must never determine a namespace `FormalResearch.T017` or a theorem named
`T017`. Numbered result IDs belong to publication identity, not mathematical
source organization.

## Branches

Work in the existing checkout on `main` by default unless an isolated workflow is
required. When isolation is explicitly requested or direct work on `main` is
technically impossible, use a descriptive lowercase path:

```text
work/mathematical-tooling/finite-transport
work/noeaaeue/kernel-state
work/socas/<subject>
work/riemann-hypothesis/critical-line
work/graham-number-neighborhood-factorization/local-factorization
work/proof-horizon/proof-carrying-grammar
theorem/t-017/finite-holonomy-resolution
build/lean-4.34
build/mathlib-update
refactor/shared/finite-transport
```

Avoid names such as `new`, `test`, `tmp`, `final`, `final2`, `working`, `fix`,
`robert`, or `branch1`. Preserve unrelated or conflicting edits and report exact
collision paths instead of discarding changes. Never push or modify remote
branches without an explicit request.

## Commits

Use a small semantic vocabulary, with the theorem ID only when the change
specifically concerns a registered result. These are naming examples, not a
record of completed work:

```text
theorem(T-017): prove finite holonomy resolution
lemma(noeaaeue): establish transport composition
def(rh): formalize critical-line predicate
refactor(shared): extract finite transport
registry(T-017): bind publication identity
docs(proof-horizon): record formalization boundary
build(mathlib): update to v4.34.0
chore(repo): normalize source layout
```

A short commit scope such as `rh` belongs to history metadata and does not change
the required full Lean namespace.
````
