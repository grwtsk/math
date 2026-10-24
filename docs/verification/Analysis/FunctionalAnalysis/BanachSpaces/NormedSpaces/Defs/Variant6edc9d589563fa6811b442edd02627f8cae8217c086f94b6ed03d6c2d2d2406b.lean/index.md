# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Defs.Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eec49103cdec8913800bacb5811fca133111b0d5",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eec49103cdec8913800bacb5811fca133111b0d5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CStarModule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/cstarmodule--3d35245e0b165f02100c272b.md) | 63 | `declaration-track:3d35245e0b165f02100c272b8409895e2dc5d3cf0a8dfc88c4b133aae483974a` |
| 2 | `lemma` | [inner_add_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-add-left--23fadcba465187b47b78f59e.md) | 87 | `result-track:23fadcba465187b47b78f59e87646c95ac3e7bf87ac87466ad2eb33465c540d6` |
| 3 | `lemma` | [inner_op_smul_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-op-smul-left--385fcb76c6de46bb5ff412ce.md) | 92 | `result-track:385fcb76c6de46bb5ff412ce262f90c7f696b2434888eadd32f6ca49844f3793` |
| 4 | `lemma` | [inner_smul_left_complex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-smul-left-complex--644dfbea7fc4caa63332ae14.md) | 100 | `result-track:644dfbea7fc4caa63332ae14789504954778a3314a8958a5438a164013f8a6d3` |
| 5 | `lemma` | [inner_smul_left_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-smul-left-real--6074efe55d338dcd71849f4b.md) | 105 | `result-track:6074efe55d338dcd71849f4b04f8306252cc24242eb40f4d2732d64b7a8e0c0b` |
| 6 | `lemma` | [inner_smul_right_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-smul-right-real--139bfa444f29890cb10322fd.md) | 111 | `result-track:139bfa444f29890cb10322fd5d9dba4beab0cbf913584087aa3639df65b9c479` |
| 7 | `def` | [innerₛₗ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner--a5963c318497d8bb09a7f10f.md) | 117 | `declaration-track:a5963c318497d8bb09a7f10fb8801f30c8b90a1ff14c58f0345648d4c0ead74e` |
| 8 | `lemma` | [innerₛₗ_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-apply--ad442c9ea1baf782eb7215ee.md) | 124 | `result-track:ad442c9ea1baf782eb7215eee5bd4c005a4b7176020e2f7b1ed062d1a2aab585` |
| 9 | `lemma` | [inner_zero_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-zero-right--51469794a8df3a275c0ffe15.md) | 126 | `result-track:51469794a8df3a275c0ffe15e741e3d4e9d7c335f61f9188401aba4de9189f15` |
| 10 | `lemma` | [inner_zero_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-zero-left--0dfe84bc021618c2b93e61eb.md) | 127 | `result-track:0dfe84bc021618c2b93e61eb6830dd6cc5ac03b9a8b1b325e59f7805498b2880` |
| 11 | `lemma` | [inner_neg_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-neg-right--1fde322701117d1ae12d3f0d.md) | 128 | `result-track:1fde322701117d1ae12d3f0de8699ae6adbed9a1c76c3431356bfea5c80eb8ad` |
| 12 | `lemma` | [inner_neg_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-neg-left--63948be05965e0c74eb72c27.md) | 129 | `result-track:63948be05965e0c74eb72c27f3367f8aeab29232cc9ea5d09701f5b81996c08e` |
| 13 | `lemma` | [inner_sub_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-sub-right--cb5e29bfcc3e15e6c215cc54.md) | 130 | `result-track:cb5e29bfcc3e15e6c215cc5433f84057a1a9845b7ed9317a60455d7ddcf0ddcc` |
| 14 | `lemma` | [inner_sub_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-sub-left--d48e4bf01261ed6b8f727cda.md) | 132 | `result-track:d48e4bf01261ed6b8f727cda7a2661b340e39324bf51e54ed41be42f0cb39df7` |
| 15 | `lemma` | [inner_sum_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-sum-right--4d4c391bc42a74dd828d04c3.md) | 136 | `result-track:4d4c391bc42a74dd828d04c3035827fe1e0daef8e1c17ac1618634003c421e19` |
| 16 | `lemma` | [inner_sum_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-sum-left--a7ce9aad5e2563deae1058af.md) | 141 | `result-track:a7ce9aad5e2563deae1058afdf0b80e4f63071c1f1c6d4cce78360619ed7dae2` |
| 17 | `lemma` | [isSelfAdjoint_inner_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/isselfadjoint-inner-self--17ea5991e1180828002bbe04.md) | 148 | `result-track:17ea5991e1180828002bbe0459652fbf24a780fc898e283e0b6cfe18149a59a0` |
| 18 | `def` | [norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm--ce4fdcfa39796ce6d689dced.md) | 162 | `declaration-track:ce4fdcfa39796ce6d689dced32d43b5d22d2664449ae31061dec5d582be2b9a6` |
| 19 | `lemma` | [norm_sq_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-sq-eq--23baaf3bed1ea67bbee4521b.md) | 170 | `result-track:23baaf3bed1ea67bbee4521b4bed0993c6566ba230c7376a184293fc65ab4483` |
| 20 | `lemma` | [norm_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-nonneg--c1b4db6f247f4e40e46de33e.md) | 172 | `result-track:c1b4db6f247f4e40e46de33e75701513b147e98aad4611ceacac173cb1159d5a` |
| 21 | `lemma` | [norm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-pos--065894ef7ed708641d7947cf.md) | 174 | `result-track:065894ef7ed708641d7947cf4690163b555170b1c29a7f840b41f80b869c2d12` |
| 22 | `lemma` | [norm_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-zero--7c370de42e2f677a4d7d710f.md) | 180 | `result-track:7c370de42e2f677a4d7d710f709044a58fc5c41b6e9a1d8caac4d309e3b1f3e1` |
| 23 | `lemma` | [norm_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-zero-iff--f5186c28a6eff0288ef567c9.md) | 182 | `result-track:f5186c28a6eff0288ef567c9a75e63b53b9ff6583cff207908cf11b2b8b09479` |
| 24 | `lemma` | [inner_mul_inner_swap_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/inner-mul-inner-swap-le--a47762982dd0af17f4ceb60b.md) | 192 | `result-track:a47762982dd0af17f4ceb60b8d2517b41256472261722aaf66db3705ff937cc7` |
| 25 | `lemma` | [norm_inner_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-inner-le--ec74fc523aec4a69f8d4b4ce.md) | 221 | `result-track:ec74fc523aec4a69f8d4b4cea4428942b2b3bdb093a7c3ed725ae191b2b272bd` |
| 26 | `lemma` | [norm_triangle](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-triangle--f86bc9bfe7e8d399d2914efd.md) | 237 | `result-track:f86bc9bfe7e8d399d2914efdd2d0132fc029ba88a5cc5aff17bc58e70b36207d` |
| 27 | `lemma` | [normedSpaceCore](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/normedspacecore--7b9130856738c8c37c82ab36.md) | 255 | `result-track:7b9130856738c8c37c82ab36ba25e26a2de4d834319cbe3ccf6866ccbd85b13c` |
| 28 | `abbrev` | [normedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/normedaddcommgroup--b995b1bd13ca845273c95a41.md) | 264 | `declaration-track:b995b1bd13ca845273c95a41941003b6d99043b2fc7674f88fa4d8a39ca9f32c` |
| 29 | `lemma` | [norm_eq_csSup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/norm-eq-cssup--c8dd3902a0b30b83c9414ea9.md) | 268 | `result-track:c8dd3902a0b30b83c9414ea93d7fcd87bbd0cb4881ca312c962353be46734de8` |
| 30 | `def` | [innerSL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/innersl--10419a4161ac7aa50a9d675f.md) | 294 | `declaration-track:10419a4161ac7aa50a9d675fe1cb8544b41c62318b9bd9b7d6cd136beb8b6bff` |
| 31 | `lemma` | [innerSL_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/innersl-apply--b0fe3fe8d67d6b60c7e05477.md) | 298 | `result-track:b0fe3fe8d67d6b60c7e05477d5bd6b88a69e3a7d7aceac995d913d087c57974b` |
| 32 | `lemma` | [continuous_inner](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/declarations/continuous-inner--6cb55599781e7126a018f394.md) | 301 | `result-track:6cb55599781e7126a018f394fbdcb993513adc2144cc52b0249ea94e5126bcb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
