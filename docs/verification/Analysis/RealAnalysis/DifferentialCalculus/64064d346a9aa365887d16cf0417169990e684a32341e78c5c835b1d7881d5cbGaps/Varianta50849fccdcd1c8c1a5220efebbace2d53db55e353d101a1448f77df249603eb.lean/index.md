# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps.Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb5e6bc5b0f292762699482a9b88e32e218c9362",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb5e6bc5b0f292762699482a9b88e32e218c9362`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankTwo` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailGap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetatailgap--6cfb41175f402b8ec4916265.md) | 17 | `declaration-track:6cfb41175f402b8ec49162658ff978fc643a560b3a74e46fa68162efe81b64e4` |
| 2 | `theorem` | [hasDerivAt_thetaTail_normalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/hasderivat-thetatail-normalized--24633b304f3064a0b3b59250.md) | 20 | `result-track:24633b304f3064a0b3b59250c96a1c3c407a362eb243e4f1f4c98334a0b26d3b` |
| 3 | `theorem` | [thetaTailGap_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetatailgap-nonnegative--d3919331aec87fcee37f785a.md) | 28 | `result-track:d3919331aec87fcee37f785ab6ffaf7e02055929fa5110948b78c95164b8de06` |
| 4 | `theorem` | [thetaTailGap_derivative_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetatailgap-derivative-ratio--35dc8b5473ef2dd84327ed3b.md) | 38 | `result-track:35dc8b5473ef2dd84327ed3b9f6fad21ebe1bca57540281173c42b846ebc7ad5` |
| 5 | `theorem` | [thetaTailGap_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetatailgap-succ-succ--0c9e3f3ab09852790a53cd08.md) | 47 | `result-track:0c9e3f3ab09852790a53cd081b9cbc8d613752c8a91a86b7ecd8cf72d5c36a0d` |
| 6 | `theorem` | [thetaTailGap_zero_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetatailgap-zero-succ--44dd854ce2ad9f80a2bccfee.md) | 54 | `result-track:44dd854ce2ad9f80a2bccfee4eba84e75971c48bd0f90de15552ae7c33cabd57` |
| 7 | `theorem` | [thetaPhi_logSlope_strictAnti](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetaphi-logslope-strictanti--bdcad37304f7d806b306972e.md) | 62 | `result-track:bdcad37304f7d806b306972e64c7296b53b52a4d8b5605a55576643ed5296158` |
| 8 | `theorem` | [thetaPhi_logSlope_cross_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetaphi-logslope-cross-positive--5ad4d3cad5c4d4ceb35caade.md) | 70 | `result-track:5ad4d3cad5c4d4ceb35caadef09779394cecd0938bf76ff67520a259f1b28ceb` |
| 9 | `theorem` | [thetaTailGap_zero_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetatailgap-zero-two-integral--d5b2fa55002d365ca9c914c3.md) | 76 | `result-track:d5b2fa55002d365ca9c914c31530e106be2c22394d670d98b9f10506b7159c03` |
| 10 | `theorem` | [zero_two_gap_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/zero-two-gap-integrand-integrable--f4574012af9d4e4ec39b5dae.md) | 83 | `result-track:f4574012af9d4e4ec39b5dae8273454a3885ae4410397a2b9e66f605f7c2cee9` |
| 11 | `theorem` | [thetaTailGap_zero_two_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/thetatailgap-zero-two-positive--3d2d71d82c2de77e3bb55044.md) | 95 | `result-track:3d2d71d82c2de77e3bb550443f1db17f645ffef57c55194f058b388296c32f5c` |
| 12 | `theorem` | [hasDerivAt_thetaTailGap_zero_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/declarations/hasderivat-thetatailgap-zero-succ-succ--5fd49769ac178ced9b4457b9.md) | 108 | `result-track:5fd49769ac178ced9b4457b9bf3e349c246c2bfeb6aad2db8c29ab27baa2864d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
