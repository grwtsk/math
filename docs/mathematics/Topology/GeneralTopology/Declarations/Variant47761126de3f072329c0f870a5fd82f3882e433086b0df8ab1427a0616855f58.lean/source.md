# Complete source: GRWTSK.Topology.GeneralTopology.Declarations.Variant47761126de3f072329c0f870a5fd82f3882e433086b0df8ab1427a0616855f58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51f6de7acf68e7202c00266eae3b6ce41826d5d8` · SHA-256 `b955f0fc35919610fb58691aa3ff3a80c1a344c5c704283539626f212f46dc0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Main.Variant461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Main.Variant461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}

namespace GRWTSK.Topology.GeneralTopology.Main.Variant461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6

#!/usr/bin/env python3
"""Print Mathlib modules in topological (import-DAG) order.

If filenames or module names are provided on stdin, outputs only those modules
in topological order; otherwise outputs all modules.

By default modules are printed leaves-last: if A imports B, then B appears
before A. Use --reverse for leaves-first order.

TODO: import-graph should come with this feature.
"""

import argparse
import sys
from pathlib import Path

from dag_traversal import DAG


def main():
    parser = argparse.ArgumentParser(
        description="Print Mathlib modules in topological order.",
    )
    parser.add_argument(
        "--reverse", action="store_true",
        help="Leaves first (if A imports B, A appears before B)",
    )
    args = parser.parse_args()

    dag = DAG.from_directories(Path("."))
    levels = dag.levels_backward()
    if not args.reverse:
        levels = levels[::-1]
    sorted_modules = [m for level in levels for m in level]

    # Optionally filter to modules listed on stdin.
    if not sys.stdin.isatty():
        input_modules = set()
        for line in sys.stdin:
            line = line.strip()
            if not line:
                continue
            if line.endswith(".lean"):
                # Convert file path (Mathlib/Foo/Bar.lean) to module name.
                input_modules.add(".".join(Path(line).with_suffix("").parts))
            else:
                input_modules.add(line)
        if input_modules:
            sorted_modules = [m for m in sorted_modules if m in input_modules]

    for module in sorted_modules:
        print(module)


if __name__ == "__main__":
    main()
```
