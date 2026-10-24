# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FiniteDecoderDraft.Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca3bacecd485693a7d80cf5a9239ef1ea80c1b96",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca3bacecd485693a7d80cf5a9239ef1ea80c1b96`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ResolutionDraft` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/cell--c776c6fc16ef521f0bb46f44.md) | 23 | `declaration-track:c776c6fc16ef521f0bb46f442d6df112cb5dc6f49985ce9fcb023d06e9080332` |
| 2 | `def` | [rightSelector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/rightselector--7dc6a0328b82724aa6325a18.md) | 25 | `declaration-track:7dc6a0328b82724aa6325a18bd0d062905e7566d99ba1dae3fc2b53e0a98d9f6` |
| 3 | `def` | [decodedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/decodedtest--5dcb183711d3784b9a171b46.md) | 28 | `declaration-track:5dcb183711d3784b9a171b468ff498c22ac8f225f1c4c3c7ab7756bb7c396728` |
| 4 | `theorem` | [cell_unique](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/cell-unique--c413e14269713282c0fedf93.md) | 32 | `result-track:c413e14269713282c0fedf93003f6044c64eeeda88a7d5de901637a12a390da0` |
| 5 | `theorem` | [exists_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/exists-cell--8ab508f401ab5f9329163ff6.md) | 43 | `result-track:8ab508f401ab5f9329163ff6f73a3c7e7224635d0eeb860d447940c256e2dd58` |
| 6 | `theorem` | [rightSelector_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/rightselector-on-cell--caf341943ec1901f0030f98e.md) | 54 | `result-track:caf341943ec1901f0030f98e589dd784d6e8d1f7644a9a40be7c6ad66ab7862d` |
| 7 | `theorem` | [decodedTest_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/decodedtest-on-cell--f135b82bc69d3f6aa998c407.md) | 66 | `result-track:f135b82bc69d3f6aa998c4079f660c5618f75ac6fea7732b89e5377483d02cac` |
| 8 | `theorem` | [rightSelector_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/rightselector-zero--b84f9751e7e73c13584aada2.md) | 78 | `result-track:b84f9751e7e73c13584aada22125f1fba77cc78ffd8983948e30722efeeea393` |
| 9 | `theorem` | [rightSelector_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/rightselector-bounds--bfdd3f9c2205aa1d8464f629.md) | 85 | `result-track:bfdd3f9c2205aa1d8464f62964386bc50f13f27795340e649e56a0c41c0cd9d2` |
| 10 | `theorem` | [rightSelector_dist](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/rightselector-dist--8007ca569b7b9978867692fd.md) | 102 | `result-track:8007ca569b7b9978867692fd85b102f0aa3f82c59efb4a4010647d5400243150` |
| 11 | `theorem` | [rightSelector_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/rightselector-upper--75c614833eaa809c0297cefc.md) | 108 | `result-track:75c614833eaa809c0297cefc50a90fdd74c6c283a890db70cd846b4e2ec51547` |
| 12 | `theorem` | [decodedTest_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/decodedtest-eq-comp--1fc219631d3e9b2fe858dec1.md) | 114 | `result-track:1fc219631d3e9b2fe858dec153f58d2f4514a8c8fdb32ce181a5abec6fbbb302` |
| 13 | `theorem` | [rightSelector_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/rightselector-measurable--d56e5253c037c02b723496b2.md) | 128 | `result-track:d56e5253c037c02b723496b2cce60994428936b3b8b0712cf603c2d953c6a008` |
| 14 | `theorem` | [decodedTest_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/decodedtest-measurable--8f2bd59b6901cd6151d1d29f.md) | 133 | `result-track:8f2bd59b6901cd6151d1d29fa013f48563129681d35df5ad53486babe01fb9db` |
| 15 | `theorem` | [cell_constant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/cell-constant-integrable--ee215e03097418bff871e702.md) | 138 | `result-track:ee215e03097418bff871e702ee037dd44d1c91a3e0baa4e72a054d1233ec4de4` |
| 16 | `theorem` | [decodedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/decodedtest-integrable--e952d82165c1d7b685d41daf.md) | 143 | `result-track:e952d82165c1d7b685d41dafc51fde81249e1ea685843dd622d3694cd1f591a4` |
| 17 | `theorem` | [cell_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/cell-subset--73e9fe4d4d230a5700b21cc0.md) | 147 | `result-track:73e9fe4d4d230a5700b21cc07dc7e903776354039b16019ff56f9b14a99a73aa` |
| 18 | `theorem` | [cell_constant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/cell-constant-integral--739eedd7f57944ff33661da0.md) | 154 | `result-track:739eedd7f57944ff33661da0930de4cd177a11fe038197e323fd98b994734829` |
| 19 | `theorem` | [decodedTest_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/decodedtest-integral--f263aeda63581d54b4f44188.md) | 169 | `result-track:f263aeda63581d54b4f44188711d62bb495c1f0b7fa5eafeebe8357add226b87` |
| 20 | `theorem` | [atom_cell_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/atom-cell-identity--9240590e4f063d6f685292df.md) | 184 | `result-track:9240590e4f063d6f685292df556ed76d21a99c165a9d3e0ad17538c29f344629` |
| 21 | `theorem` | [prime_cell_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/prime-cell-readout--4978e892b34a9d9c03446d9a.md) | 196 | `result-track:4978e892b34a9d9c03446d9a95c08b8b92b5ef2abea4437893c4ca01902b8c2e` |
| 22 | `theorem` | [square_cell_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/square-cell-readout--33a56303076253666404abf8.md) | 205 | `result-track:33a56303076253666404abf8b14daf98cc24ac95830dc30658f8b7bc241783a7` |
| 23 | `theorem` | [prime_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/prime-decoded-ledger--4d0e4114b408885ea21e8c97.md) | 215 | `result-track:4d0e4114b408885ea21e8c97a77bd26f7506497a2bf0946c2d0c27682b9578e7` |
| 24 | `theorem` | [square_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/square-decoded-ledger--a3899fafc7b314d300df6987.md) | 229 | `result-track:a3899fafc7b314d300df6987eb1ac7d786f748859732490a96c9639b5d8ded7b` |
| 25 | `theorem` | [complete_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/complete-decoded-ledger--e73a8fb4f2a1d484e081d4ea.md) | 244 | `result-track:e73a8fb4f2a1d484e081d4ea52a54453068611d695edf5bc2a5567d14e2d9565` |
| 26 | `def` | [mesh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/mesh--402b1d9b2be1b5934162241d.md) | 258 | `declaration-track:402b1d9b2be1b5934162241d61d211fc0bb01ee401fc69d45fe25ba14f0bc989` |
| 27 | `def` | [resolutionCount](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/resolutioncount--76b9007c83dd6900de93c0f7.md) | 260 | `declaration-track:76b9007c83dd6900de93c0f731f1de1088aaa9a01a10fde123ab67a379124a1d` |
| 28 | `theorem` | [mesh_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/mesh-pos--1902fab359eae56996d71f7d.md) | 263 | `result-track:1902fab359eae56996d71f7d6ffc3e4892d29085e29f5838957c9cf6c3064041` |
| 29 | `theorem` | [mesh_grid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/mesh-grid--d46acb4630be35b7a906feac.md) | 268 | `result-track:d46acb4630be35b7a906feacae7f49c05d6d5fcc3ffc0a2998b3e6129693416f` |
| 30 | `theorem` | [mesh_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/mesh-decoded-ledger--9ca8dbab1e98459f65d26b4e.md) | 273 | `result-track:9ca8dbab1e98459f65d26b4e4b28f266af758da2c3ddce96d37c6a66d9337313` |
| 31 | `theorem` | [resolutionCount_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/resolutioncount-pos--39c6e2a0e1a2115e72437177.md) | 281 | `result-track:39c6e2a0e1a2115e72437177874955ffa16d63f681ca7c96ee568861ff25170f` |
| 32 | `theorem` | [modulus_coarse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/modulus-coarse--04ed6f618cc1a2d9e0bd12d3.md) | 283 | `result-track:04ed6f618cc1a2d9e0bd12d367108a111bed659d6f991eef5018bd0d717bf050` |
| 33 | `theorem` | [resolution_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/resolution-budget--896d48e510087ff601f89560.md) | 291 | `result-track:896d48e510087ff601f89560f36fbbcda23af96f9e156442b0fa2d4e99900320` |
| 34 | `theorem` | [resolutionCount_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/resolutioncount-monotone--39ecea6d9cf7199d43793c5b.md) | 314 | `result-track:39ecea6d9cf7199d43793c5b1a5486c57ec13915f492cb0a387739da344568a5` |
| 35 | `theorem` | [resolving_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/resolving-error--a702c1a41962017efeaa3c33.md) | 326 | `result-track:a702c1a41962017efeaa3c33c534baf0c4a5f90db7407eca895a19921a4a3aba` |
| 36 | `theorem` | [resolving_error_unconditional](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/declarations/resolving-error-unconditional--655b890995c4d3607da855fb.md) | 354 | `result-track:655b890995c4d3607da855fb343e605a4b5da21c8abbc48f24f682b6cbefb253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
