# Verification target: GRWTSK.NumberTheory.Moebius.TwoPointCarlesonEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9419fe18fbf54d5842c11da5176674023e905e00",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9419fe18fbf54d5842c11da5176674023e905e00`.

Source path: `GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.TwoPointTreeSingletonMassObstruction`](../../../../mathematics/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alignedDyadicScaleMaximum](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicscalemaximum--244a5484b71f757294833412.md) | 49 | `declaration-track:244a5484b71f75729483341207eb7d2aeea10a7a82a77476768cda5b101223e6` |
| 2 | `def` | [alignedDyadicProperCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicpropercarlesonenergy--d4c955d17813407514cc0865.md) | 55 | `declaration-track:d4c955d17813407514cc08656de602fe6053fd747db9b85761448788bab7d075` |
| 3 | `def` | [alignedDyadicCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadiccarlesonenergy--3be0d97dff643539848ad84d.md) | 60 | `declaration-track:3be0d97dff643539848ad84d7eb544e63ab5b9ef53dd0d3ea94a0ce46dc7d973` |
| 4 | `theorem` | [abs_alignedDyadicBlockSum_le_scaleMaximum](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/abs-aligneddyadicblocksum-le-scalemaximum--42705bd19d37d35ce6b416a2.md) | 66 | `result-track:42705bd19d37d35ce6b416a2c8f00470f8b49603634e7d426aac35e330f510f7` |
| 5 | `theorem` | [alignedDyadicScaleMaximum_nonneg](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicscalemaximum-nonneg--c44ce578982d5247d9c5c006.md) | 77 | `result-track:c44ce578982d5247d9c5c006bbd68b52ea65f0b12e54c823775ca894e29df081` |
| 6 | `theorem` | [alignedDyadicScaleMaximum_le_succ](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicscalemaximum-le-succ--cd26c1d9ce07b656b50cfc8a.md) | 86 | `result-track:cd26c1d9ce07b656b50cfc8afb5c2907073aea391b268c53c69fc297b3a741c4` |
| 7 | `theorem` | [alignedDyadicScaleMaximum_shifted_half_le_succ](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicscalemaximum-shifted-half-le-succ--3ed2057b8e7a85dead2bdb13.md) | 102 | `result-track:3ed2057b8e7a85dead2bdb13fac3df565f55afde12d331b27523293bbd466d4a` |
| 8 | `theorem` | [alignedDyadicProperCarlesonEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicpropercarlesonenergy-nonneg--bf7b375713eae1c1e254b981.md) | 120 | `result-track:bf7b375713eae1c1e254b981296c105e43c0e0309b0876581e22a49d9196c390` |
| 9 | `theorem` | [alignedDyadicCarlesonEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadiccarlesonenergy-nonneg--4bc579c39d7dda235315b47b.md) | 128 | `result-track:4bc579c39d7dda235315b47b3a948f87f6be12199a7e9dc14efe377dbedb6a92` |
| 10 | `theorem` | [alignedDyadicCarlesonEnergy_eq_proper_add_top](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadiccarlesonenergy-eq-proper-add-top--b1638e21423ab832199fd37b.md) | 136 | `result-track:b1638e21423ab832199fd37b0cb167428abf15e77e1cf6b4881019f5aebb79a7` |
| 11 | `theorem` | [alignedDyadicProperCarlesonEnergy_le_succ](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicpropercarlesonenergy-le-succ--c7b25fb99c9f8fe17747234b.md) | 146 | `result-track:c7b25fb99c9f8fe17747234b58fe6e9ea944b7d2d567b9312dca3ce8b6a231ab` |
| 12 | `theorem` | [topBlock_sq_add_shiftedProperEnergy_le_succ](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/topblock-sq-add-shiftedproperenergy-le-succ--269db4074b31a675cf710b6e.md) | 168 | `result-track:269db4074b31a675cf710b6e16de80752691f185d123d98fb0b84438aaf79673` |
| 13 | `theorem` | [add_sq_le_succ_weight](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/add-sq-le-succ-weight--c9bb1462df1323f68dc951c6.md) | 216 | `result-track:c9bb1462df1323f68dc951c69600c99ed32e6626c57b9cbb9516158da40d07cb` |
| 14 | `theorem` | [finitePrefixSum_sq_le_properCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/finiteprefixsum-sq-le-propercarlesonenergy--0c4e9738093e690043f0b63f.md) | 238 | `result-track:0c4e9738093e690043f0b63fd7ac78b1b599bad499d1a9d3d6ec29f85ca5882c` |
| 15 | `theorem` | [finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/finiteprefixsum-sq-le-aligneddyadiccarlesonenergy--5a068c5cc926b9337d2574ff.md) | 317 | `result-track:5a068c5cc926b9337d2574ff6d3661252a6b7e99bbbb8e99236442256f46007a` |
| 16 | `theorem` | [dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/dyadicprefixmaximum-sq-le-aligneddyadiccarlesonenergy--e35805888410c9a336e5f2ca.md) | 366 | `result-track:e35805888410c9a336e5f2ca4f54bba9e30bfa90819793a1808849b0175d19a8` |
| 17 | `theorem` | [alignedDyadicScaleMaximum_zero_le_of_abs_le](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/aligneddyadicscalemaximum-zero-le-of-abs-le--7ccb9eae78bd9b1abe97505b.md) | 400 | `result-track:7ccb9eae78bd9b1abe97505b68625ce62fdcea7ea6424f9861047b0652fce9c4` |
| 18 | `def` | [twoPointCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/twopointcarlesonenergy--6704722f9ece1b4a609d3d2f.md) | 417 | `declaration-track:6704722f9ece1b4a609d3d2fcb68ccfda9f05e07b94f5fedb7bc7079c07929dc` |
| 19 | `def` | [twoPointCarlesonEnergySum](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/twopointcarlesonenergysum--8db3639a816285f3a6046dcf.md) | 423 | `declaration-track:8db3639a816285f3a6046dcf9def45c658d81bd04fc4bdb9e1fc4d2621238767` |
| 20 | `def` | [mertensTwoPointCarlesonSingletonSum](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/mertenstwopointcarlesonsingletonsum--67a90f1a8d2d9738e8beff3e.md) | 429 | `declaration-track:67a90f1a8d2d9738e8beff3e2e8b413e894717b42f43675216a06e20c8672c6f` |
| 21 | `theorem` | [abs_paddedTwoPointMoebius_le_one](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/abs-paddedtwopointmoebius-le-one--1db285c1a420ecc5f7abac63.md) | 436 | `result-track:1db285c1a420ecc5f7abac63f3c47ec0b747839f9d07d2c152a9d3d4ab6f8004` |
| 22 | `theorem` | [mertensTwoPointCarlesonScaleZeroMaximum_le_one](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/mertenstwopointcarlesonscalezeromaximum-le-one--e2c3a6a6aea29ca2729161ef.md) | 454 | `result-track:e2c3a6a6aea29ca2729161ef3345261f816bae37f69c166f1cf64f2685febe3b` |
| 23 | `theorem` | [mertensTwoPointCarlesonSingletonSum_le_endpoint](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/mertenstwopointcarlesonsingletonsum-le-endpoint--8d954bbe5bfa49a81a3a7313.md) | 464 | `result-track:8d954bbe5bfa49a81a3a731379eb893f329095501ed49439d2afd8f6536d874f` |
| 24 | `theorem` | [mertensTwoPointPrefixMax_sq_le_twoPointCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/mertenstwopointprefixmax-sq-le-twopointcarlesonenergy--8a0c0252447061da13436c23.md) | 490 | `result-track:8a0c0252447061da13436c23d5b37ab01f971231fb78e540e4a2bc0f771b1a50` |
| 25 | `theorem` | [mertensTwoPointMaximalQuadraticEnergy_le_carlesonEnergySum](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/mertenstwopointmaximalquadraticenergy-le-carlesonenergysum--61b2d28c13d019248397c6aa.md) | 523 | `result-track:61b2d28c13d019248397c6aac78b34892f6da848feda6ab263efb2b0b9952423` |
| 26 | `def` | [SubpolynomialDyadicTwoPointCarlesonEnergyWithDepthCost](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/subpolynomialdyadictwopointcarlesonenergywithdepthcost--7de59a0ced635d08de4f5682.md) | 544 | `declaration-track:7de59a0ced635d08de4f5682c382f5855dbcd132f82c8656c5e1a8de471af323` |
| 27 | `def` | [SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/subpolynomialdyadicmertenstwopointcarlesonenergywithdepthcost--357a7edd0f3d7b05c1334ff8.md) | 552 | `declaration-track:357a7edd0f3d7b05c1334ff8746003ddab67723e6d2232a08f65d5bae48f86f0` |
| 28 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_of_carleson](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/subpolynomialdyadicmaximalmertenstwopointenergy-of-carleson--efcef472489e89cd623f0b4c.md) | 557 | `result-track:efcef472489e89cd623f0b4c530a463e3fc8d4870b66100e7cafd4bfa2eaef9f` |
| 29 | `theorem` | [riemannHypothesis_of_mertensTwoPointCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/declarations/riemannhypothesis-of-mertenstwopointcarlesonenergy--a25928009f790ed19e9e731f.md) | 572 | `result-track:a25928009f790ed19e9e731f47f98edc863e30a962a52fdfbff469a23a4cd4b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
