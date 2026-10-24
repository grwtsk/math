# Verification target: GRWTSK.Algebra.Basic.Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1309cf19c9e39d525dc6d17e66d4e379b199bee",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1309cf19c9e39d525dc6d17e66d4e379b199bee`.

Source path: `GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Presentation](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/algebra-presentation--993062f42ae3f5645c61cdc0.md) | 69 | `declaration-track:993062f42ae3f5645c61cdc0067aa701cd5a2b2d5420f8071f299a8b6ca2ee15` |
| 2 | `lemma` | [aeval_val_relation](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aeval-val-relation--82ce517b95abe8767e7353e6.md) | 82 | `result-track:82ce517b95abe8767e7353e61485c43c0456bc159220de5e220df0f437d59922` |
| 3 | `lemma` | [relation_mem_ker](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/relation-mem-ker--340d323abfe220b3b294b5f8.md) | 86 | `result-track:340d323abfe220b3b294b5f8fa6478a6fd2f62c09721ee05c1f2cfc5a949e7cd` |
| 4 | `abbrev` | [Quotient](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/quotient--1e8594d4836a4bcc515e05f4.md) | 92 | `declaration-track:1e8594d4836a4bcc515e05f4b758763df4958d3456e51b8727ac9b7e501ca397` |
| 5 | `def` | [quotientEquiv](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/quotientequiv--408d54343f3f6d52643068a1.md) | 95 | `declaration-track:408d54343f3f6d52643068a1730eb0f1ce6e15849c9056700dbf601b7a8a2c69` |
| 6 | `lemma` | [quotientEquiv_mk](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/quotientequiv-mk--988919a6fd792b3906bc0cde.md) | 100 | `result-track:988919a6fd792b3906bc0cdeee6f644c3db905ed01931ee1d1f874d661395688` |
| 7 | `lemma` | [quotientEquiv_symm](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/quotientequiv-symm--6182712a52853b620d481535.md) | 104 | `result-track:6182712a52853b620d4815353ef7b20ff13cceac3800bd52ea3b259ad534b2ac` |
| 8 | `def` | [dimension](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/dimension--7a57e5f34e4739a7b9729e5f.md) | 117 | `declaration-track:7a57e5f34e4739a7b9729e5f6bd1eff7cacbfc8d582c56adb2bb9d53417c41c2` |
| 9 | `lemma` | [fg_ker](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/fg-ker--eb0c922e275966ebc0cdbf02.md) | 120 | `result-track:eb0c922e275966ebc0cdbf02b401578e77399cd08920d620bd271d4771f94326` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/instance--b0fd142c35aafc2fa17b65bd.md) | 126 | `declaration-track:b0fd142c35aafc2fa17b65bd53e65c24054a46b09bf0e1b4905048681fc2e354` |
| 11 | `lemma` | [finitePresentation_of_isFinite](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/finitepresentation-of-isfinite--c8149c7ec1246e802ad2b0e1.md) | 129 | `result-track:c8149c7ec1246e802ad2b0e179b5fe24a34e2419c498524942ef2d7fbb756dcf` |
| 12 | `lemma` | [exists_presentation_fin](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/exists-presentation-fin--9168cb5c0a1c7453b89aa552.md) | 134 | `result-track:9168cb5c0a1c7453b89aa55227b1c9dc088ab58554453e4823673bebbda8ab0f` |
| 13 | `def` | [ofFinitePresentationVars](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/offinitepresentationvars--affed1050996cef4e7e47b51.md) | 153 | `declaration-track:affed1050996cef4e7e47b51ec8f51e31e4a09a4e7095286f7d7505cf8141839` |
| 14 | `def` | [ofFinitePresentationRels](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/offinitepresentationrels--17bb15e1480c2951eb07b264.md) | 159 | `declaration-track:17bb15e1480c2951eb07b26420e498fc2e89aabb302c4fcc4852f09d4d5405ef` |
| 15 | `def` | [ofFinitePresentation](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/offinitepresentation--07f9c179b55493a4cb21235b.md) | 165 | `declaration-track:07f9c179b55493a4cb21235b07eef1669028819a4ef46f45f2bbea2413f321e8` |
| 16 | `def` | [ofAlgEquiv](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/ofalgequiv--c3c71d940894ff5069c282ee.md) | 173 | `declaration-track:c3c71d940894ff5069c282ee72e024ea010802cdf27327230fb9fa865f934e7c` |
| 17 | `lemma` | [dimension_ofAlgEquiv](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/dimension-ofalgequiv--04fe456108b0942431eadb81.md) | 181 | `result-track:04fe456108b0942431eadb811f0d4e29b884b23616783062d9a17b2967b09b4a` |
| 18 | `def` | [ofBijectiveAlgebraMap](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/ofbijectivealgebramap--cc2bd1f3f3c8db5b9d775c6e.md) | 187 | `declaration-track:cc2bd1f3f3c8db5b9d775c6ee1a782b4766f64096a607d321d992ef86ea30782` |
| 19 | `lemma` | [ofBijectiveAlgebraMap_dimension](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/ofbijectivealgebramap-dimension--d3ca6f6470bd8e6c512293ca.md) | 199 | `result-track:d3ca6f6470bd8e6c512293ca613f35fe8670b99001a6e636aed4dcb5ed6a6205` |
| 20 | `def` | [id](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/id--74a0ce9ca76dc188802a825b.md) | 205 | `declaration-track:74a0ce9ca76dc188802a825b6cb2c52963175aa9370903107deba30b6a3eca4d` |
| 21 | `lemma` | [id_dimension](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/id-dimension--de6257b646280ce7edf1c956.md) | 208 | `result-track:de6257b646280ce7edf1c9565a4614d7359ed9692a32b10fb950a87cc000b403` |
| 22 | `def` | [mvPolynomial](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/mvpolynomial--f2353aed7a9b47fd2e024b7e.md) | 215 | `declaration-track:f2353aed7a9b47fd2e024b7e99678f83c9e862345b1279b9822fee4192aa3a37` |
| 23 | `lemma` | [dimension_mvPolynomial](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/dimension-mvpolynomial--4591dac7650085aeeb5f1d6a.md) | 222 | `result-track:4591dac7650085aeeb5f1d6a4141a6b7bf112db50d6196b329e56073fa3a0d04` |
| 24 | `lemma` | [_root_.GRWTSK.Algebra.AlgebraPresentation.Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.Algebra.Generators.ker_localizationAway](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/root-grwtsk-algebra-algebrapresentation-variant833f368588a0a8b3992b89f2b--8c53e38cd1c3f6c89755a3e4.md) | 231 | `result-track:8c53e38cd1c3f6c89755a3e4bac0d5dbc670118880d95f5c97763d4cf3dc4cce` |
| 25 | `def` | [localizationAway](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/localizationaway--a6dea8c52c56f81c25c4d02c.md) | 250 | `declaration-track:a6dea8c52c56f81c25c4d02c15454ad5162a3b8e1469945af7d1210ec5326bd0` |
| 26 | `lemma` | [localizationAway_dimension_zero](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/localizationaway-dimension-zero--e642e5071f4cb0ab17d8bae8.md) | 258 | `result-track:e642e5071f4cb0ab17d8bae8cde0fdadacf534de837cf109db0ddb7a29e8192b` |
| 27 | `lemma` | [_root_.GRWTSK.Algebra.AlgebraPresentation.Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.Algebra.Generators.C_mul_X_sub_one_mem_ker](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/root-grwtsk-algebra-algebrapresentation-variant833f368588a0a8b3992b89f2b--9f576e1918b8aff2475df417.md) | 261 | `result-track:9f576e1918b8aff2475df41797901f4aff8abc5ea2c6d2c20d7c9e5ab2f51358` |
| 28 | `lemma` | [span_range_relation_eq_ker_baseChange](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/span-range-relation-eq-ker-basechange--702b8a3615689eb569b83a08.md) | 271 | `result-track:702b8a3615689eb569b83a089c7ce85599a814339ace3ffbea5ca635194f5168` |
| 29 | `def` | [baseChange](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/basechange--301d59d5420b6bc35a633073.md) | 319 | `declaration-track:301d59d5420b6bc35a63307339a1fcf57d41e3c192058b0bdbbb7d4850efbf68` |
| 30 | `lemma` | [baseChange_toGenerators](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/basechange-togenerators--226a867f9bc12f042182b641.md) | 324 | `result-track:226a867f9bc12f042182b641250f940062be6513e859dd11cbef2e58cf5b2cad` |
| 31 | `def` | [aux](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aux--7e448707c3898d1cf1805ad3.md) | 371 | `declaration-track:7e448707c3898d1cf1805ad38252104790cdb5992b0235226e6df35eb0980584` |
| 32 | `def` | [compRelationAux](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/comprelationaux--0fb17a9d446ef91d3f1d6d8f.md) | 377 | `declaration-track:0fb17a9d446ef91d3f1d6d8f112a404e9962e317377d0ae276c87807e2642361` |
| 33 | `lemma` | [aux_X](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aux-x--80274b090b28dc0d889acc2f.md) | 382 | `result-track:80274b090b28dc0d889acc2f2098e9d4cf97d29def7279c578f095b009d4b8d8` |
| 34 | `lemma` | [compRelationAux_map](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/comprelationaux-map--3bbefbe3c6aaf03ee60b057a.md) | 386 | `result-track:3bbefbe3c6aaf03ee60b057ad633b9c7b799c28764b9a836115e2a499f0e2658` |
| 35 | `lemma` | [aux_surjective](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aux-surjective--cf79aaee839b1cf7b8a42566.md) | 402 | `result-track:cf79aaee839b1cf7b8a425661ec965d5a2b4b5b1db30958c9683006e018fa12c` |
| 36 | `lemma` | [aux_image_relation](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aux-image-relation--85d819a226640ff056c1f0cc.md) | 415 | `result-track:85d819a226640ff056c1f0ccca268ba0959e02731ef0371f9b24380cde71d407` |
| 37 | `lemma` | [aux_eq_comp](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aux-eq-comp--d0ad9c967cf57d1dc1bd6e5f.md) | 425 | `result-track:d0ad9c967cf57d1dc1bd6e5f27f45d21be68130208338752a870f628bfffc946` |
| 38 | `lemma` | [aux_ker](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aux-ker--c986086e456f3ab4dc82ffa0.md) | 430 | `result-track:c986086e456f3ab4dc82ffa0ed99e355385545e7c424226165bbbf037648c0f2` |
| 39 | `lemma` | [aeval_comp_val_eq](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/aeval-comp-val-eq--90a018feab8977115509248c.md) | 439 | `result-track:90a018feab8977115509248ce8fb3959acccc1e0ad5744b33c5d27639accd012` |
| 40 | `lemma` | [span_range_relation_eq_ker_comp](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/span-range-relation-eq-ker-comp--2d0111c3c069c843eb7d7e12.md) | 446 | `result-track:2d0111c3c069c843eb7d7e12284be784649c26f365feec77da8a768c888c0db8` |
| 41 | `def` | [comp](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/comp--44b6f3efa4e71f95a67d0fc0.md) | 462 | `declaration-track:44b6f3efa4e71f95a67d0fc0b99126c52cf1c31bea6b0e52594b59784c57a760` |
| 42 | `lemma` | [toGenerators_comp](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/togenerators-comp--bff04cc54ed65a84869a3891.md) | 468 | `result-track:bff04cc54ed65a84869a3891236086d7dc96f88e22abb0dd3a68ac53a3260ab2` |
| 43 | `lemma` | [comp_relation_inr](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/comp-relation-inr--ed64f2c3e104ce00408bcb9b.md) | 471 | `result-track:ed64f2c3e104ce00408bcb9ba84772257a0a5f2531e491f4564b96087b90fd54` |
| 44 | `lemma` | [comp_aeval_relation_inl](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/comp-aeval-relation-inl--0e513906bf69d413a976346e.md) | 475 | `result-track:0e513906bf69d413a976346e715819fbc5abcb30da91018bf0e3b4f8413b6504` |
| 45 | `lemma` | [relation_comp_localizationAway_inl](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/relation-comp-localizationaway-inl--77455538683e6adc7286b8dd.md) | 487 | `result-track:77455538683e6adc7286b8dd47a858ef5d46389dd596981f4176ae1a2a7df0db` |
| 46 | `def` | [reindex](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/reindex--4e8f93bc54a0985fa94b6986.md) | 505 | `declaration-track:4e8f93bc54a0985fa94b69863fe1ec22bb459fc2656f61c5ad0b93c7fd82ba36` |
| 47 | `lemma` | [dimension_reindex](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/dimension-reindex--5bd64962c54b0d724b2818ee.md) | 521 | `result-track:5bd64962c54b0d724b2818ee9582d408c82f8fcdb2658c7e80ab645e4e371ea2` |
| 48 | `def` | [naive](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/naive--68769dda300876f53dc9672e.md) | 537 | `declaration-track:68769dda300876f53dc9672e42278c58d492607974b6eba1cca4449aac24ba36` |
| 49 | `lemma` | [naive_relation](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/naive-relation--c90acac834d0fe72743978be.md) | 546 | `result-track:c90acac834d0fe72743978bee6da1e4eb4d9572f761565925892bd2238fb474c` |
| 50 | `lemma` | [naive_relation_apply](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/naive-relation-apply--aa81940fd6d632f71fce60b9.md) | 548 | `result-track:aa81940fd6d632f71fce60b9e2c3eb7c0014a8208350d890cfdc25af82b91d7f` |
| 51 | `lemma` | [mem_ker_naive](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/mem-ker-naive--f0fa98b7f8ab5d3939994f49.md) | 550 | `result-track:f0fa98b7f8ab5d3939994f49d5094a6fbd31206c0850c76f8b0c7a2492b8d380` |
| 52 | `lemma` | [Generators.fg_ker_of_finitePresentation](../../../../mathematics/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean/declarations/generators-fg-ker-of-finitepresentation--58397617cff44f253e1096d2.md) | 558 | `result-track:58397617cff44f253e1096d2a98ae849f00c5b7c7a7b8eb98b8d17a38eb64181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
