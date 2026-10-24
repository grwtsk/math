# Verification target: GRWTSK.Analysis.FunctionalAnalysis.TangentCone.Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9131fb96adf1e71ad5c9d46a9080a7c49f095d84",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9131fb96adf1e71ad5c9d46a9080a7c49f095d84`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tangentConeAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/tangentconeat--ec94764d15b526fa0c9a2ca0.md) | 47 | `declaration-track:ec94764d15b526fa0c9a2ca0cbd7ea35f0387c5f224724cb40b290acd63bf647` |
| 2 | `structure` | [UniqueDiffWithinAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat--d0188daac1e3b1ebd740e914.md) | 60 | `declaration-track:d0188daac1e3b1ebd740e914465e9a6b2cc6f04db9ff21dade61187a62a90078` |
| 3 | `def` | [UniqueDiffOn](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon--f72261a01dbf293fecb487b1.md) | 69 | `declaration-track:f72261a01dbf293fecb487b187bde3215ea82e58b44fddb657e104e7b7bf2dfc` |
| 4 | `theorem` | [mem_tangentConeAt_of_pow_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/mem-tangentconeat-of-pow-smul--026ca7a3ca22b019b98740f6.md) | 88 | `result-track:026ca7a3ca22b019b98740f650d736761869425ffcd82bc32698a4f0f61b999c` |
| 5 | `theorem` | [tangentCone_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/tangentcone-univ--63edd86bf52fcfa03bc4a112.md) | 95 | `result-track:63edd86bf52fcfa03bc4a1128df913c7e5edbb367f79785b5f016467559640ee` |
| 6 | `theorem` | [tangentCone_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/tangentcone-mono--00e667680dfd45262117a3e0.md) | 101 | `result-track:00e667680dfd45262117a3e055640626a87d107c3fe977cacca13cc30a803502` |
| 7 | `theorem` | [tangentConeAt.lim_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/tangentconeat-lim-zero--1b86bfb6214bb9d513cbd750.md) | 108 | `result-track:1b86bfb6214bb9d513cbd750f8ccecf4643bcba79cbafe933af273593b5d5d77` |
| 8 | `theorem` | [tangentCone_mono_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/tangentcone-mono-nhds--cc3012230a627559c3747ee6.md) | 124 | `result-track:cc3012230a627559c3747ee669e39e8043fec459a0cdfce3599d02616b6a41c0` |
| 9 | `theorem` | [tangentCone_congr](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/tangentcone-congr--06251da91ee404da6fb0b033.md) | 135 | `result-track:06251da91ee404da6fb0b0338440fedfcad76d45547417ed66a1d158df2b23f3` |
| 10 | `theorem` | [tangentCone_inter_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/tangentcone-inter-nhds--50626cfa03d9a5e2f7152c94.md) | 140 | `result-track:50626cfa03d9a5e2f7152c94db93cc6af268308cbf6fc6674d140f3a56166c69` |
| 11 | `theorem` | [subset_tangentCone_prod_left](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/subset-tangentcone-prod-left--3c0941748e9bcf93f5af951d.md) | 145 | `result-track:3c0941748e9bcf93f5af951d81f84c2c4869bc3a0377a719c95808c519ff256c` |
| 12 | `theorem` | [subset_tangentCone_prod_right](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/subset-tangentcone-prod-right--4f8c39bf3ce6c84699599640.md) | 165 | `result-track:4f8c39bf3ce6c84699599640ef12992cfee1d005fae4ee3c9fbbeb402e77f85d` |
| 13 | `theorem` | [mapsTo_tangentCone_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/mapsto-tangentcone-pi--3e0ef5d4e9c71ccd90fdc151.md) | 185 | `result-track:3e0ef5d4e9c71ccd90fdc1514e226c077599d0e6c4b69d032dfdad42b0871ed5` |
| 14 | `theorem` | [mem_tangentCone_of_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/mem-tangentcone-of-opensegment-subset--8d08da0855287b4039e82f00.md) | 210 | `result-track:8d08da0855287b4039e82f00dd104ba7b8ad51863501c17752b3b9f60894b169` |
| 15 | `theorem` | [mem_tangentCone_of_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/mem-tangentcone-of-segment-subset--fd9d65775b6ac8622ccd366f.md) | 223 | `result-track:fd9d65775b6ac8622ccd366fa8c38b65352ee2bc4f8185fc29a95f42e3366378` |
| 16 | `theorem` | [UniqueDiffOn.uniqueDiffWithinAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-uniquediffwithinat--bf18deb74daec31c0be060a2.md) | 238 | `result-track:bf18deb74daec31c0be060a2c91cf6407aaff01562605e138751652b778519dd` |
| 17 | `theorem` | [uniqueDiffWithinAt_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-univ--52d4e5d0fd65447dfce08e6f.md) | 243 | `result-track:52d4e5d0fd65447dfce08e6f363306177665e7e2bf85e432cf0f19cac569c2f8` |
| 18 | `theorem` | [uniqueDiffOn_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-univ--f97400a5e6b33e5f690daf4b.md) | 248 | `result-track:f97400a5e6b33e5f690daf4b593746c571a1672ae31271b07da995507fa1948a` |
| 19 | `theorem` | [uniqueDiffOn_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-empty--31cf2f2319589617b5aa40b0.md) | 252 | `result-track:31cf2f2319589617b5aa40b0d67024400f01079eda7846211dadda18019141d6` |
| 20 | `theorem` | [UniqueDiffWithinAt.congr_pt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-congr-pt--d1b175abd480f20529ce5ea7.md) | 256 | `result-track:d1b175abd480f20529ce5ea74dc983e82ce6681a3d095f286fc43a188aea8fbd` |
| 21 | `theorem` | [UniqueDiffWithinAt.mono_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-mono-nhds--5973d679da713fb3b4759c00.md) | 259 | `result-track:5973d679da713fb3b4759c009460d85fe824e6b6938c7e6bdfb7b3d656e0b3c9` |
| 22 | `theorem` | [UniqueDiffWithinAt.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-mono--070c3d13067e4efde79c5856.md) | 266 | `result-track:070c3d13067e4efde79c5856b204601c816e35a74dd0dbb7fe8a3e773b5b5a25` |
| 23 | `theorem` | [uniqueDiffWithinAt_congr](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-congr--498b062570117345cadcc203.md) | 271 | `result-track:498b062570117345cadcc2032b702f10d58d78e9855b42054c46875421073928` |
| 24 | `theorem` | [uniqueDiffWithinAt_inter](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-inter--283010eef04bd68d5e1039d7.md) | 276 | `result-track:283010eef04bd68d5e1039d7634dceb55d72e4f04c0b46b563e74de36a7fd268` |
| 25 | `theorem` | [UniqueDiffWithinAt.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-inter--4751d55db9311526a51c17db.md) | 281 | `result-track:4751d55db9311526a51c17db9ba82a6bedc31c38ccff891fd8ed77a15e83376c` |
| 26 | `theorem` | [uniqueDiffWithinAt_inter'](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-inter--11619427bf08dc9357b099f4.md) | 286 | `result-track:11619427bf08dc9357b099f485bc89bfa017f3261d16050982d389ef3546eabd` |
| 27 | `theorem` | [UniqueDiffWithinAt.inter'](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-inter--443408d3f6b94d1d811c743d.md) | 291 | `result-track:443408d3f6b94d1d811c743d1711fc3fb5c6b40c914fbc3890fc23074d08d562` |
| 28 | `theorem` | [uniqueDiffWithinAt_of_mem_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-of-mem-nhds--6710105bfb67ea78dbd7fc9a.md) | 296 | `result-track:6710105bfb67ea78dbd7fc9ad17f830d4ec5ca9d51a6f120cc09a1df03970cb3` |
| 29 | `theorem` | [IsOpen.uniqueDiffWithinAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/isopen-uniquediffwithinat--d13e8a11b882575dd675f08f.md) | 300 | `result-track:d13e8a11b882575dd675f08f34a276b746bb9f8f3b631cc174f4245cb6987329` |
| 30 | `theorem` | [UniqueDiffOn.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-inter--912d2ae10ba7c8207158c3c8.md) | 304 | `result-track:912d2ae10ba7c8207158c3c80a5692999fda4d26487168588e82d1003fb43b78` |
| 31 | `theorem` | [IsOpen.uniqueDiffOn](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/isopen-uniquediffon--90f0e67331b516e2e8b19759.md) | 308 | `result-track:90f0e67331b516e2e8b19759d7b9c211c3c76f4096eb81989e1a66b415ef9f03` |
| 32 | `theorem` | [UniqueDiffWithinAt.prod](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-prod--1c1ec6801274a43d9fd2c73e.md) | 314 | `result-track:1c1ec6801274a43d9fd2c73ea1ebce5eacbaf0adbd9cb0581808666d13252206` |
| 33 | `theorem` | [UniqueDiffWithinAt.univ_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-univ-pi--60bae30adcc48b3d0d5ce4e7.md) | 325 | `result-track:60bae30adcc48b3d0d5ce4e71370141b55f6c031132b9b388e97de1a73a3029e` |
| 34 | `theorem` | [UniqueDiffWithinAt.pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-pi--f4c7f59e305d2c5a7ddddd5c.md) | 337 | `result-track:f4c7f59e305d2c5a7ddddd5c26f7dfa997c9c421e01cd5316c511623cc8d410b` |
| 35 | `theorem` | [UniqueDiffOn.prod](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-prod--b01c8bd317b2d8d52f616945.md) | 348 | `result-track:b01c8bd317b2d8d52f6169450c7d75284b8a7cd0ca6d6f69fdc46123fc90d173` |
| 36 | `theorem` | [UniqueDiffOn.pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-pi--7624b9317d3cfb3f5b2a0af4.md) | 355 | `result-track:7624b9317d3cfb3f5b2a0af4034864ace46bd2dbf6c0ff2df43536942c83ed6c` |
| 37 | `theorem` | [UniqueDiffOn.univ_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-univ-pi--4be317c652b6456683887fe7.md) | 363 | `result-track:4be317c652b6456683887fe702060e6b12a2648c1fe9ca44a489a28a49dcba75` |
| 38 | `theorem` | [uniqueDiffWithinAt_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-convex--1ade6168d0c2fa0338c3f1c5.md) | 371 | `result-track:1ade6168d0c2fa0338c3f1c583e354049c9ebff92d0988352bd702979c57ce53` |
| 39 | `theorem` | [uniqueDiffOn_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-convex--8d14a8ddc5e44ea585e762c6.md) | 388 | `result-track:8d14a8ddc5e44ea585e762c63579faac4efc5262360619ce9e5d21f50448f94a` |
| 40 | `theorem` | [uniqueDiffOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-ici--fdf9acc6c709e0f528e7fc36.md) | 393 | `result-track:fdf9acc6c709e0f528e7fc36c8d3a46c545b58f158d387a41cd9273bc49c5a41` |
| 41 | `theorem` | [uniqueDiffOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-iic--4648602d8cc5e8c6c58ce683.md) | 397 | `result-track:4648602d8cc5e8c6c58ce68353c68999d790bcd2d46548a0bb312934d2261754` |
| 42 | `theorem` | [uniqueDiffOn_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-ioi--35704641c2c4f7d32c0c76d4.md) | 401 | `result-track:35704641c2c4f7d32c0c76d457f8ce205cde20446fc73f80c38cb182c1c33603` |
| 43 | `theorem` | [uniqueDiffOn_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-iio--f3ef15d08f7026d0c34c1976.md) | 405 | `result-track:f3ef15d08f7026d0c34c197643d6cbfd3a2aae03c26e452e895b60f45ebe3d81` |
| 44 | `theorem` | [uniqueDiffOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-icc--13526064c2c32d896d84a65b.md) | 409 | `result-track:13526064c2c32d896d84a65bdb8ff4848e18223991dccaeba98d22ba83aa5ba4` |
| 45 | `theorem` | [uniqueDiffOn_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-ico--c9a56fd0d276af56e83de0e9.md) | 413 | `result-track:c9a56fd0d276af56e83de0e990509bd99d3242a591ba13b5fa949db5da8189f3` |
| 46 | `theorem` | [uniqueDiffOn_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-ioc--4b5020ce70478f3c8668f7e6.md) | 419 | `result-track:4b5020ce70478f3c8668f7e627e435592d3e277428ef20dc6712a3197f464ba2` |
| 47 | `theorem` | [uniqueDiffOn_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-ioo--4ba4b30abe312f979a76862b.md) | 425 | `result-track:4ba4b30abe312f979a76862bf4b6d03f366724a99ab6b6b078e26983978a88b9` |
| 48 | `theorem` | [uniqueDiffOn_Icc_zero_one](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffon-icc-zero-one--87c633732b0cc9e08081819b.md) | 430 | `result-track:87c633732b0cc9e08081819b0c24e0ab78e263ab7f5a60a5120f64bd63d2f7e4` |
| 49 | `theorem` | [uniqueDiffWithinAt_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-ioo--a608cab01521afd5e56b4089.md) | 434 | `result-track:a608cab01521afd5e56b4089f698257f97b9f44c35ce13475f37402d4beda47c` |
| 50 | `theorem` | [uniqueDiffWithinAt_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-ioi--647693034391f10e3c5c3cc8.md) | 439 | `result-track:647693034391f10e3c5c3cc8af44969336b753a632c1afb41877c880bed625c1` |
| 51 | `theorem` | [uniqueDiffWithinAt_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant29ea395c96c4c56164a5fb19ae3efb39cc379e3afa1a58a343c31e4149055f42.lean/declarations/uniquediffwithinat-iio--10d37825525ae33a3b866a50.md) | 443 | `result-track:10d37825525ae33a3b866a50b600528dcdfb529aae6391c8d3adf160d9bc2ec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
