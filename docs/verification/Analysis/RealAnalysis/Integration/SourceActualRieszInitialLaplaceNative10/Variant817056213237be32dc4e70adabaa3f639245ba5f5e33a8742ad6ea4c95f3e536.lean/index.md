# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative10.Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c101b97d126a214bda610c0b22d9b65f41ed84b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c101b97d126a214bda610c0b22d9b65f41ed84b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/realrampantiderivative--a40499e89eb7e15b4735f465.md) | 29 | `declaration-track:a40499e89eb7e15b4735f4654b8cdbf24c043131590a0c00b91d1151c742eb14` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/realrampantiderivative-hasderivat--dcd0112c1c35dc1667934951.md) | 32 | `result-track:dcd0112c1c35dc1667934951505b4ee1c72846027e57ea74de594db6e922e8d6` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/realrampantiderivative-tendsto--7568d474e2efe525a52fe357.md) | 42 | `result-track:7568d474e2efe525a52fe3572ed0bfdb5c5508c0799c432adacca9803e393123` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/realramp-tail-integrable--b396831d8459c9eadf6bbf1d.md) | 56 | `result-track:b396831d8459c9eadf6bbf1d1253b93897c26ed259985192238151582abe0bfc` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/realramp-tail-integral--2095fb17967f1fd4c897d9d8.md) | 64 | `result-track:2095fb17967f1fd4c897d9d898b728316bd16c3161f4f5cfcbe0d4c9b97e57b4` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/zeroon-lower-integrable--048b5dcd2f1cbbe131ce9763.md) | 71 | `result-track:048b5dcd2f1cbbe131ce9763f4afdf7fd250bc939b2ef6e75b702a61bb73b6e1` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/realramp-integrable--0e38c12b5023571201fa0dae.md) | 77 | `result-track:0e38c12b5023571201fa0dae91ceffdb6893d9b5ae816b2c6e0e5db4bb420093` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/realramp-integral--ada712bf34419c22fcf38db2.md) | 87 | `result-track:ada712bf34419c22fcf38db274da8b2d3fb5c32d696a17c36f47f85c5136c476` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/complexramp-norm--1cf901a0dcdc5e9f4b206fdf.md) | 105 | `result-track:1cf901a0dcdc5e9f4b206fdf9641010e1b76583c1f3823e176910e8f46109870` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualsinglerieszramp-integrable--b87c902de775ce89f283b2b0.md) | 114 | `result-track:b87c902de775ce89f283b2b0ef43733af6886a52ce9eef3705c8ffca7796e417` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualsinglerieszramp-integral-norm--dbb467b975088bf9fe1ad4f9.md) | 124 | `result-track:dbb467b975088bf9fe1ad4f9f0a9c71555de02f1ceb8f558aa9a7d81f41586b0` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/complexrampantiderivative--60558ada8be05b54300ca053.md) | 130 | `declaration-track:60558ada8be05b54300ca053c602e2f71daa9cb5fde9ec2a6b8d402fc3a106f2` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/complexrampantiderivative-hasderivat--b9d9518c8e9aa9833260ccb6.md) | 133 | `result-track:b9d9518c8e9aa9833260ccb66f1fd31dd6da2b564cb26124fab15a09c3dbf35e` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/complex-exp-monomial-zero--aa39f5b11a00a4f782797f6a.md) | 149 | `result-track:aa39f5b11a00a4f782797f6ab154b5af07515e8ec3c468431e618d9b49c7dddd` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/complexrampantiderivative-tendsto--95293c2d4eff2546d56f8c28.md) | 163 | `result-track:95293c2d4eff2546d56f8c28df480b153171d65ddec7c19cb1554c40fcc5284f` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualsinglerieszramp-integral--27258a15a223e6cd421eafb5.md) | 177 | `result-track:27258a15a223e6cd421eafb5f29f5a44dcef9d432f4de896754f2e48e31caf0a` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatom--3ae1d5a5a14f5fd2e8496d18.md) | 210 | `declaration-track:3ae1d5a5a14f5fd2e8496d18e8eb4e1a7aaa4687f4debbb0485f51729228d8db` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualmangoldtrieszlaplace--a376fa69175c3b16336f24e0.md) | 215 | `declaration-track:a376fa69175c3b16336f24e0e3002e81dba5a3fb20072ca8a330028e754b80a0` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/atom-factor--5fa26a670cdae686cc374754.md) | 219 | `result-track:5fa26a670cdae686cc3747549d110a6f1a5b0e876cdc5bf3a1b75cce5db80477` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatom-integrable--44463a602d295622d397ff4b.md) | 228 | `result-track:44463a602d295622d397ff4bc60cd459f5e221a6b0bebfa78df2b338360bc5ee` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatom-integral-norm--c7eb09fc7dd77051bfde0f81.md) | 247 | `result-track:c7eb09fc7dd77051bfde0f81042fbd078edd1ac217b16b0921de526dc35dbe31` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--7f68fcadf146a22b474812d6.md) | 282 | `result-track:7f68fcadf146a22b474812d690328e968e9815535c5aff2ea6f180a6c9cb6453` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatoms-tsum--2c4c56e99d5fb6b86eb53322.md) | 293 | `result-track:2c4c56e99d5fb6b86eb533222a46506329d6e89439f6ef10b94b2694eed0cd21` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszprimitive-continuous--941bc5240d27161abaf06e8e.md) | 318 | `result-track:941bc5240d27161abaf06e8e4b6f7c8b544392ae05aed943d0cf347a97e0ef2b` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--d698796f12052ac7fb0e1dfd.md) | 337 | `result-track:d698796f12052ac7fb0e1dfd5b2d9f61f90d79962f5ed6666c31e4e32a03449d` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatoms-integral-tsum--a6af7b17f9bb9591905d2717.md) | 367 | `result-track:a6af7b17f9bb9591905d27170f210580cf456aadcf3889ce390c6f7d02aa148b` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszlaplaceatom-integral--17cf4fee268b141fb4bc26a8.md) | 375 | `result-track:17cf4fee268b141fb4bc26a8f6bbb64a35b141663892400ddead86b622c6f84f` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/continuousramp-weight-eq--0f9a2a91acb35094ff46147d.md) | 400 | `result-track:0f9a2a91acb35094ff46147d10a8497df97213ce15ae4601ae57e464324351ca` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszcontinuousramp-laplace-integrable--db060fd4d0cc0f7651d2420a.md) | 412 | `result-track:db060fd4d0cc0f7651d2420a16764992d9163a0b574c76910f5e833bcd205e70` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualrieszcontinuousramp-laplace-integral--35b45f068a7b79b1683c246f.md) | 429 | `result-track:35b45f068a7b79b1683c246fdfec515ae357b12a5581f27a592fdee40d520e6e` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualh-weight-eq-sum-sub--e5cd0bf66256ef252ba034a6.md) | 474 | `result-track:e5cd0bf66256ef252ba034a6fee62cf474f2c65c696900abb5e430537f97d622` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualmangoldtrieszlaplace-integrable--3fe801d75df4b6febcf796c3.md) | 483 | `result-track:3fe801d75df4b6febcf796c3fb5a0dda873005977a1799a94d79dbde03555970` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--5465ecb515a24a770e61a635.md) | 491 | `result-track:5465ecb515a24a770e61a63504477e299fd0ece998765f5d21927d474f0876ff` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--75ab56aac477a44b4c697aa4.md) | 506 | `result-track:75ab56aac477a44b4c697aa4a90f9ce13df0ff6703ec5c9f76638ff30b9d877a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
