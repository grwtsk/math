# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceSignedHeatResidual.Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60d96d029b503bb95f4197761dc94058d8dde916",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60d96d029b503bb95f4197761dc94058d8dde916`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSignedHeat` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [heatRemainderKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatremainderkernel--cc2e9a2b07495d510f4e4562.md) | 24 | `declaration-track:cc2e9a2b07495d510f4e4562975e7866c25d523d4cdd231e49ceba3c2b29c263` |
| 2 | `def` | [heatResidualCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatresidualcorrection--407d12fa6768f16986555950.md) | 27 | `declaration-track:407d12fa6768f16986555950975e31ca7458a32f60fc14bdaa4933df9a7ba121` |
| 3 | `theorem` | [heatResidualCorrection_eq_mixed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatresidualcorrection-eq-mixed--367880ed509837753777c37c.md) | 31 | `result-track:367880ed509837753777c37c29b6a357980b436de388261cb9153dff199706f5` |
| 4 | `theorem` | [heatResidualCorrection_eq_paid_sub_terminal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatresidualcorrection-eq-paid-sub-terminal--a551490fbcc8c2146fd54931.md) | 41 | `result-track:a551490fbcc8c2146fd5493177cf440fc1417666c9e83f05a9bcd55612226182` |
| 5 | `theorem` | [heatRemainderKernel_unit_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatremainderkernel-unit-difference--5ccc4a2c8a92569144706934.md) | 48 | `result-track:5ccc4a2c8a925691447069341faaea11b27666b6f650eddafd96cca18a342be7` |
| 6 | `theorem` | [heatRemainderKernel_not_additive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatremainderkernel-not-additive--181938a286fd11618dbbe4d5.md) | 57 | `result-track:181938a286fd11618dbbe4d524c672e02b2c503671b37a320a5e8f645aa31f39` |
| 7 | `def` | [heatResidualCorrectionIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatresidualcorrectionintegral--6249a6f3cdb1b1baf6d2e1ae.md) | 66 | `declaration-track:6249a6f3cdb1b1baf6d2e1ae6ceb9eb35e2ee882e2c0299ec37430b368223ccf` |
| 8 | `theorem` | [bounded_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/bounded-integrable--4648de855c24c877e61d3973.md) | 73 | `result-track:4648de855c24c877e61d39733fc1598cdecfb35e781e9891dbce65209a40c267` |
| 9 | `theorem` | [add_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/add-bound--107b5b3cec37db97dcd6a92e.md) | 78 | `result-track:107b5b3cec37db97dcd6a92e183d7cc9ebe98e03d4e4133ae4ce5126b5509f12` |
| 10 | `theorem` | [heatRemainderKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatremainderkernel-integrable--05fce1024c3705cb8fb47c81.md) | 85 | `result-track:05fce1024c3705cb8fb47c81f273c45f29cc80eab5224589792addab843163ef` |
| 11 | `theorem` | [heatRemainderKernel_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatremainderkernel-integral-eq--84758b5b7e8640ec12db6960.md) | 96 | `result-track:84758b5b7e8640ec12db69605426c6be713d3013970bd0b6ed633e082a97f6ee` |
| 12 | `theorem` | [heatResidualCorrection_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatresidualcorrection-integrable--5b69ebcf1dbb9879235a9275.md) | 111 | `result-track:5b69ebcf1dbb9879235a927582e33df125c566ebb9ecc86cd79f79963fe8d8d0` |
| 13 | `theorem` | [heatResidualCorrectionIntegral_eq_remainder_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatresidualcorrectionintegral-eq-remainder-sub--38f1c080ee036fe80542017f.md) | 120 | `result-track:38f1c080ee036fe80542017f9ee0476d0ac45f547c67b87eeb202ec0c7e7b676` |
| 14 | `theorem` | [integral_split_full_terminal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/integral-split-full-terminal--10f93b3713620fb481e3b24d.md) | 137 | `result-track:10f93b3713620fb481e3b24d29ebbd53ddc6b82f26bd6d6f0393830d0271f61a` |
| 15 | `theorem` | [integral_split_residual_terminal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/integral-split-residual-terminal--f75219bbf7d599d5ed478146.md) | 149 | `result-track:f75219bbf7d599d5ed478146ef4b4cdbdb32f1b2d9540f55a5b5c9c3ae7b506f` |
| 16 | `theorem` | [heatResidualCorrectionIntegral_eq_paid_sub_terminals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/heatresidualcorrectionintegral-eq-paid-sub-terminals--f4620bf215d07dee2f38a924.md) | 158 | `result-track:f4620bf215d07dee2f38a9240b068dfa109572b06484a12744af3dde60f35cd4` |
| 17 | `structure` | [ActualSourceResidualJoin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/actualsourceresidualjoin--17d24b98081ec5707477e999.md) | 169 | `declaration-track:17d24b98081ec5707477e9991218707b00e7f23486d2a38b4f62a0686992fa08` |
| 18 | `def` | [sourceResidualSignedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/sourceresidualsignedheat--e802d3cb895d1315a708be1a.md) | 179 | `declaration-track:e802d3cb895d1315a708be1a73986e279032e51c62b6bbabeaa8f9217e08e3a3` |
| 19 | `def` | [sourceResidualHeatRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/sourceresidualheatremainder--7767d000ec095016309381e6.md) | 183 | `declaration-track:7767d000ec095016309381e6259092d8b30dc1e69cc13a6bd413dabf9d0dbdcd` |
| 20 | `def` | [sourceResidualCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/sourceresidualcorrection--c70007bc76fd33226c2aeefa.md) | 187 | `declaration-track:c70007bc76fd33226c2aeefaf0375cfd8611002bc90e9641f500d6f99b0a89ae` |
| 21 | `def` | [sourcePaidReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/sourcepaidreadout--ca17cc4ef799c84e0f546189.md) | 191 | `declaration-track:ca17cc4ef799c84e0f546189fe62692daedf826d6fe65c63261c5e88b07a1dd1` |
| 22 | `theorem` | [ActualSourceResidualJoin.paid_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/actualsourceresidualjoin-paid-eq--61784f481489001a5b2519d5.md) | 195 | `result-track:61784f481489001a5b2519d5628dd38cf4bacb87f04214e2a05a584022685a0c` |
| 23 | `theorem` | [ActualSourceResidualJoin.paid_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/actualsourceresidualjoin-paid-measurable--6171a56fba29e5447c539a6b.md) | 203 | `result-track:6171a56fba29e5447c539a6bfe5fb67529f6c523b50fbb0ec9c71a337375a55d` |
| 24 | `theorem` | [ActualSourceResidualJoin.paid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/actualsourceresidualjoin-paid-bound--01d12a99b970f3caa6735b58.md) | 210 | `result-track:01d12a99b970f3caa6735b5801516eddb6994cc2f5d57684d92387cf667f7ebe` |
| 25 | `theorem` | [compensatedSourceSum_eq_fullTerminal_residualRemainder_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/compensatedsourcesum-eq-fullterminal-residualremainder-correction--f44a7ed4069b916b91842f5d.md) | 223 | `result-track:f44a7ed4069b916b91842f5de3ca5a6a260e31d88d0c8e4e2ebbdfd6c95d4f79` |
| 26 | `theorem` | [compensatedSourceSum_eq_residualTerminal_remainder_paid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/compensatedsourcesum-eq-residualterminal-remainder-paid--925f73beb173ea1a9843e3cb.md) | 242 | `result-track:925f73beb173ea1a9843e3cbe0466545a682616b839ecb701a24a6a31788cbbc` |
| 27 | `theorem` | [sourceResidualSignedHeat_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/sourceresidualsignedheat-terminal-bound--87f2bcd915718136cb7b7fdf.md) | 260 | `result-track:87f2bcd915718136cb7b7fdf44e3b60d453e503749157be0e5600f0c813ff9e1` |
| 28 | `theorem` | [compensated_tail_of_residual_heat_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/compensated-tail-of-residual-heat-split--83a6040620576a01d95d3da2.md) | 267 | `result-track:83a6040620576a01d95d3da28f7e35e7c8a0a2a15aed804cb4549c5745df2cc4` |
| 29 | `theorem` | [compensated_tail_of_residual_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/compensated-tail-of-residual-terminal-bound--f1c57adb6fcf8858c89f3d28.md) | 281 | `result-track:f1c57adb6fcf8858c89f3d28e262cfd549d86e63c1ad7c1d50e1f2f15b173e0d` |
| 30 | `theorem` | [compensated_tail_of_residual_linear_paid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/compensated-tail-of-residual-linear-paid--69fb142987708feebe9552f4.md) | 295 | `result-track:69fb142987708feebe9552f4972d4551a0285a144db312586e2004a3908662b1` |
| 31 | `theorem` | [estimate_of_residual_linear_paid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/estimate-of-residual-linear-paid--7c5942f4bab50891c4916b72.md) | 307 | `result-track:7c5942f4bab50891c4916b72f8f210ee85572efdb6a0b938ad8137f83ce2b399` |
| 32 | `theorem` | [estimate_of_residual_heat_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/estimate-of-residual-heat-split--ffc3a488d6aac3e35754705c.md) | 317 | `result-track:ffc3a488d6aac3e35754705c39c7c35b3f384e5fe5defd10143f5721d3c375ec` |
| 33 | `theorem` | [estimate_of_residual_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/declarations/estimate-of-residual-terminal-bound--b19f709e798c7ff1e4b3a7f9.md) | 327 | `result-track:b19f709e798c7ff1e4b3a7f96f738a03f6dece72ad6e37de992ca0e2342bf8ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
