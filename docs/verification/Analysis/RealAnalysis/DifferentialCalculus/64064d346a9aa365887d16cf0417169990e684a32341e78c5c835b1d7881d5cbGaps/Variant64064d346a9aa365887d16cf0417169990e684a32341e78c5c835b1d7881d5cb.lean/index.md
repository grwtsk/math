# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps.Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17a06b818d9c6089519b3ca1270b6602cff515e0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17a06b818d9c6089519b3ca1270b6602cff515e0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankTwo` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailGap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetatailgap--fd8f4f7a8394a79de14a0dc4.md) | 9 | `declaration-track:fd8f4f7a8394a79de14a0dc434a67ca6b86e86060d41aeecf1f33020707b183c` |
| 2 | `theorem` | [hasDerivAt_thetaTail_normalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/hasderivat-thetatail-normalized--7b4999d080d274614339954c.md) | 12 | `result-track:7b4999d080d274614339954c1cbf8c6758f27fe7b604833bd1c837f9c3cfdaaa` |
| 3 | `theorem` | [thetaTailGap_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetatailgap-nonnegative--be84f0dcc4a410d4ca4fa7c1.md) | 20 | `result-track:be84f0dcc4a410d4ca4fa7c1a0f16b72d1a4734102dde43e911ff10225213bc1` |
| 4 | `theorem` | [thetaTailGap_derivative_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetatailgap-derivative-ratio--e24ea132a729737beeefa31f.md) | 30 | `result-track:e24ea132a729737beeefa31f9a65e51ec9edc088a7db196d75c760d34835df51` |
| 5 | `theorem` | [thetaTailGap_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetatailgap-succ-succ--fd4ca2eccec8737ebe4a0cc7.md) | 39 | `result-track:fd4ca2eccec8737ebe4a0cc79fbe4610b03c33fe26aa8a3df71e684d46b0786f` |
| 6 | `theorem` | [thetaTailGap_zero_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetatailgap-zero-succ--15ff8acc474e6d6055048123.md) | 46 | `result-track:15ff8acc474e6d6055048123342df55d5ab364609ccc261154025e220f5e1514` |
| 7 | `theorem` | [thetaPhi_logSlope_strictAnti](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetaphi-logslope-strictanti--ec06245ffced1d9c997d9f51.md) | 54 | `result-track:ec06245ffced1d9c997d9f517d2e345bc555567d0946ae180d4f16c54f8f0e95` |
| 8 | `theorem` | [thetaPhi_logSlope_cross_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetaphi-logslope-cross-positive--5e7c0e5c3f1ef848abba475b.md) | 62 | `result-track:5e7c0e5c3f1ef848abba475bc3d4edbb02356d4cd3397665efd419080d86a88a` |
| 9 | `theorem` | [thetaTailGap_zero_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetatailgap-zero-two-integral--3f6cdd1790c49f55e87faa7b.md) | 68 | `result-track:3f6cdd1790c49f55e87faa7b9fd221807d2c2d2829822545957c600059ad84c6` |
| 10 | `theorem` | [zero_two_gap_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/zero-two-gap-integrand-integrable--3afb4bf9a1f8dc6aa7aa9b22.md) | 75 | `result-track:3afb4bf9a1f8dc6aa7aa9b22311624d03ccc5a291f8a753f3dddd600f597fc4b` |
| 11 | `theorem` | [thetaTailGap_zero_two_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/thetatailgap-zero-two-positive--b12ed4d89abe84f7c54fa713.md) | 87 | `result-track:b12ed4d89abe84f7c54fa7132691b30956467f8956d32e5a1a8f4b8a1435377a` |
| 12 | `theorem` | [hasDerivAt_thetaTailGap_zero_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Variant64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cb.lean/declarations/hasderivat-thetatailgap-zero-succ-succ--82f67b12cbb9bedf248b1392.md) | 100 | `result-track:82f67b12cbb9bedf248b1392c55e41bed67b4b71be920363703d01b0e955f6f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
