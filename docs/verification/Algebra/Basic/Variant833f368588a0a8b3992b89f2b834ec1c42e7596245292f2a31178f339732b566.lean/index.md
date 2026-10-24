# Verification target: GRWTSK.Algebra.Basic.Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66f0b12387b1fe90f3998d0165cca79f67f746b1",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66f0b12387b1fe90f3998d0165cca79f67f746b1`.

Source path: `GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean.json)

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
| 1 | `structure` | [Algebra.Presentation](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/algebra-presentation--eff540acfb71a2d1553c6a81.md) | 61 | `declaration-track:eff540acfb71a2d1553c6a819fa8f7f60dafa2be4d3f7ff0098a606af77681be` |
| 2 | `lemma` | [aeval_val_relation](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aeval-val-relation--48a1a68836f667f83d6ddcc6.md) | 74 | `result-track:48a1a68836f667f83d6ddcc676a57e9448a2c2b5f0fa73dd90d426fed8ea1f5b` |
| 3 | `lemma` | [relation_mem_ker](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/relation-mem-ker--d96869035496ac6cf5ae7482.md) | 78 | `result-track:d96869035496ac6cf5ae74829e598850681b5b2ffd0323f7bfd2885e59960f42` |
| 4 | `abbrev` | [Quotient](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/quotient--26cb789ea045b56d5e7d3ce3.md) | 84 | `declaration-track:26cb789ea045b56d5e7d3ce31eeef2d1e55752a294f316c15ebbd5974591ae4a` |
| 5 | `def` | [quotientEquiv](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/quotientequiv--cb31bd8055b24864b6d89bd1.md) | 87 | `declaration-track:cb31bd8055b24864b6d89bd11979ca01a71c8bf3b44e29c48f58d9a86f5fc2f3` |
| 6 | `lemma` | [quotientEquiv_mk](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/quotientequiv-mk--13634166e329be4b40fb29e3.md) | 92 | `result-track:13634166e329be4b40fb29e3f1547cbc024d8fe71250efc8e5dba0a924322788` |
| 7 | `lemma` | [quotientEquiv_symm](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/quotientequiv-symm--b354abb76ad605e5261f95b7.md) | 96 | `result-track:b354abb76ad605e5261f95b740b2ef4b4e753d2d8beb3e8528cf261dd46a8ca0` |
| 8 | `def` | [dimension](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/dimension--6127b693e302ee9893e62abf.md) | 109 | `declaration-track:6127b693e302ee9893e62abfb4f02d7625119f3c546097f43ac29f7847112922` |
| 9 | `lemma` | [fg_ker](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/fg-ker--539688e83f4747bfb3a89bfe.md) | 112 | `result-track:539688e83f4747bfb3a89bfe41bc305f8eeabe3036d3ff6e628e97e3194ae603` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/instance--5056c53d465c712e99dbcab4.md) | 118 | `declaration-track:5056c53d465c712e99dbcab45411d9333d78e636ceb86aade92e31f7fdea3ba0` |
| 11 | `lemma` | [finitePresentation_of_isFinite](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/finitepresentation-of-isfinite--9541b24e46c8d53450de58d2.md) | 121 | `result-track:9541b24e46c8d53450de58d2090ddcfca2c32de393ac1f7b25f34f76ede5a2ff` |
| 12 | `lemma` | [exists_presentation_fin](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/exists-presentation-fin--2f522c9bd1c0f9a431402dd3.md) | 126 | `result-track:2f522c9bd1c0f9a431402dd38c90e571f2080b8ea9c59ccce635a027ab5d05c4` |
| 13 | `def` | [ofFinitePresentationVars](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/offinitepresentationvars--77d0deba73dee77d40b1606f.md) | 145 | `declaration-track:77d0deba73dee77d40b1606f0af1c0f12afee2f865b12376cc75520f86d10d97` |
| 14 | `def` | [ofFinitePresentationRels](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/offinitepresentationrels--a2aae8364956337cb554ffee.md) | 151 | `declaration-track:a2aae8364956337cb554ffeef23475243b50c5f186517b482b6325aaa73fb48d` |
| 15 | `def` | [ofFinitePresentation](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/offinitepresentation--0c757a9d2aeacf73567044bf.md) | 157 | `declaration-track:0c757a9d2aeacf73567044bf6f413679905287f4e364c9c636c999bb7b5aeb60` |
| 16 | `def` | [ofAlgEquiv](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/ofalgequiv--629f17b7bfdad7eb8ed7d135.md) | 165 | `declaration-track:629f17b7bfdad7eb8ed7d1354c536101f9da899d6f6dd797980e28cec0ca7b01` |
| 17 | `lemma` | [dimension_ofAlgEquiv](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/dimension-ofalgequiv--d02d06526b4927945112806d.md) | 173 | `result-track:d02d06526b4927945112806d7a3d2b332a6c2e309b47ecd8922e560c208861f0` |
| 18 | `def` | [ofBijectiveAlgebraMap](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/ofbijectivealgebramap--b1bb51e845456dbbf4c95641.md) | 179 | `declaration-track:b1bb51e845456dbbf4c956411653945d6814d7a56a4d5f829593fb244d735835` |
| 19 | `lemma` | [ofBijectiveAlgebraMap_dimension](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/ofbijectivealgebramap-dimension--0e161f9c8299f332685011d9.md) | 191 | `result-track:0e161f9c8299f332685011d99ec021fe883ac8aefb9aba162d401d9cbc2adf3d` |
| 20 | `def` | [id](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/id--0e47ce120d62474adcdb256c.md) | 197 | `declaration-track:0e47ce120d62474adcdb256cf6691e3abd794163cd7943ab7c0cb93a197674b5` |
| 21 | `lemma` | [id_dimension](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/id-dimension--52e6178c832087e637f953cd.md) | 200 | `result-track:52e6178c832087e637f953cddfc800b43bf37240f4df06bbde3b4f096a97ba06` |
| 22 | `def` | [mvPolynomial](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/mvpolynomial--80c8e5f3b54a6512ed707bc6.md) | 207 | `declaration-track:80c8e5f3b54a6512ed707bc6390bf1b43743569293913cc46718988f5da4ee68` |
| 23 | `lemma` | [dimension_mvPolynomial](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/dimension-mvpolynomial--0ffeaec186469289fcfee8a2.md) | 214 | `result-track:0ffeaec186469289fcfee8a2cf376f223db58f9aa2de95ca1e5bda7bc4aeb089` |
| 24 | `lemma` | [_root_.Algebra.Generators.ker_localizationAway](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/root-algebra-generators-ker-localizationaway--35d35f12f56f5d8a03bfa142.md) | 223 | `result-track:35d35f12f56f5d8a03bfa1422f6bad6e816b428172ba83baf317a1a2f7cc4835` |
| 25 | `def` | [localizationAway](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/localizationaway--40321775efe7a2dcc07f2054.md) | 242 | `declaration-track:40321775efe7a2dcc07f20547e43ec912e025eb1200d319d1b3ed065a94bf9d0` |
| 26 | `lemma` | [localizationAway_dimension_zero](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/localizationaway-dimension-zero--f8a3f5ed9217e37904764338.md) | 250 | `result-track:f8a3f5ed9217e37904764338dcacde9cb6c38a84a46f976866d2938bd39ff79c` |
| 27 | `lemma` | [_root_.Algebra.Generators.C_mul_X_sub_one_mem_ker](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/root-algebra-generators-c-mul-x-sub-one-mem-ker--27b285b68fed492a85fae301.md) | 253 | `result-track:27b285b68fed492a85fae30171c12c10260ffa94b3f1882b0b8610ed060e7589` |
| 28 | `lemma` | [span_range_relation_eq_ker_baseChange](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/span-range-relation-eq-ker-basechange--f9a20bfe8e2621534a30912c.md) | 263 | `result-track:f9a20bfe8e2621534a30912c01de3dc6a72bf01a6f6420d34f626b9e6cdfaf07` |
| 29 | `def` | [baseChange](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/basechange--af688a5a29b67c83384557f3.md) | 311 | `declaration-track:af688a5a29b67c83384557f367e792ecce72e71d32fbd5b42546b0171f28c5ef` |
| 30 | `lemma` | [baseChange_toGenerators](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/basechange-togenerators--bbe4173f5099e5d50d4265cd.md) | 316 | `result-track:bbe4173f5099e5d50d4265cdbaa03b9e8e41c67ece08aaaad4a2768ae5ed0b0f` |
| 31 | `def` | [aux](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aux--7546b1d0bc1e974c15b2b2a1.md) | 363 | `declaration-track:7546b1d0bc1e974c15b2b2a1060a3fe1630e4a0883a7c5c51a8bf55dfb48ec76` |
| 32 | `def` | [compRelationAux](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/comprelationaux--6c964e8caeea1ade26ad506a.md) | 369 | `declaration-track:6c964e8caeea1ade26ad506a4ca34b625083790bb8468ac309077d1dadd06b68` |
| 33 | `lemma` | [aux_X](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aux-x--22d52c5e8389fb692dc921f4.md) | 374 | `result-track:22d52c5e8389fb692dc921f45eee6f9f7cdf813a953c0481bd9b7443744adea7` |
| 34 | `lemma` | [compRelationAux_map](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/comprelationaux-map--562ca4852cffa9fe28268132.md) | 378 | `result-track:562ca4852cffa9fe28268132556a6cef372619664326c952a4e8953641ce701d` |
| 35 | `lemma` | [aux_surjective](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aux-surjective--3a1cd821ef0c0e52c299e4a4.md) | 394 | `result-track:3a1cd821ef0c0e52c299e4a43e0378cea6ccf8b84f119f696390693710e2618d` |
| 36 | `lemma` | [aux_image_relation](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aux-image-relation--4d138ff0398cc421804f4d27.md) | 407 | `result-track:4d138ff0398cc421804f4d27c7f966fd3f6be269784ff7cb7b61b1ac6768a3bc` |
| 37 | `lemma` | [aux_eq_comp](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aux-eq-comp--d13c7691f525ec48996508d4.md) | 417 | `result-track:d13c7691f525ec48996508d4023b4ec2989ae3b7afc391887f88796da21a8e6a` |
| 38 | `lemma` | [aux_ker](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aux-ker--4a7c0bd7d4dfcf62d1e3e845.md) | 422 | `result-track:4a7c0bd7d4dfcf62d1e3e845d121863b68c703a9eda263cb5a2fc976692427e5` |
| 39 | `lemma` | [aeval_comp_val_eq](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/aeval-comp-val-eq--eb7f0aee120c0d5f75554031.md) | 431 | `result-track:eb7f0aee120c0d5f75554031b7ff52ee6c4093887dcdb05337d9a409dbb3bb07` |
| 40 | `lemma` | [span_range_relation_eq_ker_comp](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/span-range-relation-eq-ker-comp--ebdbef73081a5c81fc86e3aa.md) | 438 | `result-track:ebdbef73081a5c81fc86e3aa4bc0fed5e76c2e0075b4105667adb30e10f09105` |
| 41 | `def` | [comp](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/comp--dc49ec9247abafacb54d8e3c.md) | 454 | `declaration-track:dc49ec9247abafacb54d8e3c1e3ecd6474deff113e01d8304ed690d3ab3087cc` |
| 42 | `lemma` | [toGenerators_comp](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/togenerators-comp--865936ef8cfa9fb754f695e9.md) | 460 | `result-track:865936ef8cfa9fb754f695e9c6e92ba678d25cd34df535a2a7ba67cacb60472b` |
| 43 | `lemma` | [comp_relation_inr](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/comp-relation-inr--c1c58dbcd208cde5516b2f25.md) | 463 | `result-track:c1c58dbcd208cde5516b2f2518397fc10d0212f75f9bcd727ea7d181621d2ac6` |
| 44 | `lemma` | [comp_aeval_relation_inl](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/comp-aeval-relation-inl--be33840367a9fde945527419.md) | 467 | `result-track:be33840367a9fde94552741979c1540d45f6c7b1d36d07a0cd64881f8c3b30e9` |
| 45 | `lemma` | [relation_comp_localizationAway_inl](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/relation-comp-localizationaway-inl--1404abde51aa42131e9cf93f.md) | 479 | `result-track:1404abde51aa42131e9cf93feea4dfa35fe61de35902584689628b6f7b66d84b` |
| 46 | `def` | [reindex](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/reindex--c6e8a62766d97f24185981a0.md) | 497 | `declaration-track:c6e8a62766d97f24185981a0e790ce021fad332ac0e43e89af1b46bdac9fc383` |
| 47 | `lemma` | [dimension_reindex](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/dimension-reindex--cba30cbb9ec87ab7854f3a64.md) | 513 | `result-track:cba30cbb9ec87ab7854f3a64d48d7bad422d6a06fa919151f8e5c73d950bc48b` |
| 48 | `def` | [naive](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/naive--1620a34b07a4bb29340c0367.md) | 529 | `declaration-track:1620a34b07a4bb29340c03670f829d967d50735d35da797d75ff10f551f74aaa` |
| 49 | `lemma` | [naive_relation](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/naive-relation--40f98146866ceebf3f58b86e.md) | 538 | `result-track:40f98146866ceebf3f58b86e91633c1004d7854279479f5be2877692880db110` |
| 50 | `lemma` | [naive_relation_apply](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/naive-relation-apply--9f66de86ee71e4bbd26c8054.md) | 540 | `result-track:9f66de86ee71e4bbd26c80543272c7d3a95747de37a80184be92ac2e3cebe9af` |
| 51 | `lemma` | [mem_ker_naive](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/mem-ker-naive--904522a019ccc1fbaf13097c.md) | 542 | `result-track:904522a019ccc1fbaf13097cc146cd48fc9d18095789cac43abb39fef1805f0d` |
| 52 | `lemma` | [Generators.fg_ker_of_finitePresentation](../../../../mathematics/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/declarations/generators-fg-ker-of-finitepresentation--9ef1740ddf4daf38e2be30f6.md) | 550 | `result-track:9ef1740ddf4daf38e2be30f6ea973d10f6c1348af9386f97cf23d2de74b0113c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
