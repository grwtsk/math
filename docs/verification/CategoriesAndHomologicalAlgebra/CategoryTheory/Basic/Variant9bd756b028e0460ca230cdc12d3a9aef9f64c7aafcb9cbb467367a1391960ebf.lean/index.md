# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d73792bb3cbe5c6465ccd5f2e98333b833b0c6c3",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d73792bb3cbe5c6465ccd5f2e98333b833b0c6c3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.PUnitInstances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/moncat--c9e1eab39d6d214b0351465d.md) | 40 | `declaration-track:c9e1eab39d6d214b0351465dc00ba846392da90ba880d15b2d396b480a597080` |
| 2 | `abbrev` | [AssocMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/assocmonoidhom--778220649cf8e846f3b72cfb.md) | 55 | `declaration-track:778220649cf8e846f3b72cfbe44def7ac7fdd42d829af6c942ac3a2740e5e67e` |
| 3 | `instance` | [bundledHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/bundledhom--997b8f51401d88b7358d6e65.md) | 67 | `declaration-track:997b8f51401d88b7358d6e656c6a62da48a269957d02c71d06b663e953cde684` |
| 4 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/concretecategory--53d1eba51baebe16232afe0a.md) | 81 | `declaration-track:53d1eba51baebe16232afe0ae2988a43e741d84e5216a3ad7d44bd8b942ffe82` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--426ca6e67335fa2c10e6c6b7.md) | 85 | `declaration-track:426ca6e67335fa2c10e6c6b7214ebc91f8752889c2f49cb158792cdd47ec2e37` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--b50a0539c9bc67d3e6e9d0bc.md) | 89 | `declaration-track:b50a0539c9bc67d3e6e9d0bc5881a8ec1074442bc826be8ed5fff7a1edee536a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--5d4d628324a4a442cda199ce.md) | 93 | `declaration-track:5d4d628324a4a442cda199ce13a4ade235969617ac90c3895e5325d4f644d768` |
| 8 | `instance` | [Hom_FunLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/hom-funlike--a08f4c4d4bb0d3806f0e0bff.md) | 97 | `declaration-track:a08f4c4d4bb0d3806f0e0bffb90f31ea88245bb647933144641e63092361ea11` |
| 9 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/coe-id--2f1d74331c5f646cd313c631.md) | 102 | `result-track:2f1d74331c5f646cd313c631df4459743c84d45e7f4d3fee2784d0ecd1460b76` |
| 10 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/coe-comp--e11888037524f90f69e82fd0.md) | 106 | `result-track:e11888037524f90f69e82fd071da7d6f16fe702700032a72e6f4f62f5cfcc230` |
| 11 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/forget-map--02269af87f98069f3645cfce.md) | 109 | `result-track:02269af87f98069f3645cfcea1d374e6190ea45dbbbca232ec4ff88889f05ce0` |
| 12 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/ext--9681dc93b2cd6f945cbe7b33.md) | 112 | `result-track:9681dc93b2cd6f945cbe7b3306cab3c0f08dc148a18afd2418e113f903217b7f` |
| 13 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/of--7b1fdfe76beb1a041fbf3e3d.md) | 117 | `declaration-track:7b1fdfe76beb1a041fbf3e3d003de35e6325889231e6833e6f69be7b746d86f2` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/coe-of--cd27fed60d2da358187e1e71.md) | 131 | `result-track:cd27fed60d2da358187e1e7192c80873a27bef0935317e11ada04dbe9aed6103` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--07b50cd8b686babdf55577dd.md) | 138 | `declaration-track:07b50cd8b686babdf55577dd0f0c8f311ed9faf3d89823c1cb59af9c0e0ecb38` |
| 16 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/ofhom--135a0ce1083803e11a3673b4.md) | 145 | `declaration-track:135a0ce1083803e11a3673b454d664d75d60d49c29a151323480dc12d658147e` |
| 17 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/ofhom-apply--01c729e716660c6ec2a6a57e.md) | 155 | `result-track:01c729e716660c6ec2a6a57e9272d40f39d97d6d0d540fec8f677a59a037fe29` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--b5213affc8bbfd9d1f237639.md) | 162 | `declaration-track:b5213affc8bbfd9d1f237639b9cb9c50d0e32c848eaffe62fe664375267d553b` |
| 19 | `lemma` | [oneHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/onehom-apply--e9921c27989fc82c7973724c.md) | 165 | `result-track:e9921c27989fc82c7973724c314bba189312b8b1b4a3091ecd8e945ae93a9245` |
| 20 | `lemma` | [one_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/one-of--8b09a4abdd2ebd2a277e9905.md) | 169 | `result-track:8b09a4abdd2ebd2a277e9905158afe7d2304560c7c96f7038af063195061c7eb` |
| 21 | `lemma` | [mul_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/mul-of--99702b8667cf1561c9f0b87d.md) | 172 | `result-track:99702b8667cf1561c9f0b87dd30596a198ece2177d5a3f00ac536a4b6367b6bd` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--afc4efbdc2822835359c0c4e.md) | 176 | `declaration-track:afc4efbdc2822835359c0c4e701ec1aa629236dce1708b79a3785a45655508a4` |
| 23 | `def` | [CommMonCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/commmoncat--1f64d33d06938d1df082699e.md) | 182 | `declaration-track:1f64d33d06938d1df082699e939cbb9dee58dda606040c3ffe39be77e93cc081` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--945f3e660873874622ebd851.md) | 195 | `declaration-track:945f3e660873874622ebd851611bd3e6538227228b6ee5bddb27a973de7ce813` |
| 25 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/concretecategory--54925d3c64aab6dbb353bd72.md) | 202 | `declaration-track:54925d3c64aab6dbb353bd72649efecceb06a535dc08785c217c81c179994750` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--1a3dfda386c1870305b8d7b2.md) | 207 | `declaration-track:1a3dfda386c1870305b8d7b2aceed3890269c35827774c5b492634951b054c2d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--db88e9db71d5d7b45f2f0889.md) | 211 | `declaration-track:db88e9db71d5d7b45f2f088941e3bd7579baec190d7798f25f1b8c56576e84c1` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--d6f64d0b208594f2972bcbd3.md) | 215 | `declaration-track:d6f64d0b208594f2972bcbd376d7d3746c36c521251918c2b0f11878480ad675` |
| 29 | `instance` | [Hom_FunLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/hom-funlike--59bf732168bf155d4c89255d.md) | 219 | `declaration-track:59bf732168bf155d4c89255d3d1905d3ce59e218ac45480c290b4aa9f0a540a8` |
| 30 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/coe-id--00aa73805df9c6fcaa1a5bb8.md) | 224 | `result-track:00aa73805df9c6fcaa1a5bb877c0b287b7e0afd208ab0be1baa83dec7124cd90` |
| 31 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/coe-comp--742f7a3a51975c3b012b47ee.md) | 228 | `result-track:742f7a3a51975c3b012b47ee05a0d2583920773d8371848185aabe5c89842fee` |
| 32 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/forget-map--0349a2193c98c4844e80625f.md) | 232 | `result-track:0349a2193c98c4844e80625f39f75c367f29372f5285c908f43c0618d9ec002a` |
| 33 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/ext--71fd5da0a8bbd28a74900323.md) | 237 | `result-track:71fd5da0a8bbd28a749003230b2e7d15f05c0c3f0c4f182737ee05b5da7a4b70` |
| 34 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/of--e7391d03573c481753b3ff39.md) | 242 | `declaration-track:e7391d03573c481753b3ff397f0d3e279ec678f7445a7b219b241c940fdd3a45` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--5c2f16ce2f67d70b639e0f61.md) | 253 | `declaration-track:5c2f16ce2f67d70b639e0f610ebdd6d3050db95c7eea35e641700985de3bbe61` |
| 36 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/coe-of--c06e9371e9aa4db8589f4f6d.md) | 261 | `result-track:c06e9371e9aa4db8589f4f6de2197f55518c8bbd45867b046c3d4e4f8f12cfee` |
| 37 | `instance` | [hasForgetToMonCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/hasforgettomoncat--cabe97ed01b99f809358be1f.md) | 269 | `declaration-track:cabe97ed01b99f809358be1fcfaefd0d90400af176e3971ea33df86c657a3130` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/instance--dbacf615ae829980e2725303.md) | 277 | `declaration-track:dbacf615ae829980e2725303256b1b603d6aa286d402538914b251dd4990d968` |
| 39 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/ofhom--596c39d4b87073942924361d.md) | 282 | `declaration-track:596c39d4b87073942924361d1b0196340f73d4bfaa92cbce7f0f161f42756be5` |
| 40 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/ofhom-apply--e84958bd4dd91e3a706b8bab.md) | 288 | `result-track:e84958bd4dd91e3a706b8babad4e5d09ac7ba88efa2b3cfb5ceb178a2b9bad48` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/example--ea8060bc1a653fb1aefa654c.md) | 294 | `declaration-track:ea8060bc1a653fb1aefa654ca6634bd56ad09e5656d94246c4268a6b182bd9ec` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/example--ecef5f413770ccb7bb2eb671.md) | 297 | `declaration-track:ecef5f413770ccb7bb2eb67155966f6748cac01ee7e1827db7d2b06c4d3399d9` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/example--32027ad292f6c498a597d308.md) | 299 | `declaration-track:32027ad292f6c498a597d308d5d642326c189bd29dee93eb9628e61ed0e727ef` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/example--0a8a45ea3be8ccb3c79accb2.md) | 301 | `declaration-track:0a8a45ea3be8ccb3c79accb2a54717286f426490baa2f5383b70fc82f1e99010` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/example--6ea3921eb163131882876399.md) | 305 | `declaration-track:6ea3921eb16313188287639972d3101e5d7528d4b34e338f0746167fd6e1355b` |
| 46 | `def` | [MulEquiv.toMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/mulequiv-tomoncatiso--34445be88ab0bfe0fda70fc1.md) | 324 | `declaration-track:34445be88ab0bfe0fda70fc1ecea604b3f056ad7335f90dc2e307b8689092881` |
| 47 | `def` | [MulEquiv.toCommMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/mulequiv-tocommmoncatiso--5c1fdba7921b66bfc6fd3722.md) | 340 | `declaration-track:5c1fdba7921b66bfc6fd37225ab0fa5096c6eb7b2fe5ea86161a2aceca538108` |
| 48 | `def` | [monCatIsoToMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/moncatisotomulequiv--123017c22164f88aa7f3e88b.md) | 359 | `declaration-track:123017c22164f88aa7f3e88b43a1eb11026e0143c495b008f833b2dac171a5ed` |
| 49 | `def` | [commMonCatIsoToMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/commmoncatisotomulequiv--2f70d1122711030089a4d601.md) | 368 | `declaration-track:2f70d1122711030089a4d6010d8cc6400c852cf79f2d96217fee873a1dabc5ba` |
| 50 | `def` | [mulEquivIsoMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/mulequivisomoncatiso--eba21a3870c3886d9fb7f9d1.md) | 380 | `declaration-track:eba21a3870c3886d9fb7f9d1d482d42b9bddd806eaac2c1f6358246ad4bf59d6` |
| 51 | `def` | [mulEquivIsoCommMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/mulequivisocommmoncatiso--3e6a2efc85c60d7d2a6ef4e8.md) | 396 | `declaration-track:3e6a2efc85c60d7d2a6ef4e8816bd783105d7531d5e9f15f4f76f2521e6e8234` |
| 52 | `instance` | [MonCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/moncat-forget-reflects-isos--54743947584b3d7e21c03ed8.md) | 411 | `declaration-track:54743947584b3d7e21c03ed8f310bd3bed88d13c640a06bcf7ef27e8611dd428` |
| 53 | `instance` | [CommMonCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/commmoncat-forget-reflects-isos--395c06b5b86a7c659d515b96.md) | 422 | `declaration-track:395c06b5b86a7c659d515b962fa6e037a24c365549ca51a08714de6553e028a2` |
| 54 | `instance` | [CommMonCat.forget₂Full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/commmoncat-forget-full--a1738a318f33a21ae2380d7a.md) | 438 | `declaration-track:a1738a318f33a21ae2380d7a60743c85b91bf03325cd631972e16dcf4705ab7a` |
| 55 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/declarations/example--88ab15ce1e3873a0ee464b08.md) | 440 | `declaration-track:88ab15ce1e3873a0ee464b0871425a0f9dbfb65beab8234f521ba5bdf3880893` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
