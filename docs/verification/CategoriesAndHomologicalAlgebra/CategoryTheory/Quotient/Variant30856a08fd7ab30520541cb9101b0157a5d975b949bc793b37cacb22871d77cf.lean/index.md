# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c15a09428338e7e8105ad5b46cca0845daed330",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c15a09428338e7e8105ad5b46cca0845daed330`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/homrel--0dd14bf34ad4dd7f14c2a6c9.md) | 32 | `declaration-track:0dd14bf34ad4dd7f14c2a6c9966cbdc7f75c52311c34661099c1f71f52370017` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/instance--22299a79d390e9e4aacddef5.md) | 37 | `declaration-track:22299a79d390e9e4aacddef5aa7286f3f8f930f87b469ca7714a5a6922be5de5` |
| 3 | `class` | [Congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/congruence--3c63b68c8feeb014b3ba32be.md) | 46 | `declaration-track:3c63b68c8feeb014b3ba32be4d342f1338e66c09da47aa9b7dbffd8d1ae63dc1` |
| 4 | `structure` | [Quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/quotient--2228f68eb6b12fad9c598f1e.md) | 59 | `declaration-track:2228f68eb6b12fad9c598f1e0f0a91b32c6161e73617f4e372fc962929dd6424` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/instance--b1e936d5e69d44c6f7f5aa6d.md) | 64 | `declaration-track:b1e936d5e69d44c6f7f5aa6d0f8fb4fc5b025ccd5c7c7025cbe484757735dab9` |
| 6 | `inductive` | [CompClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/compclosure--323cfd4efa6a59fec5378f77.md) | 70 | `declaration-track:323cfd4efa6a59fec5378f7741dffac1a54fad93ea1f928aebd437624dc5f38c` |
| 7 | `theorem` | [CompClosure.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/compclosure-of--073c19f9aaa9ef54dd5a781f.md) | 75 | `result-track:073c19f9aaa9ef54dd5a781fd17b979ea42c6d934953f3ae453a7738ce46dfd7` |
| 8 | `theorem` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/comp-left--6a52e41bb87c81b5a99ef885.md) | 79 | `result-track:6a52e41bb87c81b5a99ef8859e7bf76185c1b223be3289b6ab20d63b66cb9af3` |
| 9 | `theorem` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/comp-right--dd7f79f95cafe7a253e6bc0c.md) | 84 | `result-track:dd7f79f95cafe7a253e6bc0c1641c45775111649d00f00122fee6a0747033864` |
| 10 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/hom--11a25815a6f1b4e5eac0ec66.md) | 90 | `declaration-track:11a25815a6f1b4e5eac0ec66ef1ac74897e7213ac628c552adec4cfa7006c319` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/instance--620d7d4d11d01fdfd555de69.md) | 94 | `declaration-track:620d7d4d11d01fdfd555de69cf038a613f2d9f27b586a3680f260f7c743ac333` |
| 12 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/comp--2acb97503beadc5503c77684.md) | 98 | `declaration-track:2acb97503beadc5503c77684a6f70c898c8ab0b673cd5f1284c5f7bfb06e6242` |
| 13 | `theorem` | [comp_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/comp-mk--09182e96aba239671c4135e4.md) | 107 | `result-track:09182e96aba239671c4135e465d3e76645d384e848dfe5724429d209ecc0ea4d` |
| 14 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/category--43969785c1c5d226e4f660ac.md) | 113 | `declaration-track:43969785c1c5d226e4f660acdba4dd41bb5caae80a0e96b749c485d9c4987dd4` |
| 15 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/functor--0afdd499361186aed2be05a3.md) | 124 | `declaration-track:0afdd499361186aed2be05a3060834758b824177fe163c34525eb22efd607f4c` |
| 16 | `instance` | [fullFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/fullfunctor--e08f951d0c2f201e6461f3fc.md) | 129 | `declaration-track:e08f951d0c2f201e6461f3fc1d10f583abe587fa20285fe409f0c1ce071ebd1b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/instance--b9a2acd7f5de268b607c15f4.md) | 131 | `declaration-track:b9a2acd7f5de268b607c15f44cb4d1bb6b18926f2d4818d7aed50682a823a265` |
| 18 | `theorem` | [induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/induction--87cfb109ee59b53c996df400.md) | 137 | `result-track:87cfb109ee59b53c996df400de6647b9f6e987113bb59fbf93ea47606016c08c` |
| 19 | `theorem` | [sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/sound--7a1015de9f576cd9d3e93254.md) | 144 | `result-track:7a1015de9f576cd9d3e932541c02a8537c5f89e191e1784a7398694be0ac369d` |
| 20 | `theorem` | [functor_map_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/functor-map-eq-iff--7061047b6d7df92f4e4c1de5.md) | 149 | `result-track:7061047b6d7df92f4e4c1de526878005d20724ab4e22f1af2ebd67d086ba41bb` |
| 21 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/lift--e7534f02382e168d4f87bcc9.md) | 173 | `declaration-track:e7534f02382e168d4f87bcc91c43b03bf08bb02eece4addcd6d099e2d3e5a1ce` |
| 22 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/lift-spec--2c0d0f6704590e3fabe2b835.md) | 186 | `result-track:2c0d0f6704590e3fabe2b83574b1f995cead48e4c94560290493fd956a7d54b5` |
| 23 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/lift-unique--f63b4f31a04b230b2d9947f8.md) | 194 | `result-track:f63b4f31a04b230b2d9947f829070b7da5f12ba9e76ee46f375fe0ac8b9841af` |
| 24 | `def` | [lift.isLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/lift-islift--2ce694fea6cc9547c43c0f66.md) | 208 | `declaration-track:2ce694fea6cc9547c43c0f66c227e406516685005d02d99dcdcec19e349f3ced` |
| 25 | `theorem` | [lift.isLift_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/lift-islift-hom--2185521f04727774c6e9afec.md) | 213 | `result-track:2185521f04727774c6e9afec3fe7a9b20c3f5055524608f1435bea859ea18d7b` |
| 26 | `theorem` | [lift.isLift_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/lift-islift-inv--337ef09c87a7e8d4fea31c0a.md) | 218 | `result-track:337ef09c87a7e8d4fea31c0a57d5ca0754eb68bebcf27290118de338d7010c3c` |
| 27 | `theorem` | [lift_map_functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf.lean/declarations/lift-map-functor-map--5031857e1a7433bf13526226.md) | 222 | `result-track:5031857e1a7433bf135262261fa1e84213d8182399976269b36f85c7031270ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
