# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TwoVariable.Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.PoissonSummation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-term--8d5f498d926c30ef46b63f09.md) | 49 | `declaration-track:8d5f498d926c30ef46b63f096b01294a066ad49ada907524bb8fda94f9a90155` |
| 2 | `def` | [jacobiTheta₂_term_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-term-fderiv--776eeef6f8ff8cb6f43bb683.md) | 52 | `declaration-track:776eeef6f8ff8cb6f43bb6839f55ed2627adc0dd409c66bf055f1cbbe664578b` |
| 3 | `lemma` | [hasFDerivAt_jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/hasfderivat-jacobitheta-term--e855f75b2e4c3c82189cc6df.md) | 57 | `result-track:e855f75b2e4c3c82189cc6dfd2f5e8be8b545e3943438cb5b71c1d8a2d8216db` |
| 4 | `def` | [jacobiTheta₂'_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-term--fcbc071673edee18c3c9096e.md) | 66 | `declaration-track:fcbc071673edee18c3c9096e7922b87cf74173734b2d0c76f1805830ffece6d1` |
| 5 | `lemma` | [norm_jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/norm-jacobitheta-term--79b86bfd2387bbd5a839f6e6.md) | 79 | `result-track:79b86bfd2387bbd5a839f6e6620ecbf2f5402f6a22781b442a059a1be512bc0a` |
| 6 | `lemma` | [norm_jacobiTheta₂_term_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/norm-jacobitheta-term-le--dd2171c1811e55c706aa4dfe.md) | 87 | `result-track:dd2171c1811e55c706aa4dfed5ce576bb4f94ed7839a197565409b55f80b033b` |
| 7 | `lemma` | [norm_jacobiTheta₂'_term_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/norm-jacobitheta-term-le--9221a79211f312365d01f810.md) | 100 | `result-track:9221a79211f312365d01f810242ea4e6f92e4af5e42a460027af54b556035cc1` |
| 8 | `lemma` | [summable_pow_mul_jacobiTheta₂_term_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/summable-pow-mul-jacobitheta-term-bound--a5b04f070689640a95875d27.md) | 111 | `result-track:a5b04f070689640a95875d2760dfd2bc950584409dcfc9d58b479d3a1e096092` |
| 9 | `lemma` | [summable_jacobiTheta₂_term_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/summable-jacobitheta-term-iff--406ee709cf7536601a04cf5f.md) | 127 | `result-track:406ee709cf7536601a04cf5ff40ea12cf5c8670a5056c27f88548cfbc7bc388b` |
| 10 | `lemma` | [norm_jacobiTheta₂_term_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/norm-jacobitheta-term-fderiv-le--016d980ade77b44d11d93ae7.md) | 166 | `result-track:016d980ade77b44d11d93ae72165658baa54980be3758a1cf6cf18dd4868da4f` |
| 11 | `lemma` | [norm_jacobiTheta₂_term_fderiv_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/norm-jacobitheta-term-fderiv-ge--81b6b7a6d4fde9e8d90ffeaf.md) | 186 | `result-track:81b6b7a6d4fde9e8d90ffeafbe7c2de64eaf8f41b82ddd9b64e001cfb4287b1d` |
| 12 | `lemma` | [summable_jacobiTheta₂_term_fderiv_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/summable-jacobitheta-term-fderiv-iff--80ed4238e634c0e0123ab673.md) | 200 | `result-track:80ed4238e634c0e0123ab673bba9554076c11123f569c0717322ec62c22d8683` |
| 13 | `lemma` | [summable_jacobiTheta₂'_term_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/summable-jacobitheta-term-iff--f042a2d395d8235d4d13f331.md) | 226 | `result-track:f042a2d395d8235d4d13f331df71f2ec9a18cf5effd803ecfc157dcd7a918bb4` |
| 14 | `def` | [jacobiTheta₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta--e822def7a8205d0b8d006cf3.md) | 259 | `declaration-track:e822def7a8205d0b8d006cf3e284b69e0b536cee245accd2d7c3d324eb42d462` |
| 15 | `def` | [jacobiTheta₂_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-fderiv--93cbfd7fb873552a5a538a53.md) | 262 | `declaration-track:93cbfd7fb873552a5a538a5311e2657983c246761df2b3018b1c401ed8fead8b` |
| 16 | `def` | [jacobiTheta₂'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta--3c50600df8634918aef46b59.md) | 267 | `declaration-track:3c50600df8634918aef46b594199d41338fbe6b773b12b513559c0a9f9124337` |
| 17 | `lemma` | [hasSum_jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/hassum-jacobitheta-term--3f541e49a23a99cf017b3458.md) | 269 | `result-track:3f541e49a23a99cf017b34589617a63d9780ff16bec495aa397b031abdfccd2e` |
| 18 | `lemma` | [hasSum_jacobiTheta₂_term_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/hassum-jacobitheta-term-fderiv--08e84fa4833824f7bc3954cc.md) | 273 | `result-track:08e84fa4833824f7bc3954cc2e33e6002ebf5dc4f1613cebf240e1276377c20b` |
| 19 | `lemma` | [hasSum_jacobiTheta₂'_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/hassum-jacobitheta-term--bdc18d2b7faef73d8137fe05.md) | 277 | `result-track:bdc18d2b7faef73d8137fe058b09a1e3ee90efcbc7794299318887cb3158f2a5` |
| 20 | `lemma` | [jacobiTheta₂_undef](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-undef--4ea64fe4e7aca04d22388bab.md) | 281 | `result-track:4ea64fe4e7aca04d22388bab35d847db0217d9158eefdc7240a83aabda524fcf` |
| 21 | `lemma` | [jacobiTheta₂_fderiv_undef](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-fderiv-undef--f5657e882d013191771c4add.md) | 286 | `result-track:f5657e882d013191771c4adda8344f16e60b05440f4661011392175d2448ce0d` |
| 22 | `lemma` | [jacobiTheta₂'_undef](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-undef--f7f151afaa1aec82959088f5.md) | 291 | `result-track:f7f151afaa1aec82959088f5df37c36baf1ed2e125f97d44c1eb19a13ec34333` |
| 23 | `lemma` | [hasFDerivAt_jacobiTheta₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/hasfderivat-jacobitheta--b5de39bd2e4b8efbcfcdd5d5.md) | 300 | `result-track:b5de39bd2e4b8efbcfcdd5d57d9e934882a033e0d446309ecb7f1d34c4d90b24` |
| 24 | `lemma` | [continuousAt_jacobiTheta₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/continuousat-jacobitheta--8c3353aee53cd5a299cfc39b.md) | 330 | `result-track:8c3353aee53cd5a299cfc39b9743d433888a4cb344ceb4cd3384560892aa742c` |
| 25 | `lemma` | [differentiableAt_jacobiTheta₂_fst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/differentiableat-jacobitheta-fst--248911a0f22640599240201a.md) | 335 | `result-track:248911a0f22640599240201a8f87d115a21074cd762b0c1f10e29b7b3044b8d7` |
| 26 | `lemma` | [differentiableAt_jacobiTheta₂_snd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/differentiableat-jacobitheta-snd--bfdc74dd6d4cb683424f92b3.md) | 340 | `result-track:bfdc74dd6d4cb683424f92b3a7c69fbb1613d1e3ccf118ebf0b08d5336b4c7d9` |
| 27 | `lemma` | [hasDerivAt_jacobiTheta₂_fst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/hasderivat-jacobitheta-fst--873e8b98a963b471e2251d14.md) | 344 | `result-track:873e8b98a963b471e2251d14897fe112afcf1f74ceb82c44f04dda877f5ef0ef` |
| 28 | `lemma` | [continuousAt_jacobiTheta₂'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/continuousat-jacobitheta--619c7f0b42d19323609feac7.md) | 369 | `result-track:619c7f0b42d19323609feac7619139ae49d21dc67e13c9947148d1d95e225d50` |
| 29 | `lemma` | [jacobiTheta₂_add_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-add-right--60f9ae24fddcbb941609bffa.md) | 391 | `result-track:60f9ae24fddcbb941609bffa24e4d2da714591e2dbe346eaf27038d7c66d06c4` |
| 30 | `lemma` | [jacobiTheta₂_add_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-add-left--5a7a2e21fab78b771e287002.md) | 399 | `result-track:5a7a2e21fab78b771e287002695af3979ef344998d54ee4e78d5be5b652f7b46` |
| 31 | `lemma` | [jacobiTheta₂_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-add-left--c4a1aecf20cead56871b2a1e.md) | 405 | `result-track:c4a1aecf20cead56871b2a1ecdf1cb8a65bf6823b8625ddb5a15ea1ce9f753fc` |
| 32 | `lemma` | [jacobiTheta₂_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-neg-left--93d91101359760fbd5ecbb1f.md) | 414 | `result-track:93d91101359760fbd5ecbb1f99bb7c591373bac934843fe62e154edfcd4f2e2b` |
| 33 | `lemma` | [jacobiTheta₂_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-conj--81c96441fa61d0065329564b.md) | 419 | `result-track:81c96441fa61d0065329564b6b8cc0bf9214ff629cc3403c706697a91575e303` |
| 34 | `lemma` | [jacobiTheta₂'_add_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-add-right--bda95f0097af3453d07c0fcf.md) | 426 | `result-track:bda95f0097af3453d07c0fcfb6dc94a3548aa2aac5faa5fc3411acac8f154921` |
| 35 | `lemma` | [jacobiTheta₂'_add_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-add-left--95761ca554f06f82e22ea3f6.md) | 433 | `result-track:95761ca554f06f82e22ea3f690dba05bb07d45778f823e6e3787808bd94437ca` |
| 36 | `lemma` | [jacobiTheta₂'_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-add-left--306add229a461b81f8526b30.md) | 439 | `result-track:306add229a461b81f8526b3001710ddde14a5fbb154448e01fa16cf5fe4677c9` |
| 37 | `lemma` | [jacobiTheta₂'_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-neg-left--062041e8d9c9979180d29fc8.md) | 457 | `result-track:062041e8d9c9979180d29fc8479e2204d99f7c0844e67b84b6459e72f8e5f44e` |
| 38 | `lemma` | [jacobiTheta₂'_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-conj--f8a360c90c9a3daeeb46a762.md) | 465 | `result-track:f8a360c90c9a3daeeb46a762a2cce248aa2e62207d5b3c82665c9864e2a7556f` |
| 39 | `theorem` | [jacobiTheta₂_functional_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-functional-equation--3b0edd3738bda6ef12a88f58.md) | 480 | `result-track:3b0edd3738bda6ef12a88f5823fdce84139d17d9d60870ff1e74db91a73b4d50` |
| 40 | `theorem` | [jacobiTheta₂'_functional_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/declarations/jacobitheta-functional-equation--ade09b61c046065fa5aca1c1.md) | 511 | `result-track:ade09b61c046065fa5aca1c1a89f824efdd83c0acbe5d368c2cc83ca06adf30c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
