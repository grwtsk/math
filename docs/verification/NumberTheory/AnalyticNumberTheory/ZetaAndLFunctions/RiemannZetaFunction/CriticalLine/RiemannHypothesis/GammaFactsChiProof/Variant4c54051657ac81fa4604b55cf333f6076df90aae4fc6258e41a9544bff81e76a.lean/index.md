# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GammaFactsChiProof.Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GammaRBracket` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.IntMuChi` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/absc--0d8f5e0237f09ae353821f8c.md) | 34 | `declaration-track:0d8f5e0237f09ae353821f8c691d59411366b4a74fce0bdf716336259d254710` |
| 2 | `theorem` | [absc_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/absc-pos--451362b68af749b3092f8d36.md) | 36 | `result-track:451362b68af749b3092f8d36534696389222f44f1635f246289717abb4668d95` |
| 3 | `theorem` | [absc_lt_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/absc-lt-one--35acd2f7874993e729c5e299.md) | 38 | `result-track:35acd2f7874993e729c5e29916c6d1e4d8cb163025d7ac77f3d4ef0c46644f09` |
| 4 | `theorem` | [quarter_le_absc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/quarter-le-absc--631ff330d1bf256a107c6c88.md) | 43 | `result-track:631ff330d1bf256a107c6c88a98334827fd7fe1f3d9d7865ba1ea6b887f5a73c` |
| 5 | `theorem` | [muq_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-eq--94fa26f0dcce50709928d6d8.md) | 48 | `result-track:94fa26f0dcce50709928d6d8caf01fcf23401ed78eb1f97a6293c3e503c52d7a` |
| 6 | `theorem` | [arg_mem](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/arg-mem--f466eff1cf05215031549c23.md) | 58 | `result-track:f466eff1cf05215031549c237cc4ed7a765a973a50fc2a462bd9d7c6517b1ea0` |
| 7 | `theorem` | [muq_even](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-even--c8c7aa34ab949995ec0184a4.md) | 64 | `result-track:c8c7aa34ab949995ec0184a45c77c3f1d2a4a3cb739fcf7506942bbc036e2cc5` |
| 8 | `theorem` | [muq_monotoneOn](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-monotoneon--3729b1cdff7cbc4e8982ac4f.md) | 75 | `result-track:3729b1cdff7cbc4e8982ac4f1737acb62614b7e53d905ec0354c467fdfbd2a82` |
| 9 | `theorem` | [muq_zero_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-zero-le--cf9716144361a9bce21f2567.md) | 86 | `result-track:cf9716144361a9bce21f256780ff697447e7e3b9172e28a38876d107f94b9d5d` |
| 10 | `theorem` | [muq_stirling_const](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-stirling-const--daaa83a9195f32aeb3a4b97a.md) | 95 | `result-track:daaa83a9195f32aeb3a4b97a3f9530813a2663b276ff4f2ddf559726533f1e06` |
| 11 | `theorem` | [muq_stirling](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-stirling--b2d01c7208ce5b65da3921fd.md) | 118 | `result-track:b2d01c7208ce5b65da3921fde111bb7492dbfeb2fc4ffff72b4c8862dbe5c22c` |
| 12 | `theorem` | [neg_one_lt_muq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/neg-one-lt-muq-zero--233af894ea97ca95681e04cf.md) | 124 | `result-track:233af894ea97ca95681e04cf8dad980e36c9d0bc343b907e84f082fb698d822a` |
| 13 | `lemma` | [gamma_ne_neg_nat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/gamma-ne-neg-nat--2049644a65fe742a13d74126.md) | 180 | `result-track:2049644a65fe742a13d74126d65f63d7ab3c322e2ae1faad291d6d7ac2521234` |
| 14 | `theorem` | [analyticAt_digamma'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/analyticat-digamma--7ec76a62bac77129b63fa490.md) | 187 | `result-track:7ec76a62bac77129b63fa490b936c71bf03b577d38abf3fbcb3a203ca43a5705` |
| 15 | `theorem` | [muq_smooth](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-smooth--fbcc5ff6966a58a0caf31993.md) | 204 | `result-track:fbcc5ff6966a58a0caf3199324a16e38fc24e0490ff468528fc134723ff15c87` |
| 16 | `theorem` | [muq_deriv_bound_const](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-deriv-bound-const--4a49fe520c5cff595d06a11c.md) | 235 | `result-track:4a49fe520c5cff595d06a11ce61cb89a7cbcd2633595caf06c82dfee01cd393e` |
| 17 | `theorem` | [muq_deriv_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/muq-deriv-bound--41eccddcdd6d4001c73db8e3.md) | 352 | `result-track:41eccddcdd6d4001c73db8e36d5aef56c2d96d36fd805ef4b0ddf96931d7f8ca` |
| 18 | `theorem` | [gammaFactsChi_of_int](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/gammafactschi-of-int--23f3b0e5a45e91b0814b1cdb.md) | 359 | `result-track:23f3b0e5a45e91b0814b1cdbaea0f0a7661639a6c08ef8ad2ff51570c36ea019` |
| 19 | `theorem` | [gammaFactsChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/gammafactschi--60989d6f386a43a63d007f31.md) | 371 | `result-track:60989d6f386a43a63d007f3141ae133da7349610731238edef8fc0657b9cf189` |
| 20 | `theorem` | [gammaFactsChi_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/declarations/gammafactschi-uniform--ef656a5049fd8de069942980.md) | 380 | `result-track:ef656a5049fd8de069942980de0c180cff7c99fda12ffb11da945b16be0208de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
