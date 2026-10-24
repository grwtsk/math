# Verification target: GRWTSK.Topology.GeneralTopology.Continuation.Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a3710f13556daec3ffb67a27b3cf5e7c9880df9",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a3710f13556daec3ffb67a27b3cf5e7c9880df9`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean.json)

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
| 1 | `instance` | [zeroOccurrence_countable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/zerooccurrence-countable--f875c66715f9adbbe5ea87ce.md) | 43 | `declaration-track:f875c66715f9adbbe5ea87ce4b6f31cbfa16e6d1c65de596b7b4b44d7d089a09` |
| 2 | `theorem` | [finite_occurrences_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/finite-occurrences-norm-le--6686797a910e6445c917d15f.md) | 54 | `result-track:6686797a910e6445c917d15f9d52234f0bbc63b668bb77be3a53a2d388b534d5` |
| 3 | `theorem` | [finite_occurrences_scaled_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/finite-occurrences-scaled-norm-le--dd28db2a0088c9c973f0645d.md) | 68 | `result-track:dd28db2a0088c9c973f0645d0869b5dd216448fc72352d423a80e80d210f8ba4` |
| 4 | `theorem` | [locallyFinite_scaled_values](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/locallyfinite-scaled-values--e753289e3fa39a572d74cd14.md) | 78 | `result-track:e753289e3fa39a572d74cd14daaf249d96dec357467a9c53ca7428766ae9d94d` |
| 5 | `theorem` | [isClosed_scaled_range](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/isclosed-scaled-range--eb30d30f3e39571fea55ca79.md) | 99 | `result-track:eb30d30f3e39571fea55ca79547c5c0a6280276e5e86ac7aa226ebd65fde5531` |
| 6 | `def` | [candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/candidatesingularities--9eeaa9c4c4636ff389f3abef.md) | 110 | `declaration-track:9eeaa9c4c4636ff389f3abef58699aef174d57c055b29a4cb29f5a3925294ebe` |
| 7 | `def` | [convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/convergencedomain--e63f7b3866a619df7a043509.md) | 116 | `declaration-track:e63f7b3866a619df7a0435092e1392fc4d9965005127c6b645ec2ef27d86da1c` |
| 8 | `theorem` | [isClosed_candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/isclosed-candidatesingularities--9a9b87a5ed28a40d27340b3a.md) | 119 | `result-track:9a9b87a5ed28a40d27340b3a114e94b2f68f087a1f06eab565e19eebb6bb7da2` |
| 9 | `theorem` | [isOpen_convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/isopen-convergencedomain--22c98088a36607080f4bc823.md) | 126 | `result-track:22c98088a36607080f4bc8237fa255e154c69e8883dc6b69e7688958b1f07a39` |
| 10 | `theorem` | [mem_convergenceDomain_iff](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/mem-convergencedomain-iff--b6d89284d6e5efde8e2701e8.md) | 131 | `result-track:b6d89284d6e5efde8e2701e8ec2d7a1cf58914e833674d9ecc2bed0af8a8281d` |
| 11 | `theorem` | [initial_halfPlane_subset_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/initial-halfplane-subset-domain--88e67fdb0e259a1f58a6718c.md) | 143 | `result-track:88e67fdb0e259a1f58a6718c7b2f8575a8d34366d23736cc2cf61a58785c0fcb` |
| 12 | `theorem` | [J_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/j-analytic--7eec3f78678076b275d14a94.md) | 161 | `result-track:7eec3f78678076b275d14a9435c0ac3a83f723e48c0ef7e4dd057a0b09f39a11` |
| 13 | `theorem` | [polynomialKernel_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/polynomialkernel-analytic--9b299ef295c180926f889b60.md) | 168 | `result-track:9b299ef295c180926f889b60c06b5a2706a7530dcc1cfb4e2adc087e91576552` |
| 14 | `theorem` | [sourceKernel_analytic_of_denominators](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-analytic-of-denominators--19a9f133553ffaa09b31dc37.md) | 177 | `result-track:19a9f133553ffaa09b31dc3730828f76660ad93d26ccc0cb66ffaff50ece1fc3` |
| 15 | `theorem` | [sourceKernel_analytic_on_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-analytic-on-domain--b19e2beb63b2ca22a08137dd.md) | 206 | `result-track:b19e2beb63b2ca22a08137ddea1f4959701770db59099c22984dbc7139cd2af9` |
| 16 | `theorem` | [laplaceKernel_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/laplacekernel-norm-le-factorial--7f541458ad980e08bd1444fa.md) | 226 | `result-track:7f541458ad980e08bd1444faca4674aa787035b5d64d6c788bb2d2d50430482f` |
| 17 | `theorem` | [J_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/j-norm-le-factorial--da2c2110b88511d0ac3c1e5c.md) | 269 | `result-track:da2c2110b88511d0ac3c1e5caa54726777cea0cd08cf24217acf07ee66fc7e72` |
| 18 | `theorem` | [J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/j-norm-le--06798a26aedae816c7903a89.md) | 279 | `result-track:06798a26aedae816c7903a89047e9008795b7d4653eee25d8bf30630fd7018c5` |
| 19 | `theorem` | [positivePolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/positivepolynomial-coeff-norm-le--38da61b4260dd0359990c200.md) | 292 | `result-track:38da61b4260dd0359990c200db1e856974073fd3ff361cd8519c8ea0c8b2722e` |
| 20 | `theorem` | [mixedPolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/mixedpolynomial-coeff-norm-le--1755d3b7bb6d3beb7069be42.md) | 310 | `result-track:1755d3b7bb6d3beb7069be42fceb50f735f40db8cad3314f1b4d578bb59ae7f6` |
| 21 | `theorem` | [polynomialKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/polynomialkernel-norm-le--32afe3c799c9d86d8c1046c8.md) | 328 | `result-track:32afe3c799c9d86d8c1046c8be827f9f2d0b1e373d62d24900a1aec3cb851cce` |
| 22 | `theorem` | [shifted_norm_ge_one](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/shifted-norm-ge-one--2ab94c17c7a1dfed4c0e6cf9.md) | 354 | `result-track:2ab94c17c7a1dfed4c0e6cf9db3fd83cbe184760719b94e16a9cf654a58059e4` |
| 23 | `theorem` | [shifted_J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/shifted-j-norm-le--6cd84ec14e9095785645b9c6.md) | 365 | `result-track:6cd84ec14e9095785645b9c63fe7af3dda4af1de0bd2921e5c862b285ee39798` |
| 24 | `def` | [tailConstant](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/tailconstant--d2233be0f91688951e455f63.md) | 388 | `declaration-track:d2233be0f91688951e455f63576b4e94a1cac386a3216dece7e8f40bc89dcf4f` |
| 25 | `theorem` | [tailConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/tailconstant-nonneg--145557e2463f69dfe0919306.md) | 392 | `result-track:145557e2463f69dfe09193069091812b408b9721cbae96069a186b79f270f1b4` |
| 26 | `theorem` | [sourceKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-norm-le--a1e3957c4ab1bf678db54d5f.md) | 400 | `result-track:a1e3957c4ab1bf678db54d5fabd9dae7525dd44606e7f0f41d6a2c9c14d2da1d` |
| 27 | `theorem` | [compact_unshifted_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/compact-unshifted-bound--83efb8e2468d5b0268781c8c.md) | 522 | `result-track:83efb8e2468d5b0268781c8c5e73aa6e4693e8faaa47f7b1304d34eaeb58bb0e` |
| 28 | `theorem` | [compact_sourceKernel_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/compact-sourcekernel-tail-bound--9db4ac63be13887a19e146c2.md) | 560 | `result-track:9db4ac63be13887a19e146c2af0fece86ea12070bf46f8d02f27688d0bed4e0a` |
| 29 | `def` | [compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/compactkernelnorm--94d1c97462fddf9baac703d3.md) | 586 | `declaration-track:94d1c97462fddf9baac703d3a7ca9b4ec13366a6b95b2ac7fb75784c056a8f44` |
| 30 | `theorem` | [sourceKernel_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-continuouson--5f99baa9d45e13a71f53db7a.md) | 591 | `result-track:5f99baa9d45e13a71f53db7a44583c9bfde25e743aeba75052f1916d02fddd14` |
| 31 | `theorem` | [norm_le_compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/norm-le-compactkernelnorm--2ea3f257329acd95b6f1257a.md) | 601 | `result-track:2ea3f257329acd95b6f1257a8583fc76afb047e12a8773ace5f392f79677ffd4` |
| 32 | `theorem` | [compactKernelNorm_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/compactkernelnorm-nonneg--0a1db28dc467920b2e3d6523.md) | 612 | `result-track:0a1db28dc467920b2e3d652320bbaa1f320c3d66b4a211a0fd55a64a0058c419` |
| 33 | `theorem` | [eventually_shifted_norm_ge](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/eventually-shifted-norm-ge--60fc5c43f272c32b53cbb43e.md) | 623 | `result-track:60fc5c43f272c32b53cbb43ebb5cbc387ebe8afefc097468854f4185e66a8063` |
| 34 | `theorem` | [sourceKernel_compact_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-compact-tail-bound--a695a203d42170e116c48e06.md) | 630 | `result-track:a695a203d42170e116c48e0645a2bfe8611e8517520b07acc389cfeb91e09f25` |
| 35 | `theorem` | [sourceKernel_compact_norms_summable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-compact-norms-summable--ba1afb14c0d233b003be6071.md) | 656 | `result-track:ba1afb14c0d233b003be6071dc65be713adf237513b12e6d7f5b226ce4a088d2` |
| 36 | `theorem` | [sourceKernel_hasSumUniformlyOn_compact](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-hassumuniformlyon-compact--52236aac5f83d18022a35c76.md) | 675 | `result-track:52236aac5f83d18022a35c7625024954b2eae11dd57b74c303d9909822bcb84d` |
| 37 | `theorem` | [sourceKernel_hasSumLocallyUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-hassumlocallyuniformlyon--76279ca8266cc6f5ae100b49.md) | 689 | `result-track:76279ca8266cc6f5ae100b4946dec85b98aa30c4bdf778e2afb2c2d58ece361b` |
| 38 | `theorem` | [sourceKernel_tsum_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-tsum-analytic--1ff7b626e995bcee35a206b8.md) | 703 | `result-track:1ff7b626e995bcee35a206b83b46cf574bebe7891fde921fea0d9b0a3f3f766b` |
| 39 | `def` | [continuedTransform](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/continuedtransform--0048f0f0149deb32afee2a1d.md) | 723 | `declaration-track:0048f0f0149deb32afee2a1d7bb62b6bbc88fac810cdd8476623d370f8130606` |
| 40 | `theorem` | [continuedTransform_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/continuedtransform-analytic--d6f87d3268c1fede0ac96c24.md) | 727 | `result-track:d6f87d3268c1fede0ac96c24344a4e91de35a67b46d65487771cf5667b6537ca` |
| 41 | `theorem` | [sourceKernel_eq_equation20_tsum](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/sourcekernel-eq-equation20-tsum--7a805d1ae90d7b9d24c90256.md) | 732 | `result-track:7a805d1ae90d7b9d24c902569ebdc777e5186a8631bab4fc9fcc0e5e11b8932d` |
| 42 | `theorem` | [initial_agreement](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/initial-agreement--2e4ce3345a1593a90c2aa629.md) | 744 | `result-track:2e4ce3345a1593a90c2aa629339706e44486b0862f8d178a2cd75319a9dbd07d` |
| 43 | `def` | [CandidateFreeContinuationCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/candidatefreecontinuationcheckpoint--25145b0b2b847ba77dfb3afc.md) | 755 | `declaration-track:25145b0b2b847ba77dfb3afc28e9b72d6e36ebff6b4d052c5fa67eba22b5f474` |
| 44 | `theorem` | [candidate_free_continuation_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/declarations/candidate-free-continuation-checkpoint--b3c2e4752defba639dd16398.md) | 770 | `result-track:b3c2e4752defba639dd16398aab7887cd493f48f94acbeb4e801f07610821643` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
