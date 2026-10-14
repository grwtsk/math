# Lean source layout and source roles

The maintained Lean source root is `GRWTSK/`, with the conventional public
entry point `GRWTSK.lean` at repository root. Package metadata, scripts,
documentation, licenses, and evidence remain outside the Lean source tree.
No maintained first-party Lean source is permitted elsewhere.

Placement follows the mathematical subject and object of each declaration.
The authoritative current inventory and old-to-new relationships are in
[`docs/math-layout.json`](../math-layout.json). The generated, review-friendly
projection is [`math-source-catalog.json`](math-source-catalog.json). Neither a
path move nor a new digest changes a theorem's logical status.

Source role is independent of subject and proof status:

- `library` modules contain reusable mathematical declarations and participate
  in the public `GRWTSK.lean` import closure.
- `positive-check` modules live under `Checks/Positive/`, compile separately,
  and do not enter the public umbrella.
- `negative-control` modules live under `Checks/Negative/`; their runners must
  observe a specific Lean rejection rather than an infrastructure failure.
- `audit-driver` modules live directly under an object's `Checks/` directory
  and are invoked by dedicated verification entry points.
- `historical-evidence` is immutable, excluded from active build discovery,
  and cataloged separately from maintained source.

Library modules may not import any validation role. Every validation source
has an explicit runner and outcome policy in the authoritative inventory.
Historical namespaces may remain as declaration-level compatibility names;
retired module paths and import shims are not recreated.

Run `python3 -B scripts/check_math_layout.py` to check containment, role
classification, catalog completeness, imports, cycles, case-folding
collisions, public closure coverage, and validation isolation. The check is
structural; native replay and the owned-declaration audit remain separate.

Repository-wide artifact accountability is a separate layer. The versioned
[`rules/registry.json`](rules/registry.json) states each rule and its actual
soundness/enforcement status; [`reconstruction-recipes.json`](reconstruction-recipes.json)
declares literal, observation, and generated reconstruction modes; and the
generated [`repository-artifact-catalog.json`](repository-artifact-catalog.json)
reconciles all Git-visible artifact types. None of those byte-reconstruction
records substitutes for Lean kernel replay or intended-statement comparison.
