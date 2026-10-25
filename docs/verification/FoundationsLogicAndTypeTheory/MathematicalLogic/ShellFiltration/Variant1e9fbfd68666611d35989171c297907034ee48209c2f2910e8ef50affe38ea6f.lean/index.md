# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellFiltration.Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0426a6f8dfdd3c8bcc022ea369bf7ed8cb2f6816",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0426a6f8dfdd3c8bcc022ea369bf7ed8cb2f6816`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Cellular.Cube` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsBoundaryCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/declarations/isboundarycell--97a76c7a45a35a2441248ad8.md) | 19 | `declaration-track:97a76c7a45a35a2441248ad8845291b6b805f0bccfb2e4d57a83f85cd612de02` |
| 2 | `def` | [IsInteriorCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/declarations/isinteriorcell--221df6c1250a78e36418f179.md) | 25 | `declaration-track:221df6c1250a78e36418f179cccb82b1b3c2d623abb8b8cd434646757ae852d5` |
| 3 | `abbrev` | [BoundaryShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/declarations/boundaryshell--210e78a6db4ad3939a96d610.md) | 31 | `declaration-track:210e78a6db4ad3939a96d610fc3ed3366f907a3091420148bf62bf031dc0173b` |
| 4 | `def` | [IsNewChildCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/declarations/isnewchildcell--dd7c3690f95f7f9ff1668c27.md) | 34 | `declaration-track:dd7c3690f95f7f9ff1668c2747ebee20542e940b5f31b63246003ebf4e7924ad` |
| 5 | `theorem` | [boundary_or_not_boundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/declarations/boundary-or-not-boundary--a6894b68b64046a65df10297.md) | 39 | `result-track:a6894b68b64046a65df102976e0b00c0695df49ef7297047779b43e4d8da6d3a` |
| 6 | `theorem` | [not_interior_of_boundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/declarations/not-interior-of-boundary--ca60e3be56a41de2b89fc762.md) | 46 | `result-track:ca60e3be56a41de2b89fc76200e606f614aff2e19fb9aa746ae319d9b20f2585` |
| 7 | `theorem` | [all_boundary_level_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f.lean/declarations/all-boundary-level-zero--91f8a94797e5635a393582a7.md) | 57 | `result-track:91f8a94797e5635a393582a724baeefac579577f1b64e9713c9151763ce8785d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
