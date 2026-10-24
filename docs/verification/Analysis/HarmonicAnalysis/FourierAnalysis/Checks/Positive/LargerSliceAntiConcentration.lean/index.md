# Verification target: GRWTSK.Analysis.Fourier.Checks.Positive.LargerSliceAntiConcentration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4751fbb9ab953803b6d52680c257dac3a7d31ac0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/Checks/Positive/LargerSliceAntiConcentration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4751fbb9ab953803b6d52680c257dac3a7d31ac0`.

Source path: `GRWTSK/Analysis/Fourier/Checks/Positive/LargerSliceAntiConcentration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/Checks/Positive/LargerSliceAntiConcentration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModLargerSlice`](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [larger_slice_bound](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/larger-slice-bound--5f2b31a828bbc455fde8203e.md) | 22 | `result-track:5f2b31a828bbc455fde8203ec0629c334a58fdc668b3e54ff4f8beb82e4c6093` |
| 2 | `theorem` | [prime_larger_slice_bound](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/prime-larger-slice-bound--b65026890cdbd15afcf615fc.md) | 33 | `result-track:b65026890cdbd15afcf615fc6b1f06813a3ccaa36f945a38e6ec91f256cad3fa` |
| 3 | `theorem` | [uniform_epsilon_constant](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/uniform-epsilon-constant--8a932e4c3f12bd45fba706bc.md) | 45 | `result-track:8a932e4c3f12bd45fba706bc96ad04e337a3cb620c862129861bc8e2ef088120` |
| 4 | `theorem` | [exposure_pairs_three](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/exposure-pairs-three--43466bce25a43acf9f6ec83c.md) | 57 | `result-track:43466bce25a43acf9f6ec83c6d11f7c4da50703364a29db473f2c11615445541` |
| 5 | `theorem` | [exposure_union_fiber_three](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/exposure-union-fiber-three--daa189d99430ef28ecf98819.md) | 62 | `result-track:daa189d99430ef28ecf98819524a5f4d43055d5b1fd21d7d87621e7c3946cf25` |
| 6 | `theorem` | [overlapping_singletons_counterexample](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/overlapping-singletons-counterexample--abaa8edad10891bd89143f51.md) | 72 | `result-track:abaa8edad10891bd89143f51624397539573810590253cb7664d63a54ca12165` |
| 7 | `def` | [smallPacket](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/smallpacket--66eaa2297f505eca62bf78ec.md) | 79 | `declaration-track:66eaa2297f505eca62bf78ec6c9bce1d335198af06595707839cdf794abd4c4f` |
| 8 | `theorem` | [smallPacket_card](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/smallpacket-card--f0b84bb49054b3b8374143b2.md) | 81 | `result-track:f0b84bb49054b3b8374143b27f1f225bdc10acc08f7f13c9549cd7982eff58ca` |
| 9 | `theorem` | [empty_sample_mass](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/empty-sample-mass--5964b51b930686983e3813da.md) | 83 | `result-track:5964b51b930686983e3813da9ec10bfc4c54353547c033dc9bf02462bf47742c` |
| 10 | `theorem` | [empty_sample_has_margin](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/empty-sample-has-margin--f6cac3d6e660225225503571.md) | 99 | `result-track:f6cac3d6e660225225503571a5e2423e1a5abeb1b2888e818a994fd29fbb496f` |
| 11 | `theorem` | [zero_sample_counterexample](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/zero-sample-counterexample--976f871703c09b73894c626b.md) | 103 | `result-track:976f871703c09b73894c626b58573fa7872012d0f3e232c0857f1cfd9b05317b` |
| 12 | `theorem` | [full_packet_mass](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/full-packet-mass--7c537480a5de107347b65e22.md) | 111 | `result-track:7c537480a5de107347b65e22c9886e9f9aaf1ff475f66a9a453e7ff1773bdf73` |
| 13 | `theorem` | [full_packet_zero_margin](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/full-packet-zero-margin--af9a11c4ce2cd909cce63af0.md) | 130 | `result-track:af9a11c4ce2cd909cce63af00f78a013defb1008a4743e396b6d2071831c60af` |
| 14 | `theorem` | [zero_epsilon_counterexample](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/LargerSliceAntiConcentration.lean/declarations/zero-epsilon-counterexample--0a09dd81b03ca888878d4a75.md) | 136 | `result-track:0a09dd81b03ca888878d4a75ac4f5cc4d489a9cea0e30adc93f61a1aa3bff5aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
