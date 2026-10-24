# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pasting.Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6790398f308afac9f4b482be7aad4c8f1e5e512d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6790398f308afac9f4b482be7aad4c8f1e5e512d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PullbackCone.pasteHoriz](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackcone-pastehoriz--03156d72de64226613c945ee.md) | 61 | `declaration-track:03156d72de64226613c945ee84dd28033f160d49e3f48b83aa320750d8752c79` |
| 2 | `def` | [pasteHorizIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastehorizispullback--04093f38673e1beca4da5f56.md) | 86 | `declaration-track:04093f38673e1beca4da5f56ba5c3fe0a8fd4f7a4a18fcf07a5df16658643c71` |
| 3 | `def` | [leftSquareIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/leftsquareispullback--171eebdfdade309096aa5d8a.md) | 114 | `declaration-track:171eebdfdade309096aa5d8afa2ad8972a973d8b9f8f76965eed4088359d17a3` |
| 4 | `def` | [pasteHorizIsPullbackEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastehorizispullbackequiv--4b4692f28efbee49f8f82f50.md) | 133 | `declaration-track:4b4692f28efbee49f8f82f500302307c42383452ed8db8475a6dd506b8f20a66` |
| 5 | `abbrev` | [PullbackCone.pasteVert](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackcone-pastevert--f7ceb4a293b5662f5cefa7b0.md) | 162 | `declaration-track:f7ceb4a293b5662f5cefa7b0c8acb6e67111fcd5715e67059612bc35032f2432` |
| 6 | `def` | [PullbackCone.pasteVertFlip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackcone-pastevertflip--42e64143b88ec1eaa79078cc.md) | 179 | `declaration-track:42e64143b88ec1eaa79078cc7f749af39006de608bf8ebdd1a92adc5e9a0c89d` |
| 7 | `def` | [pasteVertIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastevertispullback--9d1a138d2924608fb03903a3.md) | 198 | `declaration-track:9d1a138d2924608fb03903a3fc2024635da8d881fbae32c20f0a9c1e74192c6f` |
| 8 | `def` | [topSquareIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/topsquareispullback--d723582bbd09471fd6a7d2c3.md) | 218 | `declaration-track:d723582bbd09471fd6a7d2c3ac9361b85013bcc4ab2e8b5c8422c7d17cfbb88c` |
| 9 | `def` | [pasteVertIsPullbackEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastevertispullbackequiv--6dc4689a924f060897093d4b.md) | 224 | `declaration-track:6dc4689a924f060897093d4b9d0300bb56e42388859727ee059533d271e46cb8` |
| 10 | `abbrev` | [PushoutCocone.pasteHoriz](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pushoutcocone-pastehoriz--9531647253d898e70e82f5c8.md) | 247 | `declaration-track:9531647253d898e70e82f5c8eba456e54c0ac598bca002553b586df7c8f17218` |
| 11 | `def` | [pasteHorizIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastehorizispushout--e5c738c1370a998d17e6ba9b.md) | 274 | `declaration-track:e5c738c1370a998d17e6ba9b7e4055ca33398ec92eecaceca0574134a236837d` |
| 12 | `def` | [rightSquareIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/rightsquareispushout--9d9e8cc104be59013398fb2c.md) | 303 | `declaration-track:9d9e8cc104be59013398fb2c2a56e3bb6908f7552e05046c63aa0d2c81aff2c8` |
| 13 | `def` | [pasteHorizIsPushoutEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastehorizispushoutequiv--2062bcfa12c5813e523d2182.md) | 323 | `declaration-track:2062bcfa12c5813e523d21828358d40e67174e55bd30b787aaae8ce429463476` |
| 14 | `abbrev` | [PushoutCocone.pasteVert](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pushoutcocone-pastevert--addf735c31aed76bf3623591.md) | 354 | `declaration-track:addf735c31aed76bf362359126680ededffd7578e74c4c01e058fb018210544b` |
| 15 | `def` | [PushoutCocone.pasteVertFlip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pushoutcocone-pastevertflip--0e870597b60ebf4b2456d3cb.md) | 369 | `declaration-track:0e870597b60ebf4b2456d3cbbe2f33cd8ba8bd02f35655e9b256c3895d55c09d` |
| 16 | `def` | [pasteVertIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastevertispushout--14dd3188fa5a808e1bf1eefd.md) | 388 | `declaration-track:14dd3188fa5a808e1bf1eefd17a5783fad5bb62d33e9ecf87eb6ce3cebbdab02` |
| 17 | `def` | [botSquareIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/botsquareispushout--5d9f530fb08c8543792fc3d0.md) | 409 | `declaration-track:5d9f530fb08c8543792fc3d0cf3a8f0a08c4822cdbdbdc1612a1cf754898dc6c` |
| 18 | `def` | [pasteVertIsPushoutEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pastevertispushoutequiv--af4e75d756038cb500b02aea.md) | 415 | `declaration-track:af4e75d756038cb500b02aeae6eb01aaa5a7cc2d88e6d6bb30b00cd0ec6b711e` |
| 19 | `instance` | [hasPullbackHorizPaste](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/haspullbackhorizpaste--40c9aad93f9735580d39f3c9.md) | 441 | `declaration-track:40c9aad93f9735580d39f3c9a9ea71572af31bd722d1b1d0e1c9f2bcf7d77f12` |
| 20 | `def` | [pullbackRightPullbackFstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackrightpullbackfstiso--ee86d1fd843dc6e451cfa985.md) | 449 | `declaration-track:ee86d1fd843dc6e451cfa9856738619f50363a4b224f8c37885b916f50f9efc6` |
| 21 | `theorem` | [pullbackRightPullbackFstIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackrightpullbackfstiso-hom-fst--3b85c75dd8217e6a5b505205.md) | 456 | `result-track:3b85c75dd8217e6a5b5052056646112048f3331273eeadea6ae440e32a8061e2` |
| 22 | `theorem` | [pullbackRightPullbackFstIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackrightpullbackfstiso-hom-snd--64169bfbcd37feeb3c7ad3b9.md) | 462 | `result-track:64169bfbcd37feeb3c7ad3b9bd86b938240f0be5b20da80ec40b5cadd42c293e` |
| 23 | `theorem` | [pullbackRightPullbackFstIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackrightpullbackfstiso-inv-fst--087f574d0e509ef2d1edc49b.md) | 468 | `result-track:087f574d0e509ef2d1edc49bf52c6b1f2fdb2c59dc92163b63aec5819851950d` |
| 24 | `theorem` | [pullbackRightPullbackFstIso_inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackrightpullbackfstiso-inv-snd-snd--394b86eac00c06329e927ecf.md) | 474 | `result-track:394b86eac00c06329e927ecf4623cef323c51d57efe02041f5fd8b2be8aa0aec` |
| 25 | `theorem` | [pullbackRightPullbackFstIso_inv_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackrightpullbackfstiso-inv-snd-fst--a362b7c8f238a43e68a3a8e8.md) | 480 | `result-track:a362b7c8f238a43e68a3a8e89e1efc0436953f922673326ba9dcc31c9d202d37` |
| 26 | `instance` | [hasPullbackVertPaste](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/haspullbackvertpaste--fc81b848809c46e63fe6e47f.md) | 508 | `declaration-track:fc81b848809c46e63fe6e47f7b3887bd43ee7c7735effcd17df7089675773fdf` |
| 27 | `def` | [pullbackLeftPullbackSndIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackleftpullbacksndiso--0fdb850269c8d49740093245.md) | 516 | `declaration-track:0fdb850269c8d49740093245ad9193ff20f82b2e4250c311f3c2bdbd27f4655a` |
| 28 | `theorem` | [pullbackLeftPullbackSndIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackleftpullbacksndiso-hom-fst--0df34ef6af3e2b48ff392c49.md) | 523 | `result-track:0df34ef6af3e2b48ff392c4934c6c0115501bf21f64d95a218b10b1289f8af5e` |
| 29 | `theorem` | [pullbackLeftPullbackSndIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackleftpullbacksndiso-hom-snd--d7283a870b1964fca2194886.md) | 529 | `result-track:d7283a870b1964fca2194886140359c36e97fb950d2e996bf037fd2640f73528` |
| 30 | `theorem` | [pullbackLeftPullbackSndIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackleftpullbacksndiso-inv-fst--814f0b40b305dcfcf576ba3d.md) | 534 | `result-track:814f0b40b305dcfcf576ba3d3da770fd98cb57a0cb92441310c82fc63cdda6ce` |
| 31 | `theorem` | [pullbackLeftPullbackSndIso_inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackleftpullbacksndiso-inv-snd-snd--2fa277a6d53b33e1bd9d6bc6.md) | 540 | `result-track:2fa277a6d53b33e1bd9d6bc668bc6fb4bbe5645f5d0ecb142f25a01e9fa53b9a` |
| 32 | `theorem` | [pullbackLeftPullbackSndIso_inv_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pullbackleftpullbacksndiso-inv-fst-snd--c28ed45f22ff0d6899d890f9.md) | 545 | `result-track:c28ed45f22ff0d6899d890f9855dacc91a32a9a70a8258a747ddf16279e32eab` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/instance--bf45c5a67f5c289b32709ed3.md) | 568 | `declaration-track:bf45c5a67f5c289b32709ed369616e8199a6beecc61201954d1799c5f3b63959` |
| 34 | `def` | [pushoutLeftPushoutInrIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pushoutleftpushoutinriso--4cb4fc5c836fab17ac5c5185.md) | 576 | `declaration-track:4cb4fc5c836fab17ac5c5185de43b09409b8ad716da27d52c03aaa60f43b0cda` |
| 35 | `theorem` | [inl_pushoutLeftPushoutInrIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inl-pushoutleftpushoutinriso-inv--476ac545e8f489a7e626eeb0.md) | 583 | `result-track:476ac545e8f489a7e626eeb09bdf12a68d00a225df80b81dd9378983bb7a2fc8` |
| 36 | `theorem` | [inr_pushoutLeftPushoutInrIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inr-pushoutleftpushoutinriso-hom--5e56bf2be7b5e3714c7f19af.md) | 589 | `result-track:5e56bf2be7b5e3714c7f19af6e811b11d15f6d709844a026fdf6ae90cf3093f3` |
| 37 | `theorem` | [inr_pushoutLeftPushoutInrIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inr-pushoutleftpushoutinriso-inv--dfdf9a6f2a5afcfe9dfd66fa.md) | 595 | `result-track:dfdf9a6f2a5afcfe9dfd66fa39f050b02e8588af2ca0f35d07a760eb9d23e20b` |
| 38 | `theorem` | [inl_inl_pushoutLeftPushoutInrIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inl-inl-pushoutleftpushoutinriso-hom--3e0f51e92b2cbbb4564c7996.md) | 601 | `result-track:3e0f51e92b2cbbb4564c799658512184fe6b886952858f9a619b53ee0b276a2d` |
| 39 | `theorem` | [inr_inl_pushoutLeftPushoutInrIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inr-inl-pushoutleftpushoutinriso-hom--25ed18a0d02d06dd7b119425.md) | 608 | `result-track:25ed18a0d02d06dd7b11942580e909d3ef33fbe7b4f06219be7c5fea9f576d38` |
| 40 | `instance` | [hasPushoutVertPaste](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/haspushoutvertpaste--b8550765ba11f214c760ae4d.md) | 636 | `declaration-track:b8550765ba11f214c760ae4d9c01599f270a4dcc1d1b0fceef5bddd1abe25d6e` |
| 41 | `def` | [pushoutRightPushoutInlIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/pushoutrightpushoutinliso--184064b2c12d69734ee29a84.md) | 644 | `declaration-track:184064b2c12d69734ee29a848bad5ac5e7069111cd79a9c3401d5f802b2bb512` |
| 42 | `theorem` | [inl_pushoutRightPushoutInlIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inl-pushoutrightpushoutinliso-inv--9f18beee6b2619497cb22a58.md) | 651 | `result-track:9f18beee6b2619497cb22a583359e03221209a2d2a7161ae9d68bd2163626799` |
| 43 | `theorem` | [inr_inr_pushoutRightPushoutInlIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inr-inr-pushoutrightpushoutinliso-hom--01d0bc1613451e5e668cff04.md) | 656 | `result-track:01d0bc1613451e5e668cff04de772fe4c2ffcb7336a3d255765d10096b56efc2` |
| 44 | `theorem` | [inr_pushoutRightPushoutInlIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inr-pushoutrightpushoutinliso-inv--e1e459f2fc39219b9e3657ea.md) | 663 | `result-track:e1e459f2fc39219b9e3657ea82b6d310acc5c6911cdfec3bc3026fb47e77e241` |
| 45 | `theorem` | [inl_pushoutRightPushoutInlIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inl-pushoutrightpushoutinliso-hom--9020b86694db87736392c71b.md) | 669 | `result-track:9020b86694db87736392c71b31e3b040cea088cd4b4c496cf6f40983ffbcf5db` |
| 46 | `theorem` | [inr_inl_pushoutRightPushoutInlIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/declarations/inr-inl-pushoutrightpushoutinliso-hom--3b60c0fcd1685f233e454945.md) | 674 | `result-track:3b60c0fcd1685f233e454945b3b815f4e61ca09187385450eb6633e9445f0627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
