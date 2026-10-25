# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1d7fbc015a569f641ae7d972e12c931da1687ae",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1d7fbc015a569f641ae7d972e12c931da1687ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean.json)

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
| 1 | `def` | [optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optioncongr--11f14c267d9bf21b8bf7987b.md) | 46 | `declaration-track:11f14c267d9bf21b8bf7987bfb8ac14a9f080bd6211581c7e342fd00fc5a57a5` |
| 2 | `theorem` | [optionCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optioncongr-refl--05ff75f9a760a07104a30fd4.md) | 53 | `result-track:05ff75f9a760a07104a30fd41ecab5f75c55f29635f186645db661632fb31923` |
| 3 | `theorem` | [optionCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optioncongr-symm--199e41a217415e7c15f09be3.md) | 57 | `result-track:199e41a217415e7c15f09be3abd8affc270ee2bb8ddb70d648d4f418d2f9674c` |
| 4 | `theorem` | [optionCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optioncongr-trans--1477174728b8273114a3acc4.md) | 61 | `result-track:1477174728b8273114a3acc4a037234cd79ee063ab25d7f3c0d82bd4ce0a261c` |
| 5 | `theorem` | [optionCongr_eq_equivFunctor_mapEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optioncongr-eq-equivfunctor-mapequiv--21ca22c9a1bd8056b4bd9c09.md) | 69 | `result-track:21ca22c9a1bd8056b4bd9c09ec6a5a1b43e2fd706f5878aca495754945146a9b` |
| 6 | `def` | [removeNoneAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenoneaux--a556bab6d9c2228b7fba099b.md) | 82 | `declaration-track:a556bab6d9c2228b7fba099bd4acb9f6accf186d286a7cd1338a024cee773e71` |
| 7 | `theorem` | [removeNoneAux_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenoneaux-some--d517ed810abb7520d06a7401.md) | 92 | `result-track:d517ed810abb7520d06a7401f7301fd3def2db08e23e0fd3a38e9a79ac68aded` |
| 8 | `theorem` | [removeNoneAux_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenoneaux-none--d60d864a6e49127927ed37e6.md) | 96 | `result-track:d60d864a6e49127927ed37e656740b0d4af2bf95a2f9d3dcaf717b8e0daeccf4` |
| 9 | `theorem` | [removeNoneAux_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenoneaux-inv--bcba3afd72e42d4489cc573d.md) | 101 | `result-track:bcba3afd72e42d4489cc573d3ed9f273c732fa55e55c8fdd1b87254da52f38d1` |
| 10 | `def` | [removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenone--4bf79b583a859019b535a931.md) | 122 | `declaration-track:4bf79b583a859019b535a93109d13b91ae321c1b30f0b22151e20e19933e4527` |
| 11 | `theorem` | [removeNone_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenone-symm--d7490947120643d7310d3268.md) | 129 | `result-track:d7490947120643d7310d326864719ff7939ed3d72e6cf1c621ee4f2210027f92` |
| 12 | `theorem` | [removeNone_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenone-some--b5644d101160364df2554e9b.md) | 132 | `result-track:b5644d101160364df2554e9b882574996683cb4d0219141366250120c8bb33c3` |
| 13 | `theorem` | [removeNone_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenone-none--a876e0f891147ffda896e917.md) | 136 | `result-track:a876e0f891147ffda896e917ba55c91ba499556431d37c523796d76575f71ba4` |
| 14 | `theorem` | [option_symm_apply_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/option-symm-apply-none-iff--fce8e696870f40e7c3529d4b.md) | 140 | `result-track:fce8e696870f40e7c3529d4be03c8b43d445d474e6d9b41eea0a6e07f1ee5475` |
| 15 | `theorem` | [some_removeNone_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/some-removenone-iff--3af2fbb49d29f24f6ec52dbb.md) | 143 | `result-track:3af2fbb49d29f24f6ec52dbb6f30bb9bb8c62a07a8c87967650f3e81ed17cfe3` |
| 16 | `theorem` | [removeNone_optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/removenone-optioncongr--95d836d6445c2b7dd69f6d95.md) | 154 | `result-track:95d836d6445c2b7dd69f6d95b49c43cea4105ca40d8ef6e066909a88b796b449` |
| 17 | `theorem` | [optionCongr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optioncongr-injective--9991f9ae9e02c1f32febda1e.md) | 159 | `result-track:9991f9ae9e02c1f32febda1e4d6ac8bd9889507b6a63023967a4d606eb9aeb51` |
| 18 | `def` | [optionSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtype--99ddbd155cfb9cdec9dd1751.md) | 164 | `declaration-track:99ddbd155cfb9cdec9dd175198fd4f5094cdc520b2b51671486b97c3b8a251a8` |
| 19 | `theorem` | [optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtype-apply-apply--b06855b9b1513af33ab715e9.md) | 203 | `result-track:b06855b9b1513af33ab715e9e779fb9ad5702283f5ba750726187042be0cb4ae` |
| 20 | `theorem` | [coe_optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/coe-optionsubtype-apply-apply--8112438293cae45a24c414e4.md) | 210 | `result-track:8112438293cae45a24c414e4f24e13ef0447515357b230fa02f96c895047415d` |
| 21 | `theorem` | [optionSubtype_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtype-apply-symm-apply--2caac892346d92c84f4890f4.md) | 216 | `result-track:2caac892346d92c84f4890f405715efa238f2b531d2d107928215c1f4dd3036a` |
| 22 | `theorem` | [optionSubtype_symm_apply_apply_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtype-symm-apply-apply-coe--9be617cd358098a2980500f3.md) | 224 | `result-track:9be617cd358098a2980500f3258438a71b56c55d6b837da5fdd36c8fcae82f4d` |
| 23 | `theorem` | [optionSubtype_symm_apply_apply_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtype-symm-apply-apply-some--85df710c105bcde343911e94.md) | 229 | `result-track:85df710c105bcde343911e94e09b278c15b97889d38ba54a1a19c587f995ba27` |
| 24 | `theorem` | [optionSubtype_symm_apply_apply_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtype-symm-apply-apply-none--0a2b23e0322b70339b5c1209.md) | 237 | `result-track:0a2b23e0322b70339b5c1209df166290b187466c567954a7be80719e174d7ab8` |
| 25 | `theorem` | [optionSubtype_symm_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtype-symm-apply-symm-apply--60d0e2f457e50ce54344fbb1.md) | 244 | `result-track:60d0e2f457e50ce54344fbb1a5e8c6fb13b1b87b79edabe0696b06d7544a383f` |
| 26 | `def` | [optionSubtypeNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtypene--3dafbb4e41ef0664b1f4a0ae.md) | 253 | `declaration-track:3dafbb4e41ef0664b1f4a0ae436f29b7b83e1113a52fe2f15f4abaf690e93c3d` |
| 27 | `lemma` | [optionSubtypeNe_symm_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtypene-symm-self--521ddcc5e45abade25b30db0.md) | 255 | `result-track:521ddcc5e45abade25b30db0b943864b8ded9b3b5560c67f0c35dd4c8fed45e2` |
| 28 | `lemma` | [optionSubtypeNe_symm_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtypene-symm-of-ne--3b8414a67b6e345af1dd02de.md) | 256 | `result-track:3b8414a67b6e345af1dd02de717b7bae7d1c36cacff427aec9f31e516b265398` |
| 29 | `lemma` | [optionSubtypeNe_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtypene-none--fbc144b88081e89e900add6c.md) | 259 | `result-track:fbc144b88081e89e900add6cdbd3b12b1e48b1b6476a9b92ce7e6a8a5ef52544` |
| 30 | `lemma` | [optionSubtypeNe_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionsubtypene-some--8c7bff319d1d2cba77dde78a.md) | 260 | `result-track:8c7bff319d1d2cba77dde78ad5e744974d6330a1856081b40d5ea08c00906fa9` |
| 31 | `def` | [optionEquivSumPUnit.](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionequivsumpunit--140eaee2a08bad5005709644.md) | 265 | `declaration-track:140eaee2a08bad500570964497ac5f1f6bbb6ab42d19221eb3a3015b115e5df5` |
| 32 | `theorem` | [optionEquivSumPUnit_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionequivsumpunit-none--1fffb42a188132779c11b277.md) | 271 | `result-track:1fffb42a188132779c11b277e92694e67cb6318b3263546fdfe28a262e17e987` |
| 33 | `theorem` | [optionEquivSumPUnit_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionequivsumpunit-some--c643bf933b64ae1e611bc717.md) | 275 | `result-track:c643bf933b64ae1e611bc71749b30198cb78279b0edc68a46cec145a05eb4d71` |
| 34 | `theorem` | [optionEquivSumPUnit_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionequivsumpunit-coe--31ac3c1aac2472b95fb55464.md) | 279 | `result-track:31ac3c1aac2472b95fb55464e372039719895e0dacb1e397d272534211c45670` |
| 35 | `theorem` | [optionEquivSumPUnit_symm_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionequivsumpunit-symm-inl--6d2c6c668ff23d8ff323bdd1.md) | 283 | `result-track:6d2c6c668ff23d8ff323bdd1fc08aa0dd8d3d133791c6d9d8e2689931acf3365` |
| 36 | `theorem` | [optionEquivSumPUnit_symm_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionequivsumpunit-symm-inr--5b68f397219d82548f4b6dbb.md) | 287 | `result-track:5b68f397219d82548f4b6dbb82420553b86df039bb7f8770d7549017c17ecada` |
| 37 | `def` | [optionIsSomeEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/optionissomeequiv--4a7fa0aa6c10a555dca46d45.md) | 292 | `declaration-track:4a7fa0aa6c10a555dca46d4553bc41711af8ad9e90680a86ca05602bf289300c` |
| 38 | `abbrev` | [subtypeNeSumPUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean/declarations/subtypenesumpunit--013533826807309d16e4c760.md) | 299 | `declaration-track:013533826807309d16e4c760f8890c67275dfa2341bc2906de351094e8775bd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
