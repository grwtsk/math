# Verification target: GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe805f9cd5ec5c6397f26c1262bf4818580f9d32",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe805f9cd5ec5c6397f26c1262bf4818580f9d32`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionplus--b592a8006cd3aaaf865d0292.md) | 45 | `declaration-track:b592a8006cd3aaaf865d029278176cd00309c84b8d565e96ee71e0f1c4a50bae` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionminus--7ad267e33dd63d38a73900a8.md) | 49 | `declaration-track:7ad267e33dd63d38a73900a8dc2ba8f3b57d8e9e0f2f9a191f9b80d74324da25` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionplus-apply--b9246a2c681d3239b52c1679.md) | 53 | `result-track:b9246a2c681d3239b52c16790cf8c8c817494e0152c1484d429a5e3d69a734e0` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionminus-apply--0de06806e5ff946ae5b612de.md) | 58 | `result-track:0de06806e5ff946ae5b612de46d3b7d85924aa587f3faf29a6b05b728215f7ac` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involution-projection-decomposition--4b2c97cc514fdacdf8fca09e.md) | 63 | `result-track:4b2c97cc514fdacdf8fca09e5183ecffe78814c6cee70774627e7e6c68836e75` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionplus-idempotent--c9f7736daf3d9606961902e9.md) | 70 | `result-track:c9f7736daf3d9606961902e96d642ed4b60a346cf9ee6cdde4b34b511a489ca3` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionminus-idempotent--4008efe4b9f436812ae96af0.md) | 78 | `result-track:4008efe4b9f436812ae96af0612a556bbbec6a243f07ab4aee09e4e387a953e5` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionplus-after-minus--e3c3fd3a22037943020aa4b1.md) | 86 | `result-track:e3c3fd3a22037943020aa4b1a39957707bcf73263d974d4ba9339f16885b8593` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involutionminus-after-plus--7a1127837feefdd65944ea22.md) | 93 | `result-track:7a1127837feefdd65944ea22efb901b41acc74ec700e7206f8e2842c3fa27efc` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involution-on-plus--d00527764dc9dc8d4667b345.md) | 100 | `result-track:d00527764dc9dc8d4667b3458001f8c0229cef076b23fc14fd09bf2e27b5cefc` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/involution-on-minus--8521f69b6862a51361b99f1e.md) | 107 | `result-track:8521f69b6862a51361b99f1e48d1925ef61de2a79ddbe8bf6b71530c176c6c71` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/commutinginvolutions--4c8cc37fd6bbca38b058d7f7.md) | 114 | `declaration-track:4c8cc37fd6bbca38b058d7f7c9340c9b2fa39b3245dee2dd8b279114f0f08116` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/plusplus-commute--072eba4619aaaac3029d6efa.md) | 128 | `result-track:072eba4619aaaac3029d6efa7ed6ec7cec527836908722558d605fbfee2a61ea` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/plusminus-commute--90e4ce351f1a574e2e532bfc.md) | 136 | `result-track:90e4ce351f1a574e2e532bfcbbeffe17ecf4f89eae42b33ab936668079129f9f` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/minusplus-commute--d5c8ae6dd9da13f6bc33f3ac.md) | 144 | `result-track:d5c8ae6dd9da13f6bc33f3acfd05597f94355829bcbbf6dc2989d2a1adae9be1` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/minusminus-commute--45631d178a150196208f178f.md) | 152 | `result-track:45631d178a150196208f178f997856da5f60bd978b2dfd16220d208d184dd8d7` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpp--d90fc2df99ac22de62a6beb7.md) | 160 | `declaration-track:d90fc2df99ac22de62a6beb7b0f555d4b89c94f33488a0f98941bf506f9d0693` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpm--6d37866c609142fb6b0d8754.md) | 164 | `declaration-track:6d37866c609142fb6b0d8754b88f3a41ebadbaf974b22c5a9ddb3649def22a35` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormp--ac71f1fb6a05e9aa64fc1cae.md) | 168 | `declaration-track:ac71f1fb6a05e9aa64fc1caedae47f386910561cbcb33b00655f390bc43f8d64` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormm--4b18744322e8ae4e7009b118.md) | 172 | `declaration-track:4b18744322e8ae4e7009b1182c825fbe7ba3dedecfc450bca9fc3e7ca59c60b8` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpp-apply--320d4d81676bcbd1c178d092.md) | 176 | `result-track:320d4d81676bcbd1c178d09228ac48cab426d04e68f4cd8cf483394053da2898` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpm-apply--c69dcf947ac71cbf18cc2765.md) | 182 | `result-track:c69dcf947ac71cbf18cc27656d5b5e25a7352262879f4bd5d25894788cb2731c` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormp-apply--2f3f8b981d5f9e36c3f31fc0.md) | 188 | `result-track:2f3f8b981d5f9e36c3f31fc02231298e732b3b1087f94b1b251d617f926269ed` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormm-apply--17896b6b073eb757b1154942.md) | 194 | `result-track:17896b6b073eb757b11549428938bd8164d78589fef9845df591a8180448667d` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/idempotent-comp-of-commute--0fc0ad69257d36b695b9e05a.md) | 199 | `result-track:0fc0ad69257d36b695b9e05aec69a43c0ce0d4efd9f3854464bb18743cf80c82` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpp-idempotent--c80b6d18054bbe6c6ad9c2d0.md) | 209 | `result-track:c80b6d18054bbe6c6ad9c2d0626697620c83ac3f09916a212d96c63a487b5a82` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpm-idempotent--7a853b4783836ed0c51100f8.md) | 218 | `result-track:7a853b4783836ed0c51100f8a70c7ec9681c77aee13228ddd6aacb7eac06c0b3` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormp-idempotent--91dab3d494130fd78192fc0e.md) | 227 | `result-track:91dab3d494130fd78192fc0ebf5a19430ac5723eb37c8984c73dc933dd164505` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormm-idempotent--c0d8de8c194ae7b3fef9aee0.md) | 236 | `result-track:c0d8de8c194ae7b3fef9aee05b5714c8ee7c28f88d0fd2b90bf27832c2a7a893` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/four-sector-decomposition--60363e2f4e07460d756c7716.md) | 245 | `result-track:60363e2f4e07460d756c77163d9afa6152308504c17a9c32b942242b570e5bbc` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpp-after-pm--765251870a93b82f88b471a8.md) | 252 | `result-track:765251870a93b82f88b471a8ef37442997122d58f531fa2159fd99644adae59e` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpm-after-pp--6f1597431f475f1dd9ee591a.md) | 263 | `result-track:6f1597431f475f1dd9ee591aae65f920059de9b679dffa52e17ae305c2b0c2ba` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpp-after-mp--29f9f5aaad6e76bf65848da9.md) | 274 | `result-track:29f9f5aaad6e76bf65848da91418d50e492a9d3ee84b48ded32020b1790bb65f` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormp-after-pp--1db1bfb873e8d111c7ca7818.md) | 284 | `result-track:1db1bfb873e8d111c7ca781801a83ebe578255bfa7cf923b28b1695f36b745a0` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpp-after-mm--4083f988a166fa21a0bf5a13.md) | 294 | `result-track:4083f988a166fa21a0bf5a13e03b3f4a5e81415b11bb708de66b8bf2188d1090` |
| 36 | `theorem` | [sectorMM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormm-after-pp--fb2e779c8287e86021328cce.md) | 304 | `result-track:fb2e779c8287e86021328cce3daaf7d29a8c50d65fccef10f82561b87f484026` |
| 37 | `theorem` | [sectorPM_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpm-after-mp--cbe49fdc8f15ea4a38ab1ef4.md) | 314 | `result-track:cbe49fdc8f15ea4a38ab1ef4516c469c6e5f88f4d5a5ed6c435eed9cb18ab02f` |
| 38 | `theorem` | [sectorMP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormp-after-pm--f8014664429ce8c9939bb426.md) | 323 | `result-track:f8014664429ce8c9939bb4264e21915f199657ad12515566a55534337f9e4477` |
| 39 | `theorem` | [sectorPM_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectorpm-after-mm--7b61b73a53f093ba06f010f8.md) | 332 | `result-track:7b61b73a53f093ba06f010f8cbac40137bf6cf7cfba98c5a735dacc5c0580185` |
| 40 | `theorem` | [sectorMM_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormm-after-pm--e274ac73a0633067f457d2cf.md) | 342 | `result-track:e274ac73a0633067f457d2cfb5ecb5aa1e5998b0ee3c5ede661e4e67a68bc059` |
| 41 | `theorem` | [sectorMP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormp-after-mm--d49ccd9cfbe65e78ef64def6.md) | 352 | `result-track:d49ccd9cfbe65e78ef64def673ad7154daa3d280b40e139bb5de186a63322b9a` |
| 42 | `theorem` | [sectorMM_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/sectormm-after-mp--f3ee8910ff3d1b1d75dc4806.md) | 363 | `result-track:f3ee8910ff3d1b1d75dc48066f8d545219af33fceb5bd16303f37d4a295b6fdf` |
| 43 | `def` | [interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/interventionsector--91b1263e361e97e8689c68f4.md) | 374 | `declaration-track:91b1263e361e97e8689c68f444ad4e38982619b397d212ed5d5a02ee959159a5` |
| 44 | `theorem` | [interventionSector_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/interventionsector-idempotent--107be5bafc009b27b1e6ded3.md) | 378 | `result-track:107be5bafc009b27b1e6ded342639b50d3e39627ca5f0c40bf49e766d5438069` |
| 45 | `theorem` | [first_on_interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/first-on-interventionsector--eb454e6159c0de8cb73fe109.md) | 383 | `result-track:eb454e6159c0de8cb73fe109491d9cfe0d4da0030a62e767f57dfddca1f80ddf` |
| 46 | `theorem` | [second_on_interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/declarations/second-on-interventionsector--8610efd47e1555f7e87283f3.md) | 391 | `result-track:8610efd47e1555f7e87283f3564e39faaf8c694f6024c1beff52a0632cd7e289` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
