# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PowerSums.Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56b2ec289c14eb974349c5fde527a64e55247a00",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56b2ec289c14eb974349c5fde527a64e55247a00`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.Abel` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sdiv](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/sdiv--1f00c11b8ab49bc0f3448792.md) | 36 | `declaration-track:1f00c11b8ab49bc0f3448792880e584d66a40215aaeca0935a4b5235974816ca` |
| 2 | `lemma` | [Sdiv_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/sdiv-nonneg--64ab4d30be49af2b67c91f4a.md) | 38 | `result-track:64ab4d30be49af2b67c91f4a7200859b3fbf210ce5435a22bb36ae0141a6a4e5` |
| 3 | `lemma` | [one_le_floor_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/one-le-floor-exp--51934224900d69e349d1cf21.md) | 41 | `result-track:51934224900d69e349d1cf21acdc1b3239fdbe522dc87d29953e9ddee3fd8b0e` |
| 4 | `lemma` | [log_le_of_mem_Ioc_floor_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/log-le-of-mem-ioc-floor-exp--7bcd278eb72f424c16b947c9.md) | 44 | `result-track:7bcd278eb72f424c16b947c951c88852b58957836387a1b8d20108d2902d3e97` |
| 5 | `lemma` | [log_nonneg_of_mem_Ioc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/log-nonneg-of-mem-ioc--3b86cf00335078092db1a36d.md) | 51 | `result-track:3b86cf00335078092db1a36d0c499cf2e02859c2acdd2d60603a363cd845cb67` |
| 6 | `lemma` | [floor_exp_div](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/floor-exp-div--59350d31463be0c862b35a34.md) | 54 | `result-track:59350d31463be0c862b35a34e55626dcd76c56de9ba8128afef4582a93a4c3fa` |
| 7 | `lemma` | [Sdiv_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/sdiv-one--03caeaaf5e7c3c3f5ed24591.md) | 59 | `result-track:03caeaaf5e7c3c3f5ed24591378d04fda50e38ce0bc15a1e8ddfdba6e85522bc` |
| 8 | `lemma` | [Sdiv_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/sdiv-mul--f308d67f80d9b7a8ef725a8e.md) | 68 | `result-track:f308d67f80d9b7a8ef725a8e67224bbafa3b08e5fc2c6fe1e71f37e67a0396eb` |
| 9 | `lemma` | [integral_const_sub_pow](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/integral-const-sub-pow--168d41f2b85181182b150b5f.md) | 81 | `result-track:168d41f2b85181182b150b5fe29ce250403882a26aaf47c574fc63897401b0be` |
| 10 | `lemma` | [pow_add_mul_pow_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/pow-add-mul-pow-le--f77339bd20c1888bb0d60c74.md) | 87 | `result-track:f77339bd20c1888bb0d60c745f7e0160388829a65403b18ce6e8dbf1a7e08d36` |
| 11 | `theorem` | [Sdiv_lamPow_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/sdiv-lampow-le--46abfb6617c9fe64089841fc.md) | 102 | `result-track:46abfb6617c9fe64089841fc7f8badcc619f16c1cd0bad56f01567bf8e4c8f2d` |
| 12 | `lemma` | [Sdiv_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/sdiv-mono--f9336c6ad9af81e76fb0dc42.md) | 178 | `result-track:f9336c6ad9af81e76fb0dc429ababc8cacff4c396e5296ff8b256b45efe93ad6` |
| 13 | `lemma` | [Sdiv_lam_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/declarations/sdiv-lam-le--d6eeebc7a5f12c81cfec053c.md) | 186 | `result-track:d6eeebc7a5f12c81cfec053c8dc75f1093ca567d4d53dc4a683bfcd015e2966d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
