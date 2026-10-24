# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "186aab645c2ed4caf0d797395c88b7fb9692e387",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `186aab645c2ed4caf0d797395c88b7fb9692e387`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModuleCat.isFG](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/modulecat-isfg--c9c8f4e270bd9dd72850756d.md) | 57 | `declaration-track:c9c8f4e270bd9dd72850756d60d7a43b3ec84d2a78be81e6647db39942669c84` |
| 2 | `lemma` | [ModuleCat.isFG_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/modulecat-isfg-iff--15342517586a84ef6b33c065.md) | 61 | `result-track:15342517586a84ef6b33c0654ab34701aa297de07827cbe8f47036160d2698a9` |
| 3 | `abbrev` | [FGModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecat--eb033ad8f14990e3f0d26316.md) | 65 | `declaration-track:eb033ad8f14990e3f0d263165efb00017ab8d150e525b55c1eec7d0fc8afcd4a` |
| 4 | `def` | [FGModuleCat.carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecat-carrier--779491bc11db82334bd34bb6.md) | 71 | `declaration-track:779491bc11db82334bd34bb6d68738a72a96f11b75e244c76fad7508eb203f78` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--588ae15676ec74e1dcee34dc.md) | 73 | `declaration-track:588ae15676ec74e1dcee34dc0fc3389e3c05af2cd87f90414cfa50ebd473c6d7` |
| 6 | `lemma` | [FGModuleCat.obj_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecat-obj-carrier--b5c38723b11ec1bb24c54b9d.md) | 78 | `result-track:b5c38723b11ec1bb24c54b9dc6976b9a2ec6a2101fef00938c5e01a8d7b00e8a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--16104673aac8ce22b9340d1c.md) | 80 | `declaration-track:16104673aac8ce22b9340d1c918c847bd88c1791f233fe9b3fcd1f1e3eff9bdf` |
| 8 | `lemma` | [hom_hom_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/hom-hom-comp--bccbc7dfd9642c2cf25bb840.md) | 91 | `result-track:bccbc7dfd9642c2cf25bb8408fa0d21145692ab3b98a5ea0fbcd61b8bab97a94` |
| 9 | `lemma` | [hom_hom_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/hom-hom-id--09f5ae541bb9b2efe35f1f7c.md) | 94 | `result-track:09f5ae541bb9b2efe35f1f7c557140bebce2ce602c7062feaed79a12a012db4f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--2210067236fa6bd21e641ef8.md) | 96 | `declaration-track:2210067236fa6bd21e641ef88a5a74581212f02ce5c79958d3cf80c4aa41a276` |
| 11 | `abbrev` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/of--160ce7fd262057bf088b1a81.md) | 100 | `declaration-track:160ce7fd262057bf088b1a81c1d7012788f5f159e7da3cef1b5a0e289baf572c` |
| 12 | `def` | [delabOf](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/delabof--0534752e21a758fa15b74c92.md) | 106 | `declaration-track:0534752e21a758fa15b74c9221428f69d551b21990dcca71ae441ec1ceba7d99` |
| 13 | `lemma` | [of_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/of-carrier--4c35427bef0757e1fa476fea.md) | 109 | `result-track:4c35427bef0757e1fa476feae53f5b06ac10b936a24b9cba0402d229badace89` |
| 14 | `abbrev` | [ofHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/ofhom--8ab9771e422ae2316155a805.md) | 114 | `declaration-track:8ab9771e422ae2316155a805217316702b0f07b888cae412adc2ee48743667e2` |
| 15 | `lemma` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/hom-ext--464c165c31eff75863ee63bf.md) | 120 | `result-track:464c165c31eff75863ee63bf9c518af4a5044f470d4c4a1c1769861de5343d88` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--5bd20c871044d63c6bb2de34.md) | 123 | `declaration-track:5bd20c871044d63c6bb2de34e7fbc9a7592fb410403cbd2d7651a33db74ca1d0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--197d1c154e2e395ed3d2a310.md) | 126 | `declaration-track:197d1c154e2e395ed3d2a310746c0d4cf5bb3a07fc504ad6c4c859e8c136e437` |
| 18 | `def` | [isoToLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/isotolinearequiv--bcf3d76d4283f58484d6a6f1.md) | 132 | `declaration-track:bcf3d76d4283f58484d6a6f16a5a29a5b84be5a2d2d7969fd7971d9ad47a5f00` |
| 19 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.ModuleCatIsFG.Variant224fff0067dc00b2174054f75da802618256dc3d4a951114bbb76237ec434954.LinearEquiv.toFGModuleCatIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/root-grwtsk-algebra-linearalgebra-modulecatisfg-variant224fff0067dc00b21--1b28e16b85e9f6545b9643c6.md) | 138 | `declaration-track:1b28e16b85e9f6545b9643c69d221f2079cc09ea9bebaa829f2d459daf074379` |
| 20 | `def` | [ulift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/ulift--ef8dc0c88148ce13b49d9665.md) | 148 | `declaration-track:ef8dc0c88148ce13b49d96658cb4dad5a5e411727c288aab27a8c59b2623e6e7` |
| 21 | `def` | [fullyFaithfulULift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fullyfaithfululift--cd074e8b3f70fa264299e0fb.md) | 153 | `declaration-track:cd074e8b3f70fa264299e0fbdea690c6c60103dddf7283c4807d909b7b28534d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--98d301c197f06d79dc535ee2.md) | 157 | `declaration-track:98d301c197f06d79dc535ee25e3a6c039fc523ebdb08168e16acecf60c8f0975` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--ac3fc5e6537a43df8a3f1e0c.md) | 160 | `declaration-track:ac3fc5e6537a43df8a3f1e0c2c0301c18a0246ecbb9048a3b1dc3c5fcf718c46` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--89fd14de0ce13c869fb340dd.md) | 169 | `declaration-track:89fd14de0ce13c869fb340dd24b64148354ef780ee74c1d96092b0c01913be92` |
| 25 | `lemma` | [tensorUnit_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/tensorunit-obj--21c4a7b1f95bf3ec506025c6.md) | 176 | `result-track:21c4a7b1f95bf3ec506025c64affad0493fd39bcbc38a151fd6bb93b02cdaab6` |
| 26 | `lemma` | [tensorObj_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/tensorobj-obj--e186766b9e7471f0aa2ee855.md) | 177 | `result-track:e186766b9e7471f0aa2ee8551fab6b2e4e284bdb279622910287d2137ff58d3a` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--55170dc2bf48930a51533784.md) | 179 | `declaration-track:55170dc2bf48930a51533784807989249ad05dbfb8bdacb151e4f4fdff5bbca9` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--ab256b02200354560ec87bc8.md) | 180 | `declaration-track:ab256b02200354560ec87bc8ebf273a0756c0b20ba94efc223e79c81ad0dcd82` |
| 29 | `theorem` | [Iso.conj_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/iso-conj-eq-conj--b65d703a214be48fec394b95.md) | 182 | `result-track:b65d703a214be48fec394b953c2163f833e1e1c1895a06daed74f2b048a5bcda` |
| 30 | `theorem` | [Iso.conj_hom_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/iso-conj-hom-eq-conj--52e52bee3a3bb3a8e3ec07a7.md) | 186 | `result-track:52e52bee3a3bb3a8e3ec07a72475de8b76bdf3230c046ac19d533aa29e55b411` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--720c570bab59d6cf7fd0f372.md) | 196 | `declaration-track:720c570bab59d6cf7fd0f37259bf5211cfb92cf557ccfd2cc44f68e33536b900` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--0519d3f8b73fa54a28fa786c.md) | 199 | `declaration-track:0519d3f8b73fa54a28fa786c11d7498e8a71a5e48639ae23dd9af400f0ece6e8` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/instance--48ff66f0a17cdb07ed3798b7.md) | 203 | `declaration-track:48ff66f0a17cdb07ed3798b7b1be4e17961d1ec2f62c64b4ab451fc13dedc478` |
| 34 | `theorem` | [ihom_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/ihom-obj--19e067057deea379c0e431e0.md) | 210 | `result-track:19e067057deea379c0e431e052d4b265e3454b08241ec53ca9c77ffcb3cc321b` |
| 35 | `def` | [FGModuleCatDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatdual--bf1774acec6b28b8b62c8d91.md) | 214 | `declaration-track:bf1774acec6b28b8b62c8d9171c2eed59306147d7546cd7c92979c91bce683fd` |
| 36 | `lemma` | [FGModuleCatDual_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatdual-obj--a6ea3a68c9a9643a0c363762.md) | 217 | `result-track:a6ea3a68c9a9643a0c363762525abf0c71d89b486694f9b2eec070fbd0cdafff` |
| 37 | `lemma` | [FGModuleCatDual_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatdual-coe--138a2c75a9840c4042803a08.md) | 219 | `result-track:138a2c75a9840c4042803a08db92b7e0894dbca45a8948dce06c91ea6ee6d6fa` |
| 38 | `def` | [FGModuleCatCoevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatcoevaluation--d931437162659e09f1256f01.md) | 224 | `declaration-track:d931437162659e09f1256f01290acf32b85846b552f71706c4ff25f4d2bde9f7` |
| 39 | `theorem` | [FGModuleCatCoevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatcoevaluation-apply-one--bd2efb7153c82c8be45a7430.md) | 227 | `result-track:bd2efb7153c82c8be45a74305e2fa210a1b043f7f58a9a508b436da295a506ed` |
| 40 | `def` | [FGModuleCatEvaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatevaluation--31076388429edfac80235797.md) | 234 | `declaration-track:31076388429edfac802357976e804fdd62b609fafe94a9b143dcb444468981c8` |
| 41 | `theorem` | [FGModuleCatEvaluation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatevaluation-apply--e767c91d269bab7747020d66.md) | 237 | `result-track:e767c91d269bab7747020d668d3c9144b70e30201afeb128be0bc56d458f40f3` |
| 42 | `theorem` | [FGModuleCatEvaluation_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/fgmodulecatevaluation-apply--db8aacad6a3324e4719aa2f8.md) | 244 | `result-track:db8aacad6a3324e4719aa2f801474a3db30c57eeee655f92f9ec61bcedf2680a` |
| 43 | `theorem` | [coevaluation_evaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/coevaluation-evaluation--8aa9bd12d506bebbd13361f7.md) | 250 | `result-track:8aa9bd12d506bebbd13361f7576446d759cf0d6dcf2d06cadbc21ea34e970429` |
| 44 | `theorem` | [evaluation_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/evaluation-coevaluation--03e2863165891afff3bb3a1d.md) | 258 | `result-track:03e2863165891afff3bb3a1def171c08e6ec87412601f185f92f4b04818b542f` |
| 45 | `instance` | [exactPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/exactpairing--13d3670aa38d7d15802f898b.md) | 267 | `declaration-track:13d3670aa38d7d15802f898ba7d9a72f6a52dbd9b1c8a5a3c06f99ab796f276b` |
| 46 | `instance` | [rightDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/rightdual--87e29b7d0f261b38c4311637.md) | 273 | `declaration-track:87e29b7d0f261b38c4311637bc78938e2f33f64e650604dee900690aeb9848ed` |
| 47 | `instance` | [rightRigidCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/rightrigidcategory--28a5df1911f3a90e0e98c2e1.md) | 276 | `declaration-track:28a5df1911f3a90e0e98c2e109bf96cecdc8bfb781d4808e61c1e8d102ac6795` |
| 48 | `theorem` | [LinearMap.comp_id_fgModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/linearmap-comp-id-fgmodulecat--bc67eddab672550e8652190c.md) | 287 | `result-track:bc67eddab672550e8652190cc222af3c6ad26a2fa223888cebf35df0d227f605` |
| 49 | `theorem` | [LinearMap.id_fgModuleCat_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50eba9761780b81c641176d4558e08d2c00490ea967f426001440ff43bafd725.lean/declarations/linearmap-id-fgmodulecat-comp--a9cc3e82d4bb042939be534a.md) | 293 | `result-track:a9cc3e82d4bb042939be534a0c2a4823c130702a8c9316bf409f26563f99823a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
