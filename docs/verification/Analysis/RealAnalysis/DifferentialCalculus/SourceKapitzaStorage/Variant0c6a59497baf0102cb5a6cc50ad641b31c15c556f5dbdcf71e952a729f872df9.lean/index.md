# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e280b25fde4df63d9fefc4be5b8caa53e1521bbc",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e280b25fde4df63d9fefc4be5b8caa53e1521bbc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/storage--b283cc91f77d3c9226fd5485.md) | 26 | `declaration-track:b283cc91f77d3c9226fd54853c22b2ab1906d5e3bd1961ea8fee2c04c284b183` |
| 2 | `def` | [initialStorage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/initialstorage--8bcbd29a25f8dcd551f539c6.md) | 29 | `declaration-track:8bcbd29a25f8dcd551f539c659799ae08029c38538bdff5d25964919e2f24a03` |
| 3 | `theorem` | [drift_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/drift-identity--31b26887e5dc7959b5abcde4.md) | 32 | `result-track:31b26887e5dc7959b5abcde495eb58010dcd93b7fcc242438dd3fffe940793d2` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/hasderivat-storage--2f0999712ba16ca0d7b23fa8.md) | 39 | `result-track:2f0999712ba16ca0d7b23fa820d24a498ee81b2cc021e5c77bb007c7e8846ffa` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/hasderivat-weight--8b680ca8e1543df98c169813.md) | 48 | `result-track:8b680ca8e1543df98c169813ec4a47a2d5b8dd3ef83f2c556ccd06a773acc72b` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/corrector-cancellation--36e5587fdae554644fd71493.md) | 55 | `result-track:36e5587fdae554644fd7149352404656ce9725dd02d9d9da5729c6d9354c7522` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/hasderivat-corrector--42530df69bd7e9ddffd44d2c.md) | 61 | `result-track:42530df69bd7e9ddffd44d2c3b7e2d4a768cb576c43d6f4aa0d773ce665e14ca` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/jump-continuous-corrector--70ac3f8eb5dd793a60c1bff3.md) | 71 | `result-track:70ac3f8eb5dd793a60c1bff3bb725cd6edcd321196a18538db2ab7ae00d46a36` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/jump-jumping-corrector--d048c70a0fad11ae233e8081.md) | 77 | `result-track:d048c70a0fad11ae233e8081c3cb24eb5bdaf985d08bf191752c0ca892d6ffde` |
| 10 | `theorem` | [storage_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/storage-endpoint--b3d08fb8ede15c945688f54f.md) | 84 | `result-track:b3d08fb8ede15c945688f54f1a52c2ea412e3b49c49709bfab6e7eb08bbe95f4` |
| 11 | `theorem` | [storage_complete_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/storage-complete-square--89b9b507335ca37aa4205236.md) | 87 | `result-track:89b9b507335ca37aa4205236f3b1ba6bebfc92bec31e1e1db02aafc9f154fff5` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/initialstorage-reconstruction--1baf1f0610bc822b3165003e.md) | 93 | `result-track:1baf1f0610bc822b3165003e349471ab95af9821673caade18788e914fb1eb4c` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/initialstorage-abs-sub-four--b4bb31d3b055b06f41da3b46.md) | 99 | `result-track:b4bb31d3b055b06f41da3b46da20dd4fa85880a66385f33a148c2798c30aaaaf` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/initialstorage-abs-sub-four-linear--c148ce74b9bba0ec2245a7aa.md) | 120 | `result-track:c148ce74b9bba0ec2245a7aa990cb0103fd36b90b1d8543f453fa72dc7150601` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/initialstorage-epsilon--8c2f087f5c77f73dc5f7cae2.md) | 128 | `result-track:8c2f087f5c77f73dc5f7cae2dfa0649ef92780ea5771585cfab8b92d03c54b5a` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/obstruction-coefficients--b371e9cab8ee5820b7f7f3dc.md) | 144 | `result-track:b371e9cab8ee5820b7f7f3dc769b60f965e05a30b6e85e049748b988d8f31d04` |
| 17 | `theorem` | [obstruction_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/obstruction-product--05743e6111c603fd26cc6d50.md) | 153 | `result-track:05743e6111c603fd26cc6d501b73950c5e26fa935d8a3c6f2c3cc5c76eeb5479` |
| 18 | `def` | [quadraticImpulse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticimpulse--1b26d92fd6c980dc7ad25601.md) | 162 | `declaration-track:1b26d92fd6c980dc7ad2560141a02b00585d87ca434ab916ae9836b05c03632b` |
| 19 | `def` | [quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticmajorant--5c726ff442a54fbb75a6ed26.md) | 166 | `declaration-track:5c726ff442a54fbb75a6ed266659cf6f738dd8fedf9110b11fd211235635baa5` |
| 20 | `def` | [quadraticPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticprimitive--c4ab080403a6b02868016cf2.md) | 170 | `declaration-track:c4ab080403a6b02868016cf20748ca0bb746220fae780d86caf155fbf986da7a` |
| 21 | `def` | [quadraticConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticconstant--3624bd1db79bbdd2eac5d7a4.md) | 175 | `declaration-track:3624bd1db79bbdd2eac5d7a4e1ef6dccbb6ea6e293c152d44aab55f4f8531190` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticimpulse-nonneg--858353b431ce0089d1e38fa3.md) | 177 | `result-track:858353b431ce0089d1e38fa3e685779de3068805708341919b8fa5e375b63571` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticimpulse-le-log--30ab724972d2ff2ea313bb1d.md) | 182 | `result-track:30ab724972d2ff2ea313bb1d8eb75a24dd3329dd6cb99602e1ce7ee595410481` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/log-atom-le-quadraticmajorant--d7a1f56d58527369e55cfbe3.md) | 189 | `result-track:d7a1f56d58527369e55cfbe308d9ea08905763b206efd142de06d36e8ce1580b` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticprimitive-hasderivat--f13b7b8aee05554145216e4e.md) | 205 | `result-track:f13b7b8aee05554145216e4e7e047c2ff85df2030966739fcd2a1283be42edd4` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticprimitive-one--88286636c3f64a945d2e1b33.md) | 240 | `result-track:88286636c3f64a945d2e1b334b3715b79a64054457e9f4cdcbc15ed7b9cbcb0d` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticprimitive-nonpos--338fab238e43ad2e7fb6e2ec.md) | 244 | `result-track:338fab238e43ad2e7fb6e2eca3709b7ebbae5b1e37467e6cd06f4f64e2da273a` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticmajorant-continuouson--9e136f443af89b06979a3953.md) | 253 | `result-track:9e136f443af89b06979a3953dc37bd7fc907675c22934df84162b5515cdac550` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticmajorant-integral--ac0552f61e0af3572ec6c1b5.md) | 263 | `result-track:ac0552f61e0af3572ec6c1b561e2a2ded00c789bc620184d4ea20bbfae887bfa` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticmajorant-integral-le--578279c00cbf1288e716aca3.md) | 276 | `result-track:578279c00cbf1288e716aca3cd2c6665dffa2e7b020f43253f5f3ee4950c47a2` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticimpulse-sum-le--5993d87fe3f097611f0898ac.md) | 283 | `result-track:5993d87fe3f097611f0898ac91464be48dc659ad6f2814927e8014a8cba490fb` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/declarations/quadraticimpulse-closed-cutoff-le--dc98740a05b8690457a82b7c.md) | 325 | `result-track:dc98740a05b8690457a82b7c2bd3d8c5a8319bb72b4652c96b4bcce2042472a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
