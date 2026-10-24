# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "621734c1cc6aff5d269440da66968aa1d03acdf7",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `621734c1cc6aff5d269440da66968aa1d03acdf7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DensityDecoder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeAtoms](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primeatoms--7ccb68b1ffcc430aa2a0fb06.md) | 26 | `declaration-track:7ccb68b1ffcc430aa2a0fb06eacbdbe69caebc7dcd99015014f03f98cabdc76c` |
| 2 | `def` | [primeCorrected](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected--f801081ee7c2c87d6bb2f3b3.md) | 30 | `declaration-track:f801081ee7c2c87d6bb2f3b3e1b674a7b8fa81de3ffbacae213bd9f85e765f6f` |
| 3 | `theorem` | [primeCorrected_at_atom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected-at-atom--bb2f84a8d50697924635c017.md) | 33 | `result-track:bb2f84a8d50697924635c017b16b6135cb76e66ea8ecd15ad01a6fd988d78dc5` |
| 4 | `theorem` | [primeCorrected_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected-ae--cb598e218fedf15cebab5ae3.md) | 40 | `result-track:cb598e218fedf15cebab5ae3f5e93078ce4a04d02ac82fc0b27b6f4feee1df8b` |
| 5 | `theorem` | [primeCorrected_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected-integrable--86e7d1d8a53d671ee9a879cf.md) | 46 | `result-track:86e7d1d8a53d671ee9a879cf75f34e80180c3d2b78750e343067de9dd57365e1` |
| 6 | `theorem` | [primeCorrected_primeLogSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected-primelogsum--3a3ddf9d73fb883727b83d31.md) | 50 | `result-track:3a3ddf9d73fb883727b83d3141d66ad3eda87b0f4f62a7fb4df77d57742ca7e1` |
| 7 | `theorem` | [primeCorrected_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected-density-integral--a5248dce94c9c7d745532286.md) | 58 | `result-track:a5248dce94c9c7d7455322861fdaa7ed36ed86165845ef861c2790a8b5fcfec3` |
| 8 | `theorem` | [primeCorrected_readout_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected-readout-error--2d832e364359b0afc709f0c2.md) | 67 | `result-track:2d832e364359b0afc709f0c2f0b67e5cb153081bfc7edfe0392076ce6207ab87` |
| 9 | `theorem` | [primeCorrected_readout_increment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primecorrected-readout-increment--6e299c8b6cdf0bcc3878fd68.md) | 85 | `result-track:6e299c8b6cdf0bcc3878fd68d7705df6ce2fe25be31f469ee11dbecfe6a32c8b` |
| 10 | `def` | [primeResolutionCount](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primeresolutioncount--c95aeb02811efe63c7975ecc.md) | 96 | `declaration-track:c95aeb02811efe63c7975ecc13be630aa12b35381743de06ea0e6c8b288cd54c` |
| 11 | `theorem` | [primeResolutionCount_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primeresolutioncount-pos--3bb43ffb5f587d7ecd3985e8.md) | 99 | `result-track:3bb43ffb5f587d7ecd3985e891d8c2bf5b5f52628bb18649e8f1f69b0f7b5017` |
| 12 | `theorem` | [primeResolutionCount_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/primeresolutioncount-monotone--642fd763b0b40d0c217c4ef0.md) | 102 | `result-track:642fd763b0b40d0c217c4ef017deaa1d600713812f17e29920a870ee831f9756` |
| 13 | `theorem` | [prime_resolution_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/prime-resolution-budget--0135aa23f0fd0731c54a5a20.md) | 113 | `result-track:0135aa23f0fd0731c54a5a20007ee6f26c36ab7d1c742b60b03b53be68759854` |
| 14 | `theorem` | [prime_resolving_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/prime-resolving-error--4aa06a14e6668f73c981b133.md) | 135 | `result-track:4aa06a14e6668f73c981b133e138b6c942aab0bc4f377cd905a6be7d8066a714` |
| 15 | `theorem` | [prime_decoder_tail_transfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/declarations/prime-decoder-tail-transfer--c91ab84211e5021597301617.md) | 168 | `result-track:c91ab84211e50215973016170bff5cd1fa97d4a868e896a7b60424e768d5ed29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
