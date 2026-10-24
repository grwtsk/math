# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Deriv.Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df4570e0aad7d9cc41e0bc21d5bab221ccc89e10",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df4570e0aad7d9cc41e0bc21d5bab221ccc89e10`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HalfPlane` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LSeries.logMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-logmul--77d5c31fddb0ce3ceab2b00e.md) | 46 | `declaration-track:77d5c31fddb0ce3ceab2b00e5f96022afc73eb8a96d38b731c65eb887bf6cbb7` |
| 2 | `lemma` | [LSeries.hasDerivAt_term](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-hasderivat-term--b066e6429acc4354bda58d65.md) | 49 | `result-track:b066e6429acc4354bda58d65ab2172b2a523e632a0402e527418d41717d1697e` |
| 3 | `lemma` | [LSeries.LSeriesSummable_logMul_and_hasDerivAt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-lseriessummable-logmul-and-hasderivat--06faaf8f00fe611c8c90bb82.md) | 60 | `result-track:06faaf8f00fe611c8c90bb820a78491c734bc8f5cdf1e25a3e2ef3d5763f5e34` |
| 4 | `lemma` | [LSeries_hasDerivAt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-hasderivat--a160c47935d0277b4690d9d1.md) | 84 | `result-track:a160c47935d0277b4690d9d16e79582687583156cd9dba985d74dfd19187a566` |
| 5 | `lemma` | [LSeries_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-deriv--143ece700598f535bf85a08d.md) | 90 | `result-track:143ece700598f535bf85a08d0e180520ff4af8b6ba0b2bacf1ccce1b019a3a84` |
| 6 | `lemma` | [LSeries_deriv_eqOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-deriv-eqon--26980b04d06ce5fa81e28071.md) | 96 | `result-track:26980b04d06ce5fa81e28071c7e7775e3c1250ce052641f5241645e20ea8a7b7` |
| 7 | `lemma` | [LSeriesSummable_logMul_of_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseriessummable-logmul-of-lt-re--eba598e2769ac72605845c79.md) | 102 | `result-track:eba598e2769ac72605845c791619f4de9645eb1e5a1f51d6eef20784e5f19aa2` |
| 8 | `lemma` | [LSeries.abscissaOfAbsConv_logMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-abscissaofabsconv-logmul--0be6f193e3ed46a62f0ea5ee.md) | 109 | `result-track:0be6f193e3ed46a62f0ea5eefce99bdfc38db4614a50072e4c3c99e05019e90b` |
| 9 | `lemma` | [LSeries.absicssaOfAbsConv_logPowMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-absicssaofabsconv-logpowmul--493c921a5b6e229d15576e43.md) | 128 | `result-track:493c921a5b6e229d15576e4371c98e3b28aca51ec8ada1546c753861576d676c` |
| 10 | `lemma` | [LSeries_iteratedDeriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-iteratedderiv--03398c7c5249c41f97f8add5.md) | 137 | `result-track:03398c7c5249c41f97f8add54409bebc44af7ce335c3e31856e38802bcf21502` |
| 11 | `lemma` | [LSeries_differentiableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-differentiableon--e9e65395bccdca969ea99717.md) | 156 | `result-track:e9e65395bccdca969ea99717956e43ba36891cff95c8f6740c0cd07de472e125` |
| 12 | `lemma` | [LSeries_analyticOnNhd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-analyticonnhd--7228775a09fc0fc773674dc2.md) | 161 | `result-track:7228775a09fc0fc773674dc27435d9e7ff89b353261ee1db077d19269ff1fbf1` |
| 13 | `lemma` | [LSeries_analyticOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/declarations/lseries-analyticon--14a88dd0da69ecb68e20af6a.md) | 165 | `result-track:14a88dd0da69ecb68e20af6a0d5b6a52f7fa0775d14ee0d342f08a75fd4d0395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
