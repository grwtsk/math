# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28a6608ea63f374d39db45a590c7569c201b2de7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28a6608ea63f374d39db45a590c7569c201b2de7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ApplicativeTransformation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/applicativetransformation--835ef63e48df0c2bf946f070.md) | 71 | `declaration-track:835ef63e48df0c2bf946f070732562a949624ec116754977a581c40b5c5a0240` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/instance--11e169e9db832f0d40742f3d.md) | 86 | `declaration-track:11e169e9db832f0d40742f3dac1b5e95a5164fc498850de48b1fba5e2aa920a0` |
| 3 | `theorem` | [app_eq_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/app-eq-coe--b12764884f0de4ab8cfd527a.md) | 92 | `result-track:b12764884f0de4ab8cfd527a49f92758b2b120fedc82b80cd30d28462669d3b4` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/coe-mk--f2934f5e6b28fb5d28f1a1a5.md) | 96 | `result-track:f2934f5e6b28fb5d28f1a1a5e6f128025923a6d7e0dda3c1d4bebad625b58d2a` |
| 5 | `theorem` | [congr_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/congr-fun--0433e6b549e8d16598d93d4f.md) | 100 | `result-track:0433e6b549e8d16598d93d4feadbbdecabab21280f7e6e60b03131012bc402a4` |
| 6 | `theorem` | [congr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/congr-arg--e1365e57c9fc85c71e86fd33.md) | 104 | `result-track:e1365e57c9fc85c71e86fd3323ad775e8fc522c3cffab068805d200984e22d2e` |
| 7 | `theorem` | [coe_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/coe-inj--6fcc8bc49edf237439c9ed44.md) | 108 | `result-track:6fcc8bc49edf237439c9ed44bef5cb1e5ec1cf84431121f103d229839593099e` |
| 8 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/ext--5f1ffa80427e8eab07bda002.md) | 115 | `result-track:5f1ffa80427e8eab07bda0025f951f8e6ea02bdddf5f248268c990173ecdd5ab` |
| 9 | `theorem` | [preserves_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/preserves-pure--7a9649bfabbe2c23adf4f93f.md) | 126 | `result-track:7a9649bfabbe2c23adf4f93fc56e101b391bdc65f6f834932cea5866eed27b21` |
| 10 | `theorem` | [preserves_seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/preserves-seq--79e993f97e98c6223aca12fa.md) | 130 | `result-track:79e993f97e98c6223aca12fa1ac0b30a5717051884147ae5a4cc83323784272f` |
| 11 | `theorem` | [preserves_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/preserves-map--68578dd52fb3df085763f4ad.md) | 136 | `result-track:68578dd52fb3df085763f4ad373d5b03bf0902b15e7136e4593fce2a6c7b62ae` |
| 12 | `theorem` | [preserves_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/preserves-map--4a09ae320ab22bb43ff857dd.md) | 139 | `result-track:4a09ae320ab22bb43ff857dda93aa875fa553173e0baf602c354c9f53433867c` |
| 13 | `def` | [idTransformation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/idtransformation--495a360cfcea2b7138d7519f.md) | 146 | `declaration-track:495a360cfcea2b7138d7519f22390657da47d5734208f4f89fc5bee9edc9c727` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/instance--aeb96574a1809e102090f626.md) | 151 | `declaration-track:aeb96574a1809e102090f626f28792fc61934ad0dd0cafdab8e01db50176b5b7` |
| 15 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/comp--4ec2ce8e5ead9d81b90da896.md) | 159 | `declaration-track:4ec2ce8e5ead9d81b90da89691ae09bb751b3a1d9b2317b1ab9017cdded0e0e5` |
| 16 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/comp-apply--770447b7a234f05fe8d59597.md) | 168 | `result-track:770447b7a234f05fe8d59597960731f4bbbeafe1593f19c5a17baf9ebb3b272b` |
| 17 | `theorem` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/comp-assoc--7e8118d9eb5d55ff71e3f453.md) | 174 | `result-track:7e8118d9eb5d55ff71e3f4537143957de0b8224d6699dfaee2cec24adb7b138e` |
| 18 | `theorem` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/comp-id--e415f6040f650c4fdfea0d60.md) | 180 | `result-track:e415f6040f650c4fdfea0d60da8459615cecd641d7234f263b549d7174618e32` |
| 19 | `theorem` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/id-comp--0d8ea898317b5154b84c95d6.md) | 184 | `result-track:0d8ea898317b5154b84c95d644852d4ecfd057226aa0b82d266cc654ea662ebb` |
| 20 | `class` | [Traversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/traversable--a5447c2bbe65a2e402667141.md) | 196 | `declaration-track:a5447c2bbe65a2e4026671414c23be6a55467eafa45242b1cc79c16c0b689244` |
| 21 | `def` | [sequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/sequence--bed55ceaf91f4a56e75a7f77.md) | 211 | `declaration-track:bed55ceaf91f4a56e75a7f77925aab95d797f8f98ea8d4e9ef74c438bd35344e` |
| 22 | `class` | [LawfulTraversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/lawfultraversable--b398fcbfd95f1d259ad34e9d.md) | 222 | `declaration-track:b398fcbfd95f1d259ad34e9d926f4fefa8817deb016cf11bcd8b80fcad53e320` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/instance--db5720728f08c2794366b002.md) | 240 | `declaration-track:db5720728f08c2794366b002cd06b86c7675adfdf7552479bb2733cb0aec0820` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/instance--9606eb90370fb1b96241f707.md) | 243 | `declaration-track:9606eb90370fb1b96241f70728a79a37fc41a5d51da1cba5a3e63f19981b3426` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/instance--14e3824fbbc2e41be2d18dba.md) | 251 | `declaration-track:14e3824fbbc2e41be2d18dba797cb7f4d0849584a296156f75ecaebb1ee6e0e5` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/instance--0a740a1dcd5ee47a2c7bbf2d.md) | 254 | `declaration-track:0a740a1dcd5ee47a2c7bbf2d6b7aa266ba4e222ada5d1f7ff2839fd8be1e37c5` |
| 27 | `def` | [traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/traverse--3a529edd810b615489bfd900.md) | 267 | `declaration-track:3a529edd810b615489bfd9008b9c36a16ba573340793e2630556c576203c39b0` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9cf5662053f7082b66cbf2a58211682946345e32c274a464c4e854cc6d029ab4.lean/declarations/instance--c94be4e43b735fca9cafda56.md) | 273 | `declaration-track:c94be4e43b735fca9cafda56fbf8fa53c0a499af3fe87825f4ecd83de19d11b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
