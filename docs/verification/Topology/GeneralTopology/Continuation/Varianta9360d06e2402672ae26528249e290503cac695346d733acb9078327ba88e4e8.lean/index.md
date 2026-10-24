# Verification target: GRWTSK.Topology.GeneralTopology.Continuation.Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34e2567e57a9c60b8a98af3dbea45e7c756e786f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34e2567e57a9c60b8a98af3dbea45e7c756e786f`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.InitialFormula` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [zeroOccurrence_countable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/zerooccurrence-countable--3fc2d9dcc88fe2e1131e0969.md) | 51 | `declaration-track:3fc2d9dcc88fe2e1131e0969640d197659cd73bd8c021b080898960af86f12bc` |
| 2 | `theorem` | [finite_occurrences_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/finite-occurrences-norm-le--f293f053377176f63fc000b0.md) | 62 | `result-track:f293f053377176f63fc000b0ab49a88ab18fe802a300d3eaf179e48b3039ffd6` |
| 3 | `theorem` | [finite_occurrences_scaled_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/finite-occurrences-scaled-norm-le--fd1bcc4bd9dfadf9557fdf13.md) | 76 | `result-track:fd1bcc4bd9dfadf9557fdf13c18e93802bdfcc4b93923714ede15f59057981c4` |
| 4 | `theorem` | [locallyFinite_scaled_values](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/locallyfinite-scaled-values--3ab27731c18d2893f67f50fd.md) | 86 | `result-track:3ab27731c18d2893f67f50fddf321d29b6c4b1529248dd9dfdd58c4761e317fa` |
| 5 | `theorem` | [isClosed_scaled_range](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/isclosed-scaled-range--5dcbd7ff2a9e640106d25177.md) | 107 | `result-track:5dcbd7ff2a9e640106d2517766630092a91d46b6b4f519f702ad9ac4e97abf25` |
| 6 | `def` | [candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/candidatesingularities--e4d7ab34001a07818fdb63da.md) | 118 | `declaration-track:e4d7ab34001a07818fdb63da9146ad5da46e03462afcb1e677de6a04fa2f1d74` |
| 7 | `def` | [convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/convergencedomain--0e0811bfbfc9a169bc8d016c.md) | 124 | `declaration-track:0e0811bfbfc9a169bc8d016c7928edb9e199747ac905ff767f554c020f4b0a3f` |
| 8 | `theorem` | [isClosed_candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/isclosed-candidatesingularities--2aa4535e8fbc111c047e14a2.md) | 127 | `result-track:2aa4535e8fbc111c047e14a2e965254ec5f320242f386185f75b8bbc3c5e6959` |
| 9 | `theorem` | [isOpen_convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/isopen-convergencedomain--3411241f2d324138253b949f.md) | 134 | `result-track:3411241f2d324138253b949f0283bf3acafd8ae663c4f0571a2f34be3de0dcc3` |
| 10 | `theorem` | [mem_convergenceDomain_iff](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/mem-convergencedomain-iff--888eef63caef136117f96a65.md) | 139 | `result-track:888eef63caef136117f96a659d8076665f79d4127ceeea0793bf0bba095ab894` |
| 11 | `theorem` | [initial_halfPlane_subset_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/initial-halfplane-subset-domain--bfc971190c90d3fdeb317e4c.md) | 151 | `result-track:bfc971190c90d3fdeb317e4c8554fe557fed5ffe6e44a3234ed506109e1799cd` |
| 12 | `theorem` | [J_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/j-analytic--688a4c219d8a6793a837ca1d.md) | 169 | `result-track:688a4c219d8a6793a837ca1d31646afe4dc03b462e7d989337a513be86f65004` |
| 13 | `theorem` | [polynomialKernel_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/polynomialkernel-analytic--dbcd4c751443c3843200baf6.md) | 176 | `result-track:dbcd4c751443c3843200baf649c57302f81bb791e2fe5dec5fcba3dfc6600b82` |
| 14 | `theorem` | [sourceKernel_analytic_of_denominators](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-analytic-of-denominators--123eaeff71581071d375ece8.md) | 185 | `result-track:123eaeff71581071d375ece8dc3dcd5045d4e60b4164d47767cae8e9ab6ad9ee` |
| 15 | `theorem` | [sourceKernel_analytic_on_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-analytic-on-domain--489090aeac2e41cc42649472.md) | 214 | `result-track:489090aeac2e41cc426494727ace8d7e5210e23d3f4c6c327c75ccf8351f99c1` |
| 16 | `theorem` | [laplaceKernel_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/laplacekernel-norm-le-factorial--027f5e9429084c02a99a28b3.md) | 234 | `result-track:027f5e9429084c02a99a28b371b3e439b115d9a8e9c53f43dfe93b7e8cd46517` |
| 17 | `theorem` | [J_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/j-norm-le-factorial--8c7f0599cd8167ed88d59240.md) | 277 | `result-track:8c7f0599cd8167ed88d592407a23cd57f0e999968a344a75f53dee55fc99dfb8` |
| 18 | `theorem` | [J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/j-norm-le--6799edddd77e1a74a2c5a15a.md) | 287 | `result-track:6799edddd77e1a74a2c5a15a838ba1c08d315070914003ee19bd9e9cde22d942` |
| 19 | `theorem` | [positivePolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/positivepolynomial-coeff-norm-le--d16c550aebe866783d64002f.md) | 300 | `result-track:d16c550aebe866783d64002fd2a658755a4b6adc24cb594f3ceaa80c347a94d0` |
| 20 | `theorem` | [mixedPolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/mixedpolynomial-coeff-norm-le--0bbea5b684f01da4939c7b4f.md) | 318 | `result-track:0bbea5b684f01da4939c7b4f69b1b989b62fb79100fa7f9c2708bc2ca195e8a1` |
| 21 | `theorem` | [polynomialKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/polynomialkernel-norm-le--a0e8e3fdb37d1ade5ed0b794.md) | 336 | `result-track:a0e8e3fdb37d1ade5ed0b794968e490b65f8c67aa31d83d00501050e6bceb517` |
| 22 | `theorem` | [shifted_norm_ge_one](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/shifted-norm-ge-one--7f4216304d12fb109a9a8365.md) | 362 | `result-track:7f4216304d12fb109a9a8365ababf73c0d2e45a1520358f0b2e36bddb508a63f` |
| 23 | `theorem` | [shifted_J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/shifted-j-norm-le--0f0be8f2ed63103994c4ffee.md) | 373 | `result-track:0f0be8f2ed63103994c4ffee8f8019396f46abfbe614720a2bc8c5ebc6ed76f2` |
| 24 | `def` | [tailConstant](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/tailconstant--54c7c1581fdbc77bd70e47d0.md) | 396 | `declaration-track:54c7c1581fdbc77bd70e47d0fc46a5d6644051dd59c848a8c55a282a6c1f7a71` |
| 25 | `theorem` | [tailConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/tailconstant-nonneg--f513a10ee6ae9e3a37201ef0.md) | 400 | `result-track:f513a10ee6ae9e3a37201ef0126915954244c415ae147a51503887a5476fb6d9` |
| 26 | `theorem` | [sourceKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-norm-le--798dc8899b4e7a054939e1b2.md) | 408 | `result-track:798dc8899b4e7a054939e1b20901092717632c8c7a659a8346dd298f23926846` |
| 27 | `theorem` | [compact_unshifted_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/compact-unshifted-bound--66fa88a44f1859b4a4683560.md) | 530 | `result-track:66fa88a44f1859b4a4683560dfef61db7f643e5b1e25fa1326fd5cbdfb768f76` |
| 28 | `theorem` | [compact_sourceKernel_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/compact-sourcekernel-tail-bound--ccc08630274e23973302b19e.md) | 568 | `result-track:ccc08630274e23973302b19e9f0e2c952afeef010a4033e65f45f822cd5b5698` |
| 29 | `def` | [compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/compactkernelnorm--c1e4d9fd6e716ffa554c5c1e.md) | 594 | `declaration-track:c1e4d9fd6e716ffa554c5c1edc9dfea9e0c3ba047548c802eea29d8bff817baa` |
| 30 | `theorem` | [sourceKernel_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-continuouson--b884c4e95daa08b44bc38c90.md) | 599 | `result-track:b884c4e95daa08b44bc38c90200afa32238bff1c662c0b41008116b40ac71235` |
| 31 | `theorem` | [norm_le_compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/norm-le-compactkernelnorm--19593a9c3564258b621b85d8.md) | 609 | `result-track:19593a9c3564258b621b85d867b53e09ebc51652ac5c3fe73d7a50858283b6f3` |
| 32 | `theorem` | [compactKernelNorm_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/compactkernelnorm-nonneg--8140d4100912139975f617fb.md) | 620 | `result-track:8140d4100912139975f617fb0578c70af0b05ef3cfed35ab9de9b20c47f14beb` |
| 33 | `theorem` | [eventually_shifted_norm_ge](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/eventually-shifted-norm-ge--319c3bd0c7ee1db5e38a7ba9.md) | 631 | `result-track:319c3bd0c7ee1db5e38a7ba97d28482f4a7be0c649bedcc495cdd4e46adf0ccc` |
| 34 | `theorem` | [sourceKernel_compact_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-compact-tail-bound--c2310983b05cc51162df3623.md) | 638 | `result-track:c2310983b05cc51162df36233fd55becb171243da6297a8488989f8acc61d33e` |
| 35 | `theorem` | [sourceKernel_compact_norms_summable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-compact-norms-summable--8af71344926fb68912cd90e7.md) | 664 | `result-track:8af71344926fb68912cd90e7b2e24083366bc9578266bd0ae854b38f7ff83571` |
| 36 | `theorem` | [sourceKernel_hasSumUniformlyOn_compact](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-hassumuniformlyon-compact--9dfb05dd11fd30405b2a227b.md) | 683 | `result-track:9dfb05dd11fd30405b2a227bc5d749bb7800a3ccacac8f54f45d9942740a12dc` |
| 37 | `theorem` | [sourceKernel_hasSumLocallyUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-hassumlocallyuniformlyon--67869c0d1ef73b14269caacf.md) | 697 | `result-track:67869c0d1ef73b14269caacf8f926c241717b9dad12be3e6f90dfe52da483dc9` |
| 38 | `theorem` | [sourceKernel_tsum_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-tsum-analytic--5e4c21441863b06915f9b7a4.md) | 711 | `result-track:5e4c21441863b06915f9b7a4ede78142a9c13178b9d05fa5672b8b332af8bcc8` |
| 39 | `def` | [continuedTransform](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/continuedtransform--86d8fd4f5d353e43affde223.md) | 731 | `declaration-track:86d8fd4f5d353e43affde223c0159785740d69fd91858ad08c07874f29e4bd32` |
| 40 | `theorem` | [continuedTransform_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/continuedtransform-analytic--85364533224b7f23ce07a6c2.md) | 735 | `result-track:85364533224b7f23ce07a6c2f59e40ae2ad7064e3f7e4acaccd128ead328b202` |
| 41 | `theorem` | [sourceKernel_eq_equation20_tsum](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/sourcekernel-eq-equation20-tsum--fa0a76f646dcf27e55e191e6.md) | 740 | `result-track:fa0a76f646dcf27e55e191e60f4921ef486895d20424110bd103b61bf78c770c` |
| 42 | `theorem` | [initial_agreement](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/initial-agreement--e686d1fda523af8106629976.md) | 752 | `result-track:e686d1fda523af81066299761897779b61af5f3ac4eee2c4d4c97fe06a19aeed` |
| 43 | `def` | [CandidateFreeContinuationCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/candidatefreecontinuationcheckpoint--2a7cd59ee7134c217323115d.md) | 763 | `declaration-track:2a7cd59ee7134c217323115dc2d54c1637f86bbd044b45cf9dfba436bc021558` |
| 44 | `theorem` | [candidate_free_continuation_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/declarations/candidate-free-continuation-checkpoint--3615891f0f0ae5aaa8c0fb6d.md) | 778 | `result-track:3615891f0f0ae5aaa8c0fb6ddcc6e3afa5cfc878582bfc2e2eacaed56ac7171a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
