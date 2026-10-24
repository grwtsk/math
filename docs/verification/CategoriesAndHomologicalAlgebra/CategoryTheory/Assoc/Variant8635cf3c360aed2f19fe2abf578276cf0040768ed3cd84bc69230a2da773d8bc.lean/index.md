# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Assoc.Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "268f16e6030ae4861e42f16292066ad39902d84f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `268f16e6030ae4861e42f16292066ad39902d84f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Pasting` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackPullbackLeftIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackpullbackleftispullback--5f88d76ecb8b53c8f0a2bbf2.md) | 112 | `declaration-track:5f88d76ecb8b53c8f0a2bbf20d43aef630bd98b1640e1e7fec60e8851ed96551` |
| 2 | `def` | [pullbackAssocIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassocispullback--d39741292f7ed061558c02ce.md) | 118 | `declaration-track:d39741292f7ed061558c02ceed48b4cdeda3bbda41b9f6f0e82f70cc98644f2c` |
| 3 | `theorem` | [hasPullback_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/haspullback-assoc--6afd2d59ea564a4760f4e665.md) | 126 | `result-track:6afd2d59ea564a4760f4e6650f7b37389a8db890e6f032e3d240872f79207894` |
| 4 | `def` | [pullbackPullbackRightIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackpullbackrightispullback--687355e477ab65c3c8c971d1.md) | 130 | `declaration-track:687355e477ab65c3c8c971d19e575ec8cc3d4f7e127f0ca1ae313645892d98b0` |
| 5 | `def` | [pullbackAssocSymmIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassocsymmispullback--c7cdbd1e74729427ad97f267.md) | 136 | `declaration-track:c7cdbd1e74729427ad97f267dbe393bec0ab824066d103acc5c36cdb03ed6943` |
| 6 | `theorem` | [hasPullback_assoc_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/haspullback-assoc-symm--bda573f702cff8d4a9891e73.md) | 144 | `result-track:bda573f702cff8d4a9891e73ec8352f935bccf9a25b821eba7c3487fc0edfb94` |
| 7 | `def` | [pullbackAssoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassoc--19c120b385f9ecaddb263aa9.md) | 148 | `declaration-track:19c120b385f9ecaddb263aa9a30c89deffedb2ed6bc62033440c4249e09003f3` |
| 8 | `theorem` | [pullbackAssoc_inv_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassoc-inv-fst-fst--c60ba4f8582fc1c69b1e1df2.md) | 156 | `result-track:c60ba4f8582fc1c69b1e1df2d48fd0d752adddeeab19b406cfb2dd03fa6b8ca6` |
| 9 | `theorem` | [pullbackAssoc_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassoc-hom-fst--59f5d138b2fc8dac121437e0.md) | 166 | `result-track:59f5d138b2fc8dac121437e0b3425b03ac67b8903ac0c0be2db8bebc44626aa2` |
| 10 | `theorem` | [pullbackAssoc_hom_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassoc-hom-snd-fst--36f3c32ef567788f57b12a0b.md) | 172 | `result-track:36f3c32ef567788f57b12a0b3c9dc027d3c3262f5ddaa202372212f93cf410de` |
| 11 | `theorem` | [pullbackAssoc_hom_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassoc-hom-snd-snd--bb536ef53dc4735a2dcd3ef4.md) | 182 | `result-track:bb536ef53dc4735a2dcd3ef421d6d0a425fb3625e29f3c63475c204ff44a4a49` |
| 12 | `theorem` | [pullbackAssoc_inv_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassoc-inv-fst-snd--69741e024d64a9908af21b78.md) | 192 | `result-track:69741e024d64a9908af21b78f1f8295e0969199bf066f9e938e59de437b58ff0` |
| 13 | `theorem` | [pullbackAssoc_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pullbackassoc-inv-snd--39fa57151873b14b58c180d1.md) | 198 | `result-track:39fa57151873b14b58c180d165e30db3a9f37e6409954f86f89e2b7f30737d43` |
| 14 | `def` | [pushoutPushoutLeftIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pushoutpushoutleftispushout--f73ade4903307617237d6fc7.md) | 281 | `declaration-track:f73ade4903307617237d6fc74c059a631c3edeee5a3353403d79075a0d1f4c45` |
| 15 | `def` | [pushoutAssocIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pushoutassocispushout--37e0400630526e9ca0e91069.md) | 289 | `declaration-track:37e0400630526e9ca0e9106912786ad893601c65a8a2c37fb8b7e47bbf99e699` |
| 16 | `theorem` | [hasPushout_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/haspushout-assoc--bcbfa627021790440d5c8e07.md) | 297 | `result-track:bcbfa627021790440d5c8e07d21d384cec085f3b06638597a3a3cf569e562984` |
| 17 | `def` | [pushoutPushoutRightIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pushoutpushoutrightispushout--f4fb3ea061bcf643b070ab9b.md) | 301 | `declaration-track:f4fb3ea061bcf643b070ab9b13244c54cd7b4a5e16c6b56913bb2e66aa65606c` |
| 18 | `def` | [pushoutAssocSymmIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pushoutassocsymmispushout--69e60438b438a9d4f4b16432.md) | 307 | `declaration-track:69e60438b438a9d4f4b1643234cdb009df33732fa3aef04f8216f1bf0fc35b2d` |
| 19 | `theorem` | [hasPushout_assoc_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/haspushout-assoc-symm--20725c1b69483cfaae1ad41f.md) | 314 | `result-track:20725c1b69483cfaae1ad41fc1ff845a625692b50ea1d767ae5167461884ff2c` |
| 20 | `def` | [pushoutAssoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/pushoutassoc--3c43ab19bf67ddcc23e2f62f.md) | 321 | `declaration-track:3c43ab19bf67ddcc23e2f62fe36f48ea41fdd485870eb53647d56ec4fbd7b3b3` |
| 21 | `theorem` | [inl_inl_pushoutAssoc_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/inl-inl-pushoutassoc-hom--5fea3505e478320d08e2d810.md) | 329 | `result-track:5fea3505e478320d08e2d8102b3c04e0dc5c9e3f575e6d6f1ee708fe896b3113` |
| 22 | `theorem` | [inr_inl_pushoutAssoc_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/inr-inl-pushoutassoc-hom--511e641e932c8cea827065c6.md) | 340 | `result-track:511e641e932c8cea827065c6b90a5f24fd5f2e0da4fe38ce26eacc509a9a887b` |
| 23 | `theorem` | [inr_inr_pushoutAssoc_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/inr-inr-pushoutassoc-inv--b00929ce3402af863977a0a9.md) | 352 | `result-track:b00929ce3402af863977a0a9f28ae7dea76a94bfed252ebf1c2d2581dbd94057` |
| 24 | `theorem` | [inl_pushoutAssoc_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/inl-pushoutassoc-inv--137e70b179f34274b25b4249.md) | 363 | `result-track:137e70b179f34274b25b424929a9e8ee3babd2283d43323f0f47997b5864d8f1` |
| 25 | `theorem` | [inl_inr_pushoutAssoc_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/inl-inr-pushoutassoc-inv--bf00fa6e6b042b41fab9c748.md) | 369 | `result-track:bf00fa6e6b042b41fab9c748f2217cbddb256b380c98f5ce42ea0982122c15a0` |
| 26 | `theorem` | [inr_pushoutAssoc_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/declarations/inr-pushoutassoc-hom--d51bcd772e6dd63018689dbc.md) | 376 | `result-track:d51bcd772e6dd63018689dbc92cbe3128748326eeea8eee778c21fddcb97c260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
