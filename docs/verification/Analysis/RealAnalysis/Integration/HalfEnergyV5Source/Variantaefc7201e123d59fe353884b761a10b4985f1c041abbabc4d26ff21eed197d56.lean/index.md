# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfEnergyV5Source.Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5d50c8092868f8952615b2dba4dd3841367416d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5d50c8092868f8952615b2dba4dd3841367416d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/forwardhalfkernel--3741b65fe6df1baf1fc9f885.md) | 18 | `declaration-track:3741b65fe6df1baf1fc9f885fa8da7186a86c7c7bb098d8edaf67437094a4375` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/forwardhalfkernel-continuous--fdbbef88fab19ca9b755ecd4.md) | 23 | `result-track:fdbbef88fab19ca9b755ecd44c872ed5d8837d0e9a41edb09ff107dae9debd92` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/forwardhalfkernel-hascompactsupport--ea9b8115e1c2f8bc13fc3dc7.md) | 31 | `result-track:ea9b8115e1c2f8bc13fc3dc7776d900740d94b4068f194da8dced09d1a925293` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/forwardhalfkernel-integrable--3093b8eb82510dc2042ed6a7.md) | 53 | `result-track:3093b8eb82510dc2042ed6a70e2595d306274ec02920c7726199824e14c7530e` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/sourcecorrelation-eq-plus-shift--e5fe8ddd9b9c7aa726432327.md) | 59 | `result-track:e5fe8ddd9b9c7aa7264323278153b79cbe3fb9cadb7befecdc4b018269264256` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/negativesmoothmoment-eq-forward-integral--57bc987e233c6fc8300353e3.md) | 67 | `result-track:57bc987e233c6fc8300353e3c509c476f409368c7819ef892ddf7e953f56d1a1` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--66cc2ef5b1c7d91ef8d5ebd3.md) | 79 | `result-track:66cc2ef5b1c7d91ef8d5ebd3e3fc7123d78d34e6a3d1c9a822fe81182353aacc` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/negativesmoothmoment-eq-tail-pairing--ad300e407dbf414d77401f54.md) | 117 | `result-track:ad300e407dbf414d77401f54ebe5967cb1c6bbc08790ed24d4cd0355d316778a` |
| 9 | `theorem` | [negativeSmoothMoment_eq_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/negativesmoothmoment-eq-half-causal-energy--7b611a1d7589445cd9b3baf7.md) | 127 | `result-track:7b611a1d7589445cd9b3baf789a62d24171da7ff730757d9c3fbfd4aca0a5244` |
| 10 | `theorem` | [negativeSmoothMoment_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/negativesmoothmoment-eq-normalized-energy--5a9836c76a79c49cf2d1f7e3.md) | 133 | `result-track:5a9836c76a79c49cf2d1f7e3e85bf7386f0eba83ba2094214c18fe41311d06fc` |
| 11 | `theorem` | [negativeSmoothMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/negativesmoothmoment-eq-rational--42ba149cedb026370a8cc6a1.md) | 141 | `result-track:42ba149cedb026370a8cc6a1d1251e23a2375b6f86145d4cd286b31c60effba7` |
| 12 | `theorem` | [criticalContinuousMoment_eq_neg_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/criticalcontinuousmoment-eq-neg-half-causal-energy--9f0538ab50eca54f9268c2c5.md) | 150 | `result-track:9f0538ab50eca54f9268c2c5e3e0dea7dcceef7fe307ff2777cec66191cc05f0` |
| 13 | `theorem` | [criticalContinuousMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/criticalcontinuousmoment-eq-rational--e4cc7103020287fdffa90b83.md) | 157 | `result-track:e4cc7103020287fdffa90b8372a67b0979cefa6276a0fc7cd9f6ae730be7edf6` |
| 14 | `theorem` | [negativeSmoothMoment_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/negativesmoothmoment-pos--ef3f4094fc561df2daa7829e.md) | 165 | `result-track:ef3f4094fc561df2daa7829e571bb5a44366b57ac7190286da063dcb256053b0` |
| 15 | `theorem` | [criticalContinuousMoment_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/criticalcontinuousmoment-lt-zero--646311f87767781260627115.md) | 171 | `result-track:646311f877677812606271156e9ba9d7338b8acb9a793baace1b8082058696fe` |
| 16 | `theorem` | [criticalContinuousMoment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/criticalcontinuousmoment-ne-zero--d6b0db43697b1d13f7935627.md) | 177 | `result-track:d6b0db43697b1d13f7935627cb04235faa7f7d3849705bd377f25fefc5d82409` |
| 17 | `theorem` | [criticalContinuousMoment_strict_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantaefc7201e123d59fe353884b761a10b4985f1c041abbabc4d26ff21eed197d56.lean/declarations/criticalcontinuousmoment-strict-bounds--ae4578989bb1b9f4902cff5c.md) | 181 | `result-track:ae4578989bb1b9f4902cff5cb948be0d02b8126f3b0f2ed0ca7a2366e99feb83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
