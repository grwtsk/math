# Verification target: GRWTSK.Algebra.UniversalAlgebra.IsFinite.Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "590199ab52f716da0391d177e1e393324510952d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `590199ab52f716da0391d177e1e393324510952d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Zero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Ab` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.SerreClass.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isFinite](../../../../../mathematics/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean/declarations/isfinite--434ec35060cb192df3e376c8.md) | 29 | `declaration-track:434ec35060cb192df3e376c894e184397e40f0ae20dbeef7e54450d4279d650a` |
| 2 | `lemma` | [prop_isFinite_iff](../../../../../mathematics/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean/declarations/prop-isfinite-iff--1638d1b3b291b47b6dbb6e60.md) | 33 | `result-track:1638d1b3b291b47b6dbb6e60e215eec90077129ba2d70404335ae7de4b054fa6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IsFinite/Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a.lean/declarations/instance--8b18f69b67d7073a5635bcda.md) | 35 | `declaration-track:8b18f69b67d7073a5635bcda509d8a6aa90c0a278d545f341d5ba578c4cbb4a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
