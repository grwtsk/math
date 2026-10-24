# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eeb8c5b66cd95c8c1ea16a4eac2e408dec71503",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eeb8c5b66cd95c8c1ea16a4eac2e408dec71503`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiKrylovNondegeneracy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiKrylovWhitening](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphikrylovwhitening--09123e4408ef676b85bf6b7d.md) | 42 | `declaration-track:09123e4408ef676b85bf6b7d57f75fb8fcdebb91e81f5a22376c553068f123fe` |
| 2 | `theorem` | [thetaPhiKrylovGramSqrt_isUnit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphikrylovgramsqrt-isunit--87356eca1c3f742a5d846e71.md) | 51 | `result-track:87356eca1c3f742a5d846e71324e68c759d1c2c43b45e99ae3d2de744370e5d3` |
| 3 | `theorem` | [thetaPhiKrylovGramSqrt_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphikrylovgramsqrt-transpose--2002058983496d994f83f60e.md) | 69 | `result-track:2002058983496d994f83f60ea66b8fa2733e2da7c52c7aef8105975ad3946f91` |
| 4 | `theorem` | [thetaPhiKrylovWhitening_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphikrylovwhitening-transpose--b58cc1c9420caa077bae480e.md) | 86 | `result-track:b58cc1c9420caa077bae480ee404c84065284087d4b06df9ba1a85cc655fba70` |
| 5 | `theorem` | [thetaPhiKrylovWhitening_det_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphikrylovwhitening-det-ne-zero--53f0c765a2ecf529cf9203e5.md) | 96 | `result-track:53f0c765a2ecf529cf9203e58807872ab0ffc6295d53067a9a1c18d651892122` |
| 6 | `theorem` | [thetaPhiKrylovWhitening_gram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphikrylovwhitening-gram--f38b78efc9dc0e9417b5a296.md) | 116 | `result-track:f38b78efc9dc0e9417b5a296b3e290bbc344ca93598eae9262e49065e87d67ad` |
| 7 | `def` | [thetaPhiWhitenedKrylovFrame](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphiwhitenedkrylovframe--7fc74f8b8c5d2fd934fbbeda.md) | 150 | `declaration-track:7fc74f8b8c5d2fd934fbbeda2f6977bab778bc1e43ea1342f34b9ccbedb2c10d` |
| 8 | `theorem` | [thetaPhiWhitenedKrylovFrame_gram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphiwhitenedkrylovframe-gram--809717451cc51e6db7d737f9.md) | 158 | `result-track:809717451cc51e6db7d737f99c2f4b8885dc268470039bb8ec8ecfe80e625c96` |
| 9 | `theorem` | [thetaPhiFiniteOrthonormalizable_of_nonzero_modes](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphifiniteorthonormalizable-of-nonzero-modes--c401b44427c9d6a168df0eae.md) | 180 | `result-track:c401b44427c9d6a168df0eaede37732e2da347354edd8083207447f1ddb94893` |
| 10 | `def` | [thetaPhiWhitenedParityCompression](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphiwhitenedparitycompression--394ef4c50f8019f66badaa4c.md) | 190 | `declaration-track:394ef4c50f8019f66badaa4c822924db327036e56d07560ee452fa87d27ef71d` |
| 11 | `theorem` | [thetaPhiWhitenedParityCompression_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphiwhitenedparitycompression-eq--2253acb5dffdeb9ef9f66bc8.md) | 199 | `result-track:2253acb5dffdeb9ef9f66bc8f8c082a103c5c486d2d5454be9b64816430b9f09` |
| 12 | `theorem` | [thetaPhiNormalizedParityCompression_eq_whitened_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphinormalizedparitycompression-eq-whitened-det--774d8ba4b3414912e79a1827.md) | 217 | `result-track:774d8ba4b3414912e79a1827470ea8c9907b036c7bdd83ce652c49e35ab3c92e` |
| 13 | `theorem` | [thetaPhiWhitenedParityCompression_nonnegative_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/declarations/thetaphiwhitenedparitycompression-nonnegative-iff--c78098eacf5e33727993a79e.md) | 233 | `result-track:c78098eacf5e33727993a79e61d7b689d0a0ded51ab92b28385920ffd0c7f5a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
