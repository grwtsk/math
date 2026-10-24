# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Basic.Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d0781698b9f88d3b512423527c75ee40aab2383",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d0781698b9f88d3b512423527c75ee40aab2383`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term--d372cd8d3f56dec7a28877b1.md) | 79 | `declaration-track:d372cd8d3f56dec7a28877b1eed28ea2c129fd8bf64886b4bf4c8aed7fcb0b97` |
| 2 | `lemma` | [term_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-def--8595414d2e686308a9df0eb9.md) | 82 | `result-track:8595414d2e686308a9df0eb97623eee3ffac8ba9bd49ddb69933eb3b11f2f950` |
| 3 | `lemma` | [term_def₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-def--3563ac5da4b8800c9b7fc0b1.md) | 87 | `result-track:3563ac5da4b8800c9b7fc0b17edb2f76908e26213bf98b430698e8fe58b8b54a` |
| 4 | `lemma` | [term_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-zero--92c86ea6a3f6df81bb4eb364.md) | 93 | `result-track:92c86ea6a3f6df81bb4eb364edc907e6f2e5653e7331a561ac6102281eb2fa43` |
| 5 | `lemma` | [term_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-of-ne-zero--0d185065daa25b8979215f49.md) | 97 | `result-track:0d185065daa25b8979215f4942c2882c8293780ed17a54e869c4f6708c0864c8` |
| 6 | `lemma` | [term_of_ne_zero'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-of-ne-zero--d230cf8242fcc7be4826bb94.md) | 105 | `result-track:d230cf8242fcc7be4826bb947fdd05f89e0ef7d2cef7464ee913e738b8ff2c40` |
| 7 | `lemma` | [term_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-congr--76dac555ee21feb2a6ae2d6e.md) | 111 | `result-track:76dac555ee21feb2a6ae2d6e927db6a2a714f4b21178ae923c945a1f5b22d501` |
| 8 | `lemma` | [pow_mul_term_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/pow-mul-term-eq--6ba13866a2aab67a1dfd3603.md) | 115 | `result-track:6ba13866a2aab67a1dfd3603db08cb5f2506edcaf510cd22c06fb1051203a9f8` |
| 9 | `lemma` | [norm_term_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/norm-term-eq--9847166944b35b41de114eab.md) | 119 | `result-track:9847166944b35b41de114eabe202b1a8df5f3b9ca404b5e1d5d638e67bf13fa6` |
| 10 | `lemma` | [norm_term_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/norm-term-le--f83f4ec8d3ec013a39308648.md) | 125 | `result-track:f83f4ec8d3ec013a3930864878d08709a26bf6c6f349ad14f84215bdc03f1d12` |
| 11 | `lemma` | [norm_term_le_of_re_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/norm-term-le-of-re-le-re--06588320b12adbf681d13e52.md) | 132 | `result-track:06588320b12adbf681d13e525387d18997962ba3a13fea8576c257ab3186e4a6` |
| 12 | `lemma` | [term_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-nonneg--19b7272755ec3d19389e0965.md) | 143 | `result-track:19b7272755ec3d19389e0965328d07a807dac6155c8a9e09a21701c4a4f31aeb` |
| 13 | `lemma` | [term_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-pos--32613a288448c822f9c7c95f.md) | 148 | `result-track:32613a288448c822f9c7c95f330e1c9d445302df6f9921e3a95a8b8dd2909c4c` |
| 14 | `def` | [LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseries--63b535d54e95304ddbf8a583.md) | 169 | `declaration-track:63b535d54e95304ddbf8a583334ee2b266eea41232b0ccd594c38da6eb6f3f12` |
| 15 | `lemma` | [LSeries_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseries-congr--bdb3490e429c9d68634ad17b.md) | 173 | `result-track:bdb3490e429c9d68634ad17b2942f254fecd20ec12532ee6e1ae843e2b75c696` |
| 16 | `def` | [LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable--c2b3bda5d5162f6fb4632ab5.md) | 178 | `declaration-track:c2b3bda5d5162f6fb4632ab599fa411e9beb5f4d53ad580316b820676ce033f2` |
| 17 | `lemma` | [LSeriesSummable_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-congr--c46dac51bf4288ac45a0945a.md) | 181 | `result-track:c46dac51bf4288ac45a0945a891561f299a6e42d1a3459ef76d652e1e38f905e` |
| 18 | `lemma` | [LSeriesSummable.congr'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-congr--9d9de872dd4bcaad18a0fc7f.md) | 188 | `result-track:9d9de872dd4bcaad18a0fc7fbc568ae3e393b3bb5cce63a9432806e6b7d7df18` |
| 19 | `lemma` | [LSeriesSummable_congr'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-congr--054e2c7475229077326a5258.md) | 203 | `result-track:054e2c7475229077326a5258607791c0e2ad9e4fd8c388a761e36d89007daa11` |
| 20 | `theorem` | [LSeries.eq_zero_of_not_LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseries-eq-zero-of-not-lseriessummable--5131991001836177239bd2d2.md) | 207 | `result-track:5131991001836177239bd2d261e4adeb4b38c6358ee7bb5e8e54e63ada88f408` |
| 21 | `theorem` | [LSeriesSummable_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-zero--6ae5581b6c9586073dd40a1c.md) | 212 | `result-track:6ae5581b6c9586073dd40a1c8e7c0747aa5cdcebf764a4ee90bd826619587c56` |
| 22 | `def` | [LSeriesHasSum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lserieshassum--5e5efc07b4a937500ea4181e.md) | 217 | `declaration-track:5e5efc07b4a937500ea4181e7d48ac35a18730051c8d58406782a7cd60a46de3` |
| 23 | `lemma` | [LSeriesHasSum.LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lserieshassum-lseriessummable--fa3e6626234b6c42c86565e3.md) | 220 | `result-track:fa3e6626234b6c42c86565e3943fa253bcbd259722cc69922415a0beff30c51c` |
| 24 | `lemma` | [LSeriesHasSum.LSeries_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lserieshassum-lseries-eq--e4c5fc40daf039400805d2b8.md) | 224 | `result-track:e4c5fc40daf039400805d2b89dece74382673334a29f884ee2bca4c9b3fef19a` |
| 25 | `lemma` | [LSeriesSummable.LSeriesHasSum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-lserieshassum--62fca1ea4b2eef6c70f13922.md) | 228 | `result-track:62fca1ea4b2eef6c70f13922dfe2af4d24de1eb47318c7aa8b1770836b0fdc04` |
| 26 | `lemma` | [LSeriesHasSum_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lserieshassum-iff--674567d2a2377f3606c172a2.md) | 232 | `result-track:674567d2a2377f3606c172a2367b4f8dd8a324257560ae6b22480c086d76fe63` |
| 27 | `lemma` | [LSeriesHasSum_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lserieshassum-congr--594c58968d91090570f86e2e.md) | 236 | `result-track:594c58968d91090570f86e2e7f5b8644a8b3a1369494ad571b5c952e14028a01` |
| 28 | `lemma` | [LSeriesSummable.of_re_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-of-re-le-re--94b5bd15aaf662e211ed59e0.md) | 240 | `result-track:94b5bd15aaf662e211ed59e0d18f88add50d83d850e4c6b0f27c12e7633ddf09` |
| 29 | `theorem` | [LSeriesSummable_iff_of_re_eq_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-iff-of-re-eq-re--7cadd33f9c2e51cff33b3b46.md) | 245 | `result-track:7cadd33f9c2e51cff33b3b469fbb455880eddb1804b97b0192bae9d69e7779dd` |
| 30 | `def` | [LSeries.delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseries-delta--eeb293d0a57faf57adef859a.md) | 250 | `declaration-track:eeb293d0a57faf57adef859ab5e3e51e78b68eb919bd58d78049fc4c5f1c05e7` |
| 31 | `lemma` | [LSeries_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseries-zero--13a0eeffc782b8bbe17fb7cb.md) | 275 | `result-track:13a0eeffc782b8bbe17fb7cbf6ec082fc5d7ebe0cb8fb1f9f92faa94592cab28` |
| 32 | `lemma` | [term_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/term-delta--39ec459ba5d782768ec793eb.md) | 287 | `result-track:39ec459ba5d782768ec793eb1dbe7231400b413f859bf99a401cf6ce173710aa` |
| 33 | `lemma` | [mul_delta_eq_smul_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/mul-delta-eq-smul-delta--914f2624d09d22b870ca7573.md) | 293 | `result-track:914f2624d09d22b870ca7573f6083e55b542dabc217a7e83806b1c11eb1fdd7e` |
| 34 | `lemma` | [mul_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/mul-delta--063f57a912329eb7533ea252.md) | 298 | `result-track:063f57a912329eb7533ea2527305b9a4199992655acf449932c5470f24c9c3ea` |
| 35 | `lemma` | [delta_mul_eq_smul_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/delta-mul-eq-smul-delta--95c51311b5c3aabfd20f4ccf.md) | 301 | `result-track:95c51311b5c3aabfd20f4ccf2a1f27729a30a798b259e011cd3d392cc9f16166` |
| 36 | `lemma` | [delta_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/delta-mul--5d2f736699606eed324e3103.md) | 304 | `result-track:5d2f736699606eed324e31034af3346c78fc7974aa978333e97d5ea4a9527cc5` |
| 37 | `lemma` | [LSeries_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseries-delta--3135cbe2af37bc48cfae7733.md) | 310 | `result-track:3135cbe2af37bc48cfae7733a3672f8926e16e0748dca49e91c4481e77e876f0` |
| 38 | `lemma` | [LSeriesSummable.le_const_mul_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-le-const-mul-rpow--91227676c707ea069ca98bf9.md) | 325 | `result-track:91227676c707ea069ca98bf945e71549f5d228fe5413f380de9ddbecfc72c773` |
| 39 | `lemma` | [LSeriesSummable.isBigO_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-isbigo-rpow--3cae9a3b637ae3475a3f98d7.md) | 337 | `result-track:3cae9a3b637ae3475a3f98d749e35ef6ece0ce0f40996bc085bf2444cf509c8c` |
| 40 | `lemma` | [LSeriesSummable_of_le_const_mul_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-of-le-const-mul-rpow--b398cf3f3dd00e864ca83c9e.md) | 346 | `result-track:b398cf3f3dd00e864ca83c9e342ecc7e7d7ea8c0760a6ac7ad7803bf8a9cf4b1` |
| 41 | `lemma` | [LSeriesSummable_of_isBigO_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-of-isbigo-rpow--026f90739b06fed0fb0e8d9a.md) | 372 | `result-track:026f90739b06fed0fb0e8d9ac35009dc4ccbe218849996918fd01a8bacd69a9a` |
| 42 | `theorem` | [LSeriesSummable_of_bounded_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-of-bounded-of-one-lt-re--ba1c9c23709b079a1039ddad.md) | 393 | `result-track:ba1c9c23709b079a1039ddad4d8e3f9fc5fb49ae73a5378a5f06e0259bf9c781` |
| 43 | `theorem` | [LSeriesSummable_of_bounded_of_one_lt_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variantcb1621e35007e09c4982fdbf21e3f905ffdec92aead1d268e152fc8c534c7d04.lean/declarations/lseriessummable-of-bounded-of-one-lt-real--dde0e4883f84f16ca0571ac5.md) | 399 | `result-track:dde0e4883f84f16ca0571ac51ab9de390af11b65782681ca8cd4d498661c0970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
