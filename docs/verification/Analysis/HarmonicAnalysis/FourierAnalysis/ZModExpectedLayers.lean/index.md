# Verification target: GRWTSK.Analysis.Fourier.ZModExpectedLayers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fb5160815c51d110b620c33380cd9677fe7223e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fb5160815c51d110b620c33380cd9677fe7223e`.

Source path: `GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModExpectedLayers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModBalancedPartition`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mean](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean--31c1ed07fa13e35bc9266161.md) | 27 | `declaration-track:31c1ed07fa13e35bc92661615091181055b9570735430807743cf24a7e6fa5bc` |
| 2 | `theorem` | [mean_mono](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-mono--1a7d8e76c7f34e50fbdc4ca3.md) | 29 | `result-track:1a7d8e76c7f34e50fbdc4ca3573f76a43e491d6aaf5d47e317d8587f35472076` |
| 3 | `theorem` | [mean_const](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-const--92c48c28fb84f91aad0f2e9b.md) | 32 | `result-track:92c48c28fb84f91aad0f2e9ba257ce29d9a885e21d86539a769f5f411877f005` |
| 4 | `theorem` | [mean_add](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-add--d77c6a59bdadbadccb2807a3.md) | 35 | `result-track:d77c6a59bdadbadccb2807a31db446e96085e34953157007e7e15db300985b43` |
| 5 | `theorem` | [eventProbability_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/eventprobability-nonneg--ada726ec07007d467ff706aa.md) | 39 | `result-track:ada726ec07007d467ff706aad5b687bba86a5860719e8aac66377de6e4eeb814` |
| 6 | `theorem` | [eventProbability_le_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/eventprobability-le-one--3a101ed65101179c7b4ac320.md) | 43 | `result-track:3a101ed65101179c7b4ac320a7ee023c6a05e3fa9c1837770be3cff30e52c313` |
| 7 | `theorem` | [mean_filter_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-filter-card--a0c62d57dccb3293990160d1.md) | 50 | `result-track:a0c62d57dccb3293990160d1db73b59291e489b546946326b75c30a5d1509c3c` |
| 8 | `theorem` | [mean_filter_card_le_exceptional](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-filter-card-le-exceptional--de9eb679ddcd3addb6ef07de.md) | 65 | `result-track:de9eb679ddcd3addb6ef07de5c6f0f16d849040abc613f495715662ff883ece6` |
| 9 | `def` | [nonzeroLowEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/nonzerolowenergy--6cc5c8ef6caa062f775e0503.md) | 87 | `declaration-track:6cc5c8ef6caa062f775e050379fe401126fbc4490842673ba54e6d4b75911f1a` |
| 10 | `theorem` | [mean_nonzeroLowEnergy_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-nonzerolowenergy-le--f96ffb556e325646d405cef0.md) | 92 | `result-track:f96ffb556e325646d405cef0c31403ae5470b43c71829deb4f27625e111dca20` |
| 11 | `theorem` | [smallEnergyFrequencies_erase_zero_card_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/smallenergyfrequencies-erase-zero-card-le--727c1912a7b08d943011eb63.md) | 119 | `result-track:727c1912a7b08d943011eb63873bafe96aa748a5df32d216ade109f14294f5a5` |
| 12 | `theorem` | [absorb_spectral_error](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/absorb-spectral-error--7f0a941b9daf0232dbccbacb.md) | 133 | `result-track:7f0a941b9daf0232dbccbacbc49e8f17b1f946d1a67f1b6478822327ae04a79b` |
| 13 | `theorem` | [mean_nonzeroLowEnergy_le_10000](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-nonzerolowenergy-le-10000--f7014622a87795d345feb073.md) | 176 | `result-track:f7014622a87795d345feb073eccf581f8f64cc29767ef7f0e800624dcf95aa51` |
| 14 | `theorem` | [mean_card_le_of_subset](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-card-le-of-subset--d8b16a54588661fc39c5ba0a.md) | 194 | `result-track:d8b16a54588661fc39c5ba0aab6e8c4a170d8f7719899a7f5af8e284c02a130e` |
| 15 | `theorem` | [mean_lowBand_le_one_add](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-lowband-le-one-add--8da98c8954f5c62cb0bf02c6.md) | 201 | `result-track:8da98c8954f5c62cb0bf02c6708961f3b437f8ce3dc039e5a188939078d50bc0` |
| 16 | `theorem` | [mean_dyadicBand_le_nonzeroLowEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-dyadicband-le-nonzerolowenergy--47bc5610cf63d5b73d7e1232.md) | 227 | `result-track:47bc5610cf63d5b73d7e1232d175626ac8ba91fc01799c83a58e9a88817e039e` |
| 17 | `theorem` | [mean_lowBand_le_10000](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-lowband-le-10000--ab2487f67b9b0b032310f9ac.md) | 246 | `result-track:ab2487f67b9b0b032310f9acf75cd17a9d13598158230534d4e27f359b4688f5` |
| 18 | `theorem` | [mean_dyadicBand_le_10000](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/mean-dyadicband-le-10000--34fc24946c791c4e64285d32.md) | 262 | `result-track:34fc24946c791c4e64285d32e6b65d6a47410e34635023b0c55e074e3db57dc6` |
| 19 | `theorem` | [sqrt_dyadic_exp_term_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/sqrt-dyadic-exp-term-le--e38917afb946c6ae64c43170.md) | 278 | `result-track:e38917afb946c6ae64c43170d2527b4483b646c82a3e15f07c8b3f52ac3b9590` |
| 20 | `theorem` | [sum_sqrt_dyadic_exp_le_two](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/sum-sqrt-dyadic-exp-le-two--c47e30c78ecf8bf1a14b9403.md) | 302 | `result-track:c47e30c78ecf8bf1a14b9403f0875f27ec7a548662910542a284409a308cab5f` |
| 21 | `theorem` | [high_layers_sum_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/high-layers-sum-le--690cd01b99b669b78529a81a.md) | 308 | `result-track:690cd01b99b669b78529a81a9bc812aff43d1b898b89134d6b0de973c4856188` |
| 22 | `theorem` | [source_tail_exp_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/source-tail-exp-le--9f2e08ed7cc2a3ecfda42ddf.md) | 323 | `result-track:9f2e08ed7cc2a3ecfda42ddfc00af9ee4033a2b7df2f78d5d725194df79cb3cb` |
| 23 | `theorem` | [reciprocal_tail_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/reciprocal-tail-le--8da8f1d7fb0c5a887a163a13.md) | 335 | `result-track:8da8f1d7fb0c5a887a163a13964563a90e52134ee4ee1f4cb1bf29589b35cb57` |
| 24 | `def` | [smallLayerRange](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/smalllayerrange--ef8dd21669d02db206087d52.md) | 349 | `declaration-track:ef8dd21669d02db206087d524bf2b25c83404512db6fdf4fe750502e059f7d23` |
| 25 | `def` | [largeLayerRange](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/largelayerrange--9836445167478c2554a967f6.md) | 352 | `declaration-track:9836445167478c2554a967f678e6805819ca7b5572e093163afd72edbde8cd7e` |
| 26 | `theorem` | [smallLayerRange_subset](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/smalllayerrange-subset--ae1c09ca6b858bab5bb34cd8.md) | 355 | `result-track:ae1c09ca6b858bab5bb34cd876eea0093bca8e8a38f61e7e68833d23e0ea9043` |
| 27 | `theorem` | [largeLayerRange_card_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/largelayerrange-card-le--5db476f11eac48558b99b0ba.md) | 359 | `result-track:5db476f11eac48558b99b0ba9cf979c07c5eaffdcc2736783f7448c898a04ec0` |
| 28 | `theorem` | [smallLayerRange_size_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/smalllayerrange-size-le--9dad1e6b5f4ce9a0b488cf2c.md) | 366 | `result-track:9dad1e6b5f4ce9a0b488cf2c3964993c0930eb77d2e96e5c3107858a1222fa60` |
| 29 | `theorem` | [largeLayerRange_size_ge](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/largelayerrange-size-ge--2c3876632a298844642f5f15.md) | 384 | `result-track:2c3876632a298844642f5f150b91e909a60a94d1b60186c05496d28e5e9b5358` |
| 30 | `theorem` | [largeLayerRange_exp_sum_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/declarations/largelayerrange-exp-sum-le--addc40a20b43049d51001995.md) | 401 | `result-track:addc40a20b43049d510019959a0d57a430dbe2efd04ccedc4c982c918513a113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
