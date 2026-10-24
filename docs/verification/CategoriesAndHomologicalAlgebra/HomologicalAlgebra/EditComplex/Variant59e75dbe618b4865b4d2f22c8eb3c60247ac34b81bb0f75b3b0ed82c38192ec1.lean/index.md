# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.EditComplex.Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e1473220c8695335ea180533f327c4e4b03fc35",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e1473220c8695335ea180533f327c4e4b03fc35`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreeZ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/freez--a2f534cb1d815f5c6023c60f.md) | 37 | `declaration-track:a2f534cb1d815f5c6023c60f567804a36b91d9efa884d66b1b7de55bec847c5d` |
| 2 | `def` | [endpointBoundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/endpointboundary--9e33a86c6f29a79fbff17f3a.md) | 40 | `declaration-track:9e33a86c6f29a79fbff17f3a974e9ff42a1a01bab198c0deb1ca6274a92c84f8` |
| 3 | `def` | [endpointBoundarySum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/endpointboundarysum--9eb0201a69da9247eeaf1259.md) | 48 | `declaration-track:9eb0201a69da9247eeaf1259466b4dc85b4e1381d101c24f712ed2cceac7b6ef` |
| 4 | `structure` | [FilesystemEditPresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/filesystemeditpresentation--644aa64bf766768072b84cde.md) | 63 | `declaration-track:644aa64bf766768072b84cde4e3726fc43d52a609016e97a4243e103f914c660` |
| 5 | `def` | [editBoundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/editboundary--cbc46a00e66ce04773f294a5.md) | 80 | `declaration-track:cbc46a00e66ce04773f294a5aa3d4dc1eee6750cee91dd7f4e8cf6d379afa40a` |
| 6 | `def` | [boundaryOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/boundaryone--8558a04fe647cc67af3bbd00.md) | 84 | `declaration-track:8558a04fe647cc67af3bbd0086eef7f4639e2b884bfcb7228fda105199647736` |
| 7 | `def` | [boundaryTwo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/boundarytwo--7556f0d2b3d7aa0612b9b505.md) | 89 | `declaration-track:7556f0d2b3d7aa0612b9b505497a4c2266f9bb2e07dcf064cdff55e7c8a77852` |
| 8 | `theorem` | [boundaryOne_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/boundaryone-single--dce3d4558e4acbbc610871b6.md) | 94 | `result-track:dce3d4558e4acbbc610871b6b2f2c11c3321fb6841c0749f32730271e98a65ea` |
| 9 | `theorem` | [boundaryTwo_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/boundarytwo-single--40a10991cac350af147f0a58.md) | 100 | `result-track:40a10991cac350af147f0a58a9cb8fc8acd3b3074a448116cbc974f34241c749` |
| 10 | `theorem` | [boundaryOne_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/boundaryone-apply--6eae558dccf908d6e1b6f1eb.md) | 106 | `result-track:6eae558dccf908d6e1b6f1ebe26feb837bb27b26cd84857a3f5309b480a0ebda` |
| 11 | `theorem` | [boundaryOne_comp_boundaryTwo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/boundaryone-comp-boundarytwo--de8ed2bc78ac0727631152ac.md) | 112 | `result-track:de8ed2bc78ac0727631152ac3d81cfc437c1dddb7a0936fd522ac5b3e1539bf6` |
| 12 | `def` | [chainObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/chainobject--1fd56d74b6aa6cabb046be46.md) | 122 | `declaration-track:1fd56d74b6aa6cabb046be463a014f16660e6a6cff08a3e022268234644408ab` |
| 13 | `def` | [chainDifferential](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/chaindifferential--22cc10c3bb9ceb2c859f6ef8.md) | 129 | `declaration-track:22cc10c3bb9ceb2c859f6ef8692e0f8a6854d38f2cfb697cf7c21a52728d5e9b` |
| 14 | `theorem` | [chainDifferential_sq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/chaindifferential-sq--7e8569ba01d4cff61a221511.md) | 136 | `result-track:7e8569ba01d4cff61a221511dc357a376b7bbdce6216c26717ee0431321cf662` |
| 15 | `def` | [toChainComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochaincomplex--7f677adef70ed8f3cbce0f32.md) | 146 | `declaration-track:7f677adef70ed8f3cbce0f32723602d57b1066360277f0dde59f2d3e620e0199` |
| 16 | `theorem` | [toChainComplex_X_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochaincomplex-x-zero--840514c7c0f842570cb0ce8e.md) | 150 | `result-track:840514c7c0f842570cb0ce8e37df99437b760aa58c2dac6c602552017923db63` |
| 17 | `theorem` | [toChainComplex_X_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochaincomplex-x-one--01395043175f4da3b4b73bb3.md) | 155 | `result-track:01395043175f4da3b4b73bb3fe1e28c068eb6082d247ccee8bd6a18a0272d050` |
| 18 | `theorem` | [toChainComplex_X_two](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochaincomplex-x-two--6fa9896bebfaca2b582258ba.md) | 160 | `result-track:6fa9896bebfaca2b582258ba34d02d0eab037e9adb7f802d2dc0645a07d62ab6` |
| 19 | `theorem` | [toChainComplex_d_one_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochaincomplex-d-one-zero--a6474b61a9c1b9efff68d153.md) | 165 | `result-track:a6474b61a9c1b9efff68d1530e345cd95ab02eaff8a5d813da3b7e231a6054da` |
| 20 | `theorem` | [toChainComplex_d_two_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochaincomplex-d-two-one--e8ef911cf8419242abe47b3e.md) | 170 | `result-track:e8ef911cf8419242abe47b3e78f572f7370cfdbcfa034a30ab7043caf24d4fdb` |
| 21 | `structure` | [Action](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/action--148ce8c89f1f9aba13f10baa.md) | 181 | `declaration-track:148ce8c89f1f9aba13f10baa1f8f6b8d7fbd83e4c947991f9952f5c36104f5fe` |
| 22 | `def` | [relabel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/relabel--c9d0f7b44db9cb7923f194d3.md) | 197 | `declaration-track:c9d0f7b44db9cb7923f194d3b15b7359df58fe186312391ebd121b8aef84bb07` |
| 23 | `theorem` | [relabel_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/relabel-single--f373526d07f2acd293ee383d.md) | 204 | `result-track:f373526d07f2acd293ee383d5bd7eeac184096247b296f39535d9842fc4fd3f0` |
| 24 | `theorem` | [relabel_edit_boundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/relabel-edit-boundary--b7e1954f0f6e0227155178bf.md) | 214 | `result-track:b7e1954f0f6e0227155178bf4f577355007342bf6b5d2bf459cbe8d791dbab5e` |
| 25 | `theorem` | [relabel_relation_boundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/relabel-relation-boundary--aa5198b6d37f9d5468b0eeff.md) | 226 | `result-track:aa5198b6d37f9d5468b0eeff6d11041caf4ee0dff89d525ac4d2b06ce7a2a658` |
| 26 | `def` | [degreeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/degreeequiv--7a6bbdaf865939c3c8702b6e.md) | 237 | `declaration-track:7a6bbdaf865939c3c8702b6e6139817fe3721e166cbd9b7d6df5a51c33d6ab84` |
| 27 | `def` | [degreeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/degreeiso--bfd6836e0b092c71f5ff290c.md) | 245 | `declaration-track:bfd6836e0b092c71f5ff290cf6a8005cb1a71daf1af5bf5d12b05e512b4f3655` |
| 28 | `theorem` | [degreeIso_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/degreeiso-comm--58375c9a4c74bdfbcd85795f.md) | 253 | `result-track:58375c9a4c74bdfbcd85795f6154bfb81c0cce8deaf000456e5e8e0f2c2a9bf7` |
| 29 | `def` | [toChainIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochainiso--815584738ad961f6678ffb22.md) | 279 | `declaration-track:815584738ad961f6678ffb229fbc5dd8cc257681e67ffce8993a564702f99740` |
| 30 | `theorem` | [toChainIso_hom_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochainiso-hom-f-zero--331c23a1e3aa6ae7c34573d6.md) | 287 | `result-track:331c23a1e3aa6ae7c34573d661d3527984f13a5c485b578e6ada6ccb9521d80a` |
| 31 | `theorem` | [toChainIso_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/declarations/tochainiso-vertex--1270f4f4ff57e298de11b4fa.md) | 292 | `result-track:1270f4f4ff57e298de11b4fa0db8b9a52d3cf367e8c4a55775efcf7f20edccfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
