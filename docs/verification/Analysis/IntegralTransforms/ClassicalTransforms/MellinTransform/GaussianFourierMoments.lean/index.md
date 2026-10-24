# Verification target: GRWTSK.Analysis.MellinTransform.GaussianFourierMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7901715642750976156e50ca331fe3a1e25d541f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianFourierMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7901715642750976156e50ca331fe3a1e25d541f`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianFourierMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianFourierMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.SchwartzMoments`](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianFourierSourceIndices](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/gaussianfouriersourceindices--02678ba650d713bf6604fbbf.md) | 24 | `declaration-track:02678ba650d713bf6604fbbfa083f58630d46e834c520fc936c65b9373c9f5d6` |
| 2 | `lemma` | [source_zero_mem](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/source-zero-mem--65863467921003fa641107c6.md) | 28 | `result-track:65863467921003fa641107c6afe7dce2d457cdfb1659b5e5e5d2704142931e02` |
| 3 | `lemma` | [source_power_mem](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/source-power-mem--eff8faab4bcf1ca9234fae28.md) | 32 | `result-track:eff8faab4bcf1ca9234fae28a7973c79404947fdab727c89fc0c91f002b29b16` |
| 4 | `lemma` | [scale_rpow_cancel](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/scale-rpow-cancel--4913c11d912343816da8575b.md) | 37 | `result-track:4913c11d912343816da8575bd53a3b251245fadaa05b6749197384ce25f9b757` |
| 5 | `theorem` | [gaussianFourier_source_pair](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/gaussianfourier-source-pair--5ba7c90f57e83a5288f3fbac.md) | 42 | `result-track:5ba7c90f57e83a5288f3fbac4031f5e7599240f4cd203ebb2423906453fc78a7` |
| 6 | `def` | [gaussianFourierMoment](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/gaussianfouriermoment--3beefc64079ea42d60517ae9.md) | 64 | `declaration-track:3beefc64079ea42d60517ae9323e817dc6ee3b524842d87728797f4081e30c88` |
| 7 | `theorem` | [gaussianFourierMoment_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/gaussianfouriermoment-integrable--21c7fd4a0234f0cc69d5c50d.md) | 68 | `result-track:21c7fd4a0234f0cc69d5c50d77e5875efd3558b868fac17394e827ff83677d6e` |
| 8 | `lemma` | [gaussianFourierMoment_nonneg](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/gaussianfouriermoment-nonneg--3ad476eef0f87dd505499fe1.md) | 72 | `result-track:3ad476eef0f87dd505499fe108964d135513f6bd355c0dc47ca41afef1b80713` |
| 9 | `theorem` | [gaussianFourierMoment_power_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/declarations/gaussianfouriermoment-power-bound--8980ce97b911ac31bdadeb3f.md) | 79 | `result-track:8980ce97b911ac31bdadeb3ff234788aa9127716f43ed71bbee40c11dc9df364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
