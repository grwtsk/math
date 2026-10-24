# Verification target: GRWTSK.Topology.GeneralTopology.EstimateKernelMoments.Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b18c75835a16a4c4075469c85d1e6c85b1bcabe",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b18c75835a16a4c4075469c85d1e6c85b1bcabe`.

Source path: `GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalizedTest_continuous_all](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/normalizedtest-continuous-all--c42e8c0ca3aca904199cb498.md) | 34 | `result-track:c42e8c0ca3aca904199cb49811c135396740427ecc46151c3548ccbf89d9fee6` |
| 2 | `def` | [positiveWeightedTest](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtest--6ee527756749ba193d9cac8a.md) | 47 | `declaration-track:6ee527756749ba193d9cac8a28cdbbdc6d892ccf56997a03265fb76332285f35` |
| 3 | `def` | [reflectedPositiveWeightedTest](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtest--537b0901a6c4c11036616049.md) | 52 | `declaration-track:537b0901a6c4c1103661604925d5bc716157e90de2440cb0b50df27a8944bb72` |
| 4 | `def` | [positiveWeightedTestMoment](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtestmoment--f726ecfafbb1915c616e4e7b.md) | 57 | `declaration-track:f726ecfafbb1915c616e4e7b58761c52b2380781b3df3592d4d6997eee8264e3` |
| 5 | `def` | [reflectedPositiveWeightedTestMoment](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtestmoment--4f2e2a3532c0b4daa9d19803.md) | 61 | `declaration-track:4f2e2a3532c0b4daa9d19803105284e6ac743eb3a607f0eabbc81ed78329d8c3` |
| 6 | `theorem` | [positiveWeightedTest_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtest-integrable--cf1bbc3ad968519c7a36616f.md) | 64 | `result-track:cf1bbc3ad968519c7a36616f0d9853496decc3af981d4d199c29725f23509f5b` |
| 7 | `theorem` | [reflectedPositiveWeightedTest_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtest-integrable--7b79b5ec0bbc5669e2b59c20.md) | 69 | `result-track:7b79b5ec0bbc5669e2b59c206bec1e11e75c0ac72136711f793649d623da1eb3` |
| 8 | `theorem` | [positiveWeightedTest_continuous](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtest-continuous--ccd8166410fe79f7159f6acf.md) | 75 | `result-track:ccd8166410fe79f7159f6acfe44905546b4ccb62854295608c430d83e61fdd1b` |
| 9 | `theorem` | [reflectedPositiveWeightedTest_continuous](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtest-continuous--d26ca1db47b97975b0ad06ca.md) | 82 | `result-track:d26ca1db47b97975b0ad06cacffb2a88580e1f8be4c77d242afa3cfaa5039aa8` |
| 10 | `theorem` | [positiveWeightedTest_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtest-hascompactsupport--5aa9ab585b737f6a07e70a08.md) | 89 | `result-track:5aa9ab585b737f6a07e70a085a610d7fb2713ad9f6bc642a31e143548bcb2b74` |
| 11 | `theorem` | [reflectedPositiveWeightedTest_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtest-hascompactsupport--f7096379f1c819fb082eeeb2.md) | 96 | `result-track:f7096379f1c819fb082eeeb2ef653f37be628f8aa08282a4bb0f82891362f134` |
| 12 | `theorem` | [positiveWeightedTestMoment_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtestmoment-integrable--d411a9b93048875a3c9fcbf2.md) | 103 | `result-track:d411a9b93048875a3c9fcbf2bb65d1123d7e420fb5db0405109ed178963c0164` |
| 13 | `theorem` | [reflectedPositiveWeightedTestMoment_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtestmoment-integrable--82a8d19434833b9ccfaa9354.md) | 123 | `result-track:82a8d19434833b9ccfaa9354f9a0a898559ee03de2f27cd5a7292f43daf6eec2` |
| 14 | `theorem` | [positiveWeightedTestMoment_continuous](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtestmoment-continuous--fa524ab457fa076429ea69ab.md) | 143 | `result-track:fa524ab457fa076429ea69ab4a02e90ab7291127169ee5fb63b07f9ef6bf3492` |
| 15 | `theorem` | [reflectedPositiveWeightedTestMoment_continuous](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtestmoment-continuous--c223edfa27456405ee72ca1f.md) | 150 | `result-track:c223edfa27456405ee72ca1f3480e80fb6ab466753f9610ba04845f09424c4d6` |
| 16 | `theorem` | [positiveWeightedTestMoment_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtestmoment-hascompactsupport--25e10a2a7e84efcce3605a95.md) | 157 | `result-track:25e10a2a7e84efcce3605a952e48e7ec4f961e6fae4f3708deb63e9e74143961` |
| 17 | `theorem` | [reflectedPositiveWeightedTestMoment_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtestmoment-hascompactsupport--d7917f49d2f1381dc2ac7e44.md) | 163 | `result-track:d7917f49d2f1381dc2ac7e44e12490664ec0732a14614d5d58d58180d7b1a89a` |
| 18 | `theorem` | [positiveWeightedTest_integral_zero](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/positiveweightedtest-integral-zero--3d87258495f521b3e59026c6.md) | 169 | `result-track:3d87258495f521b3e59026c67f3d33d09a63b8b9d0fb69a287341c1c77e172c2` |
| 19 | `theorem` | [reflectedPositiveWeightedTest_integral_zero](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/reflectedpositiveweightedtest-integral-zero--760a3c7fe2cecb54ce37b8fb.md) | 175 | `result-track:760a3c7fe2cecb54ce37b8fb5882e4c0459a7c2eba705bb40c7bc2e815f23c2f` |
| 20 | `theorem` | [mul_weighted_convolution](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/mul-weighted-convolution--66009c5c4297c9e07b9678f9.md) | 195 | `result-track:66009c5c4297c9e07b9678f964d9315cd3a3b3ae5a563699a2b7c65447a51018` |
| 21 | `theorem` | [sourceCorrelation_first_exponential_moment_zero](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/sourcecorrelation-first-exponential-moment-zero--f81e60e48c6d723de92ea12f.md) | 246 | `result-track:f81e60e48c6d723de92ea12ff16133168ed6a155709b255605a91ae911c8dbe7` |
| 22 | `def` | [weightedCorrelation](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/weightedcorrelation--fd4601f793e9ba9ad3e0802e.md) | 324 | `declaration-track:fd4601f793e9ba9ad3e0802ef9bf5878da77f3f964d31fb5c8693440661f2b54` |
| 23 | `def` | [derivativeProfile](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/derivativeprofile--98079b8585e18262f4f380a1.md) | 329 | `declaration-track:98079b8585e18262f4f380a14b621468e5ebfae876e7e4afd8f11eb51c7341c9` |
| 24 | `theorem` | [weightedCorrelation_contDiff](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/weightedcorrelation-contdiff--f478afdad2bdeeab2eef83cb.md) | 333 | `result-track:f478afdad2bdeeab2eef83cb2816ae7e763fb2fc9a46913f0d0477e3734041ae` |
| 25 | `theorem` | [weightedCorrelation_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/weightedcorrelation-hascompactsupport--332eea9b286d513bf0f21819.md) | 342 | `result-track:332eea9b286d513bf0f21819a4166d6ea0cc1326831a7e2b6f40f413ef38cc60` |
| 26 | `theorem` | [weightedCorrelation_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/weightedcorrelation-integrable--14017b6d61e9021287328bcf.md) | 349 | `result-track:14017b6d61e9021287328bcfd37128eb119af21a825cc78cc578b68e0cb1827c` |
| 27 | `theorem` | [weightedCorrelation_deriv_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/weightedcorrelation-deriv-integrable--f49bd6fda8ce4569553d59e2.md) | 355 | `result-track:f49bd6fda8ce4569553d59e25f5686c9b7af5e71a76afe64f823b51197f1e6a1` |
| 28 | `theorem` | [weightedCorrelation_deriv](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/weightedcorrelation-deriv--8004d41d0d9b796710adde1b.md) | 362 | `result-track:8004d41d0d9b796710adde1b459c943fea77ca4785236df0cc78e4769a3c6380` |
| 29 | `theorem` | [derivativeProfile_exponential_moment_zero](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/derivativeprofile-exponential-moment-zero--d6df973ab053c81400a328a1.md) | 381 | `result-track:d6df973ab053c81400a328a1ffde0171704cce161dfccf8472737accd4816140` |
| 30 | `def` | [firstWeightedCorrelation](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/firstweightedcorrelation--f814c230e337042484e11d06.md) | 415 | `declaration-track:f814c230e337042484e11d068714707affdd186c6a94408ee0e25653e87498ee` |
| 31 | `theorem` | [firstWeightedCorrelation_contDiff](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/firstweightedcorrelation-contdiff--4440faf73dad41a2f4ed05e3.md) | 418 | `result-track:4440faf73dad41a2f4ed05e3e8a23cdc6db7e65165d429fe804f3ccbc834d3a6` |
| 32 | `theorem` | [firstWeightedCorrelation_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/firstweightedcorrelation-hascompactsupport--f675d8ed5f6786a89c31c365.md) | 424 | `result-track:f675d8ed5f6786a89c31c365e489a32da7fcfab2edc68ad2258dec87ae5b9261` |
| 33 | `theorem` | [firstWeightedCorrelation_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/firstweightedcorrelation-integrable--e958d7b8c893cc499487d0a9.md) | 430 | `result-track:e958d7b8c893cc499487d0a9fe15716c18e7d01779c242a66a2a13b1df0047fc` |
| 34 | `theorem` | [firstWeightedCorrelation_deriv_integrable](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/firstweightedcorrelation-deriv-integrable--e8b792b706b2e776747f3ae8.md) | 436 | `result-track:e8b792b706b2e776747f3ae83f682df613f78e0335f9234727352364a5be5add` |
| 35 | `theorem` | [firstWeightedCorrelation_deriv](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/firstweightedcorrelation-deriv--3fa7299c91f0a6ed61a3012a.md) | 443 | `result-track:3fa7299c91f0a6ed61a3012aedba103cac92c74064dbdce8ae90a16bb8e1c27e` |
| 36 | `theorem` | [derivativeProfile_first_exponential_moment_zero](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/derivativeprofile-first-exponential-moment-zero--879f0ec4b3fe40221c92a351.md) | 455 | `result-track:879f0ec4b3fe40221c92a3512b19ea7574e75128575f38a133d7e4d15ed85bbb` |
| 37 | `def` | [DoubleMomentCheckpoint](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/doublemomentcheckpoint--dafcea7b6d5a74ea5565aee4.md) | 541 | `declaration-track:dafcea7b6d5a74ea5565aee48bb986af0101e81aa8660817d2e2c974e4a1660a` |
| 38 | `theorem` | [double_moment_checkpoint](../../../../../mathematics/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/declarations/double-moment-checkpoint--390bf5cb96361e17caf4e868.md) | 555 | `result-track:390bf5cb96361e17caf4e86836e0fdca4fb779864a6123726f83145e80ae8c2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
