# Verification target: GRWTSK.Geometry.DifferentialGeometry.GroupLieAlgebra.Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35bc77697e87d5f0fda68d1ba0145105c809f73e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35bc77697e87d5f0fda68d1ba0145105c809f73e`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorField.LieBracket` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/groupliealgebra--e230358754ece4c590bc93ca.md) | 60 | `declaration-track:e230358754ece4c590bc93ca93ee35d9b31ca02b6e5e7178216d3d99092f7774` |
| 2 | `def` | [mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mulinvariantvectorfield--55d8f170d9fb31685e2d74b9.md) | 66 | `declaration-track:55d8f170d9fb31685e2d74b9e220711d7f8f003a58916fb41d9296b77f6ff6ca` |
| 3 | `lemma` | [mulInvariantVectorField_add](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mulinvariantvectorfield-add--cebbdc63c6a8a6dd0b88517c.md) | 70 | `result-track:cebbdc63c6a8a6dd0b88517c3a96439c8c817a3ba0275e72ea9f52faab75dc94` |
| 4 | `lemma` | [addInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/addinvariantvectorfield-smul--c50b92064bca60ea1114643d.md) | 77 | `result-track:c50b92064bca60ea1114643d35f88df41c663eaf9c2c4cf07fa523ee7a723f9c` |
| 5 | `lemma` | [mulInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mulinvariantvectorfield-smul--5fee8caf81c05ce239982dc2.md) | 83 | `result-track:5fee8caf81c05ce239982dc2748a9a59c2960b671c3aba6c3bd4b2ed66b9a114` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/instance--20394fa0a13b911e46098de4.md) | 94 | `declaration-track:20394fa0a13b911e46098de44c114a018fd04eebd95a9746ce69c41a279afde5` |
| 7 | `lemma` | [GroupLieAlgebra.bracket_def](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/groupliealgebra-bracket-def--2a331df4da4a16d5c708f4be.md) | 98 | `result-track:2a331df4da4a16d5c708f4be80fab919c95d58bac76a060e34b3e4da5eff90a9` |
| 8 | `lemma` | [inverse_mfderiv_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/inverse-mfderiv-mul-left--80f5c200b35a41b187c9fa19.md) | 104 | `result-track:80f5c200b35a41b187c9fa19ab839194f1d7c48ea33e48ef0727f6b98a64bfb1` |
| 9 | `lemma` | [mpullback_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mpullback-mulinvariantvectorfield--97be3e7c04aabdeed10a6e37.md) | 123 | `result-track:97be3e7c04aabdeed10a6e37f377f612d2b7f602bdeb693a1f4a378c5a3165d9` |
| 10 | `lemma` | [mulInvariantVectorField_eq_mpullback](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mulinvariantvectorfield-eq-mpullback--2e4a268e7ac36825f6c90ff4.md) | 137 | `result-track:2e4a268e7ac36825f6c90ff43ed78cf711588c7a96708ce67f53f7418002f4d0` |
| 11 | `theorem` | [contMDiff_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/contmdiff-mulinvariantvectorfield--05a82144abcbe94456533d60.md) | 145 | `result-track:05a82144abcbe94456533d60c2fb23c668367796b28e1536f1c8f880a6c5371e` |
| 12 | `theorem` | [contMDiffAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/contmdiffat-mulinvariantvectorfield--99ea0781738156152952344c.md) | 188 | `result-track:99ea0781738156152952344ce2add132444aee057848de3a3e48b8212fe237c0` |
| 13 | `theorem` | [mdifferentiable_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mdifferentiable-mulinvariantvectorfield--959eacd43e4bc991bbcf9380.md) | 194 | `result-track:959eacd43e4bc991bbcf938045a001c69b10b8fc995b01f0f8b09714d9d5d79b` |
| 14 | `theorem` | [mdifferentiableAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mdifferentiableat-mulinvariantvectorfield--f75f5777badece5ec7e28d77.md) | 200 | `result-track:f75f5777badece5ec7e28d77bc74bce9238977317d1c3c46b365faa4c66205b7` |
| 15 | `lemma` | [mulInvariantVector_mlieBracket](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/mulinvariantvector-mliebracket--5131b2ed251bf11941088b4f.md) | 215 | `result-track:5131b2ed251bf11941088b4f73f7a84f98a44f20bb8498e36dc56bd9cb96e34f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/instance--dda8d65efeb9ca5a49321845.md) | 231 | `declaration-track:dda8d65efeb9ca5a4932184559a6e2a8deab0f415a06d5bbe2e67fe272c4609a` |
| 17 | `instance` | [instLieAlgebraAddGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/instliealgebraaddgroupliealgebra--694ba943927cbe35f1fb95ef.md) | 253 | `declaration-track:694ba943927cbe35f1fb95ef42af198b2866b6a0cb946c68c361805c56ce3ab7` |
| 18 | `instance` | [instLieAlgebraGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/declarations/instliealgebragroupliealgebra--6e98e6823f10d7e8d7fdab9f.md) | 263 | `declaration-track:6e98e6823f10d7e8d7fdab9f3386a5bed86528f3bee31ac959a04354f574e326` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
