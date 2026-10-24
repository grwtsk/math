# Verification target: GRWTSK.Topology.GeneralTopology.Continuation.Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6788ac9850a5f144c42092513babeef38d9a377",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6788ac9850a5f144c42092513babeef38d9a377`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.InitialFormula` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [zeroOccurrence_countable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/zerooccurrence-countable--a9398a9552b1e61329eab424.md) | 44 | `declaration-track:a9398a9552b1e61329eab424edc548a26e866acf63bef2e537c86f1fcd0c0b56` |
| 2 | `theorem` | [finite_occurrences_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/finite-occurrences-norm-le--98c9496e9b4b10191b065762.md) | 55 | `result-track:98c9496e9b4b10191b065762a1c07c3a87876f72d72c40125146050d061f5e74` |
| 3 | `theorem` | [finite_occurrences_scaled_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/finite-occurrences-scaled-norm-le--33f326d1210c71e2b429c570.md) | 69 | `result-track:33f326d1210c71e2b429c5702945ec80bea293c0bebda001d6892b8fc43d1796` |
| 4 | `theorem` | [locallyFinite_scaled_values](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/locallyfinite-scaled-values--bfc9ece5d96a3ea000efc8d7.md) | 79 | `result-track:bfc9ece5d96a3ea000efc8d70cc60dc1741e9c75a056b8e52e9874946aca7e48` |
| 5 | `theorem` | [isClosed_scaled_range](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/isclosed-scaled-range--2d81201fb33754111ba43861.md) | 100 | `result-track:2d81201fb33754111ba43861e4ddb535ee488483a7a6c14d84ad981d14ac4903` |
| 6 | `def` | [candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/candidatesingularities--99a7d67e0745595ffbaf9640.md) | 111 | `declaration-track:99a7d67e0745595ffbaf9640adb790942eb3db8bd1c69a93f5000851dc27b696` |
| 7 | `def` | [convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/convergencedomain--d49456a40c906462714f3f36.md) | 117 | `declaration-track:d49456a40c906462714f3f3614f5b60a37cbaab359d8d2a7f0683b62d65cb41b` |
| 8 | `theorem` | [isClosed_candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/isclosed-candidatesingularities--525ebe76f969042122825e7e.md) | 120 | `result-track:525ebe76f969042122825e7e97cada7ac70ec5f2907c7429558baab38175be95` |
| 9 | `theorem` | [isOpen_convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/isopen-convergencedomain--e69e4ae64d9837f9e1c9fb7e.md) | 127 | `result-track:e69e4ae64d9837f9e1c9fb7e7c7e28942e0d6ab9540f3ecdb9f58ef10571f837` |
| 10 | `theorem` | [mem_convergenceDomain_iff](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/mem-convergencedomain-iff--4f7c7853bffc903190544757.md) | 132 | `result-track:4f7c7853bffc903190544757386b427726a4519b145dd0d9091d11d634340574` |
| 11 | `theorem` | [initial_halfPlane_subset_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/initial-halfplane-subset-domain--911542c5ed9bca7d752574f0.md) | 144 | `result-track:911542c5ed9bca7d752574f08600f93ce0386261b47c06c31489fd694afab3a1` |
| 12 | `theorem` | [J_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/j-analytic--707aab3d5c98050dad488ec8.md) | 162 | `result-track:707aab3d5c98050dad488ec84628c3b22807841c5037758641b379ad1efbf33a` |
| 13 | `theorem` | [polynomialKernel_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/polynomialkernel-analytic--08c9f72c8bf7aed22fe6b586.md) | 169 | `result-track:08c9f72c8bf7aed22fe6b586e52bcb2a8dda56dd480d27a567e346b3da8d88ca` |
| 14 | `theorem` | [sourceKernel_analytic_of_denominators](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-analytic-of-denominators--ccfccd3f81f6c81b9e89f514.md) | 178 | `result-track:ccfccd3f81f6c81b9e89f514cac64dc40aaa4708cbbc9c098fce460bb3cf1feb` |
| 15 | `theorem` | [sourceKernel_analytic_on_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-analytic-on-domain--5c3e26e74add78ccb5722c90.md) | 207 | `result-track:5c3e26e74add78ccb5722c90f6d52fa19d61c6a6455162ad5d7e0d4b39cf36a6` |
| 16 | `theorem` | [laplaceKernel_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/laplacekernel-norm-le-factorial--98716fee1585fd87da608e0d.md) | 227 | `result-track:98716fee1585fd87da608e0dc074786f0fae4f2be0c42c3b6142d518d2e4f92a` |
| 17 | `theorem` | [J_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/j-norm-le-factorial--b5d989fb11ed57b478a71df5.md) | 270 | `result-track:b5d989fb11ed57b478a71df5c8524caf44a06c30d2a057fb5bcdd76660c44444` |
| 18 | `theorem` | [J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/j-norm-le--286f211724eaa59e35648bda.md) | 280 | `result-track:286f211724eaa59e35648bda1d5e321a20448b3a46995c123b8a89039735b2a5` |
| 19 | `theorem` | [positivePolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/positivepolynomial-coeff-norm-le--aebdf15fe9e7bbdf825d9551.md) | 293 | `result-track:aebdf15fe9e7bbdf825d9551bb2a8ed2aa389eabd2e4f07607675e8b975aeb10` |
| 20 | `theorem` | [mixedPolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/mixedpolynomial-coeff-norm-le--320235402c3da71b5319956a.md) | 311 | `result-track:320235402c3da71b5319956aafbde67a97c5fdc315cd7f55bd544fe2984607e3` |
| 21 | `theorem` | [polynomialKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/polynomialkernel-norm-le--094fe362d7ae9b217dca000a.md) | 329 | `result-track:094fe362d7ae9b217dca000a6c4719058b2ef65178913dd9d0832c979ac2e968` |
| 22 | `theorem` | [shifted_norm_ge_one](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/shifted-norm-ge-one--2a1fd422f1d732f688e2ad5e.md) | 355 | `result-track:2a1fd422f1d732f688e2ad5e50e2b2c63bedc8ce6f4c5666816f3867ae0a200c` |
| 23 | `theorem` | [shifted_J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/shifted-j-norm-le--71395b819dc37fd76db0d008.md) | 366 | `result-track:71395b819dc37fd76db0d008f3ff0677b96aa91ef0e5d3c4e0c9960ecd62f9f3` |
| 24 | `def` | [tailConstant](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/tailconstant--ebd1705815f8d8c55f098f58.md) | 391 | `declaration-track:ebd1705815f8d8c55f098f5880f8b476e9ce1fffa2ae3786f7012ff9d04934b5` |
| 25 | `theorem` | [tailConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/tailconstant-nonneg--5394aa1f3c17dd9155bf55e8.md) | 395 | `result-track:5394aa1f3c17dd9155bf55e8fc6dacffafef0ca67a386638243963adece03a90` |
| 26 | `theorem` | [sourceKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-norm-le--5f4d711dbe6991048070da54.md) | 403 | `result-track:5f4d711dbe6991048070da54270333e2f34b5dd7f32cdaadf559c04ec75b1284` |
| 27 | `theorem` | [compact_unshifted_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/compact-unshifted-bound--4eca884165df0f1660cf8e5c.md) | 525 | `result-track:4eca884165df0f1660cf8e5c84f278e35444cdddc28acae398caadb599f9a2ad` |
| 28 | `theorem` | [compact_sourceKernel_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/compact-sourcekernel-tail-bound--1d838a3b9e0c3979214f5f63.md) | 563 | `result-track:1d838a3b9e0c3979214f5f63441f300d4f20f7196ba5e464a7e9dbd161a0f192` |
| 29 | `def` | [compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/compactkernelnorm--ed90de6220f689370e5172b8.md) | 589 | `declaration-track:ed90de6220f689370e5172b893c3c7da514c61a389d61564af0a62c5ad871536` |
| 30 | `theorem` | [sourceKernel_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-continuouson--a57ed69f4e198e61c91b8998.md) | 594 | `result-track:a57ed69f4e198e61c91b89980acb2cc20f0d38ea7d24905677bc33dcd26f31a6` |
| 31 | `theorem` | [norm_le_compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/norm-le-compactkernelnorm--814756517588140bb3ab887d.md) | 604 | `result-track:814756517588140bb3ab887d1df28d2d8cd89c83b1036629d75fc4fe15203518` |
| 32 | `theorem` | [compactKernelNorm_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/compactkernelnorm-nonneg--b7fffce680071f7f57fd2ae9.md) | 615 | `result-track:b7fffce680071f7f57fd2ae93973334422f2a2ca80f1f968b7a0fc4a99019e25` |
| 33 | `theorem` | [eventually_shifted_norm_ge](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/eventually-shifted-norm-ge--4f3a69b4f288c1556d084e27.md) | 626 | `result-track:4f3a69b4f288c1556d084e27b5821ea395127a12983349134c9087ac187579f7` |
| 34 | `theorem` | [sourceKernel_compact_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-compact-tail-bound--c454ea1da2aa3f175d8328ce.md) | 633 | `result-track:c454ea1da2aa3f175d8328cecd5635c4ab510feef22c1c396009206bec3e344b` |
| 35 | `theorem` | [sourceKernel_compact_norms_summable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-compact-norms-summable--02fc004c3c5a6984ccc32424.md) | 659 | `result-track:02fc004c3c5a6984ccc324243f1cf63a543ee1efd15f069b804b3cae7abc72c5` |
| 36 | `theorem` | [sourceKernel_hasSumUniformlyOn_compact](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-hassumuniformlyon-compact--f5500ad4784c2209cdbd610c.md) | 677 | `result-track:f5500ad4784c2209cdbd610cc7d27953078e5f6de8d241c6b7cde59fb9d4bd8f` |
| 37 | `theorem` | [sourceKernel_hasSumLocallyUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-hassumlocallyuniformlyon--aada8153205c361afc3540d5.md) | 691 | `result-track:aada8153205c361afc3540d51d952f070b23ac628590d02162edd0ae733d1d72` |
| 38 | `theorem` | [sourceKernel_tsum_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-tsum-analytic--78c7493c2e4bd47449ba2488.md) | 705 | `result-track:78c7493c2e4bd47449ba2488a78dc767488b892fc5b6389e8d209ed05c666e13` |
| 39 | `def` | [continuedTransform](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/continuedtransform--d30b60396a24dda7125b8bb8.md) | 724 | `declaration-track:d30b60396a24dda7125b8bb83624c6f69a12a16afc086e8b75f5d09d30257450` |
| 40 | `theorem` | [continuedTransform_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/continuedtransform-analytic--3c2d1e66d23e02594ea98108.md) | 728 | `result-track:3c2d1e66d23e02594ea98108091ba940e9bb4e3f0963be9e7c67233a43dbeb6d` |
| 41 | `theorem` | [sourceKernel_eq_equation20_tsum](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/sourcekernel-eq-equation20-tsum--7be45b3751d257ff0084d5e6.md) | 732 | `result-track:7be45b3751d257ff0084d5e6c0c260cb01e9ea6dd6c8f8508104531ed126d678` |
| 42 | `theorem` | [initial_agreement](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/initial-agreement--5ee16dc4b6d3bda915c1403c.md) | 744 | `result-track:5ee16dc4b6d3bda915c1403ceecd750db2317ffa5186578e66f674e2be130c82` |
| 43 | `def` | [CandidateFreeContinuationCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/candidatefreecontinuationcheckpoint--324cb7669f1b470fb0f01347.md) | 755 | `declaration-track:324cb7669f1b470fb0f01347178b21fb036bee433676d77ba79f554aef82acea` |
| 44 | `theorem` | [candidate_free_continuation_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/declarations/candidate-free-continuation-checkpoint--aac3982d69b165bdabf89230.md) | 770 | `result-track:aac3982d69b165bdabf89230f84b3218191c455725a98c7fd221ec4c155fc900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
