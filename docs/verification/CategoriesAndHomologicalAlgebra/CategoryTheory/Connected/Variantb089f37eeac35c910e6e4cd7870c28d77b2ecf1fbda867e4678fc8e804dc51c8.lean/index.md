# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "416c082730a4c6a310a59f350b62566efe63d01f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `416c082730a4c6a310a59f350b62566efe63d01f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/constcone--7559c3e4469bb4016e174a6c.md) | 50 | `declaration-track:7559c3e4469bb4016e174a6c845463bf9c9a52837cf2f100440b95aabeecd85f` |
| 2 | `def` | [constCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/constcocone--f0dfc4e85ad0db17289f45d3.md) | 56 | `declaration-track:f0dfc4e85ad0db17289f45d35a73d9159f70de933602a3f72b9eef0458246ad1` |
| 3 | `def` | [isLimitConstCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/islimitconstcone--0c7cb0bfb610d81e07fedaf3.md) | 64 | `declaration-track:0c7cb0bfb610d81e07fedaf3037d3095ab3cb14430fe8a0c8ea5a5f224c11ecf` |
| 4 | `def` | [isColimitConstCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/iscolimitconstcocone--90e8743f3e3983f8a9828ee7.md) | 75 | `declaration-track:90e8743f3e3983f8a9828ee726b91c5bace86558443c530bf3c3fc7dc648ad0d` |
| 5 | `instance` | [hasLimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/haslimit-const-of-isconnected--4a9127f00a3359f7d8c27ce8.md) | 84 | `declaration-track:4a9127f00a3359f7d8c27ce8406b13282b6e78d2b7cf81808d3b103f397aec40` |
| 6 | `instance` | [hasColimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/hascolimit-const-of-isconnected--135d6e0a6ff3693ca7d4c225.md) | 87 | `declaration-track:135d6e0a6ff3693ca7d4c22582073335510f6167ce5b5fea47e5ca6dd83204ad` |
| 7 | `def` | [Cone.isLimitOfIsIsoLimMapπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/cone-islimitofisisolimmap--3dab137113cb443151d0fd9b.md) | 99 | `declaration-track:3dab137113cb443151d0fd9b2c73a49033b7aeff3d22ac493d23d70d892765f3` |
| 8 | `theorem` | [IsLimit.isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/islimit-isiso-limmap--b861b7d94d1d8c0b4c102d0c.md) | 109 | `result-track:b861b7d94d1d8c0b4c102d0c56f940dd76dd512a0def6b6dd1b1ada5c1eb91c7` |
| 9 | `theorem` | [Cone.isLimit_iff_isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/cone-islimit-iff-isiso-limmap--7bfb39122c20d4dbb3fa3aae.md) | 120 | `result-track:7bfb39122c20d4dbb3fa3aae56e362795d267fe17334cb008a63cea4ddb7d6d7` |
| 10 | `def` | [Cocone.isColimitOfIsIsoColimMapι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/cocone-iscolimitofisisocolimmap--5dad4e9aef5f83c83fa10d9c.md) | 127 | `declaration-track:5dad4e9aef5f83c83fa10d9c3f4dd55b6d307f435876644d76ffc6e4fc82b5dc` |
| 11 | `theorem` | [IsColimit.isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/iscolimit-isiso-colimmap--f36ee0df112ceadcbd37a2bb.md) | 132 | `result-track:f36ee0df112ceadcbd37a2bbeeccd3ff6a4647d3438d0667e2eb5ecb5500b539` |
| 12 | `theorem` | [Cocone.isColimit_iff_isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/cocone-iscolimit-iff-isiso-colimmap--555a8f13b86f8282a93e54c2.md) | 143 | `result-track:555a8f13b86f8282a93e54c26ecb53d4b835a0abbda3ae66ce1f75fe0c1f3903` |
| 13 | `instance` | [widePullbackShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/widepullbackshape-connected--5c9fe17013c70bc8e64119c5.md) | 155 | `declaration-track:5c9fe17013c70bc8e64119c5724ea8a6d971396a534bd2d24c5b815ad8eb6f44` |
| 14 | `instance` | [widePushoutShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/widepushoutshape-connected--093e665c14cdedd1a39e5799.md) | 162 | `declaration-track:093e665c14cdedd1a39e5799d0bc9521e53ce4addeb9b87f5b8063f7b91048c7` |
| 15 | `instance` | [parallelPairInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/parallelpairinhabited--2c138cc0fb15755bface1a73.md) | 169 | `declaration-track:2c138cc0fb15755bface1a73f388370ed3c4d7d6b032538018edb1391895dc06` |
| 16 | `instance` | [parallel_pair_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/parallel-pair-connected--afb75cdf9b5eebcbc568e8aa.md) | 172 | `declaration-track:afb75cdf9b5eebcbc568e8aaa0f1e1cd2791ee9823778b10fedda4e287bc1fda` |
| 17 | `def` | [γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/anonymous--1516c32ce909e6d20f1399c9.md) | 189 | `declaration-track:1516c32ce909e6d20f1399c91fc4f1b4555ff8be07c2acf0bec93649d8ef4bec` |
| 18 | `def` | [γ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/anonymous--57ecb53bbd756f4dce3504f6.md) | 193 | `declaration-track:57ecb53bbd756f4dce3504f667ec7fac19b15fba954998c32aeb5d0324b89f55` |
| 19 | `def` | [forgetCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/forgetcone--7e68e1488f0c542eae3062db.md) | 199 | `declaration-track:7e68e1488f0c542eae3062db10e447c59de06e0396cd0464ff44f7bc5650abd6` |
| 20 | `lemma` | [prod_preservesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/declarations/prod-preservesconnectedlimits--0456d39ee5da6b906ad4e92c.md) | 212 | `result-track:0456d39ee5da6b906ad4e92c671b5105cd650e82735ff5f9ddae4694b6599c75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
