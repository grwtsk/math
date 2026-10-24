# Verification target: GRWTSK.Analysis.FunctionalAnalysis.MeanInequalitiesPow.Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81e54cc14d9b56233f677ecb8a30d6668ea0a9fd",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81e54cc14d9b56233f677ecb8a30d6668ea0a9fd`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/macro-rules--6e129bc9c7b2689ae3016cf9.md) | 54 | `declaration-track:6e129bc9c7b2689ae3016cf903d3d1d576a047fd8afdef1e24d2197c03253677` |
| 2 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/pow-arith-mean-le-arith-mean-pow--0e2a06b6138c98102447004a.md) | 60 | `result-track:0e2a06b6138c98102447004a874cb8a751d9e5f9de0f0df13dcf9528d415afe6` |
| 3 | `theorem` | [pow_arith_mean_le_arith_mean_pow_of_even](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/pow-arith-mean-le-arith-mean-pow-of-even--61ab4ec6bfeee9a749dce04a.md) | 66 | `result-track:61ab4ec6bfeee9a749dce04a2bd0bc40fb98556ec76605a71b06d1c4b6880772` |
| 4 | `theorem` | [pow_sum_div_card_le_sum_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/pow-sum-div-card-le-sum-pow--87032b460e7d8a2a3e60b825.md) | 73 | `result-track:87032b460e7d8a2a3e60b825af79b1965e3dc407cb468a1ec3c970fa2b9b0306` |
| 5 | `theorem` | [zpow_arith_mean_le_arith_mean_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/zpow-arith-mean-le-arith-mean-zpow--f99b33d2776af7dc878e61fe.md) | 90 | `result-track:f99b33d2776af7dc878e61fe432e4de79e5fb371a55c28e4c7e395606b5a44bb` |
| 6 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--c518f95f895d3e464b81fff2.md) | 96 | `result-track:c518f95f895d3e464b81fff254809786e2f67f463efc14c37a6ccff4fcec5385` |
| 7 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/arith-mean-le-rpow-mean--386b63d6af2b77e14d544a40.md) | 102 | `result-track:386b63d6af2b77e14d544a400059612316a36ee48ba17819457cf533b8e2ce91` |
| 8 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/pow-arith-mean-le-arith-mean-pow--31e7a10d9ad1933275d64873.md) | 120 | `result-track:31e7a10d9ad1933275d648739134ca9c41e8c2c295f495bdd8fa94f0072a4a07` |
| 9 | `theorem` | [pow_sum_div_card_le_sum_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/pow-sum-div-card-le-sum-pow--fe0b5ef8ea5b03a0059c8663.md) | 127 | `result-track:fe0b5ef8ea5b03a0059c8663c508d1a912d19b3f15406d6ced8456570e8c6ef9` |
| 10 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--05d91ac3a9c770f77a3657de.md) | 135 | `result-track:05d91ac3a9c770f77a3657de352ef494f055582f479d1aedf36a8bdff55e6703` |
| 11 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--dcc237184e23b66e0f17ecd6.md) | 143 | `result-track:dcc237184e23b66e0f17ecd6b5e05cb4dfd62aa16d4aa32ffcfc1c4c49292ebe` |
| 12 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-le-mul-rpow-add-rpow--b8f47596823ee49d288c7080.md) | 151 | `result-track:b8f47596823ee49d288c708064914bace2eaccf7e38546918c24c19095ef9b79` |
| 13 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/arith-mean-le-rpow-mean--fec8a235573584d2348a55f2.md) | 166 | `result-track:fec8a235573584d2348a55f210b5cf44f7992098f31cbb6c2a34742eb7ca2421` |
| 14 | `theorem` | [add_rpow_le_one_of_add_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/add-rpow-le-one-of-add-le-one--108e89226f69385ad2f847aa.md) | 173 | `result-track:108e89226f69385ad2f847aad8cd3b0abeee9784a9e0f7ca305a788b4fe97db6` |
| 15 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/add-rpow-le-rpow-add--49812039c50e347a63e0cbc1.md) | 180 | `result-track:49812039c50e347a63e0cbc1e3cf56e00c55feb80820914e0b0c7e2338ff18f9` |
| 16 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-rpow-le-add--70c7ade5172ae792260e7b61.md) | 197 | `result-track:70c7ade5172ae792260e7b615f7e6688847cf4db72b14f83a82fe50cbad27960` |
| 17 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-rpow-le--eef4f4c5abb13d1b08fd9745.md) | 204 | `result-track:eef4f4c5abb13d1b08fd9745311f3d6fb1f20199a24fa7e70a91f9cb81401251` |
| 18 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-le-add-rpow--51c0c16a19941e326fa3e0ff.md) | 218 | `result-track:51c0c16a19941e326fa3e0ffc36b7dac560a90bbad9e6942bbbe39870872057f` |
| 19 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--7d8277f324d404e674ee7b20.md) | 234 | `result-track:7d8277f324d404e674ee7b206a36453543ba3ef7c9f309cda94c6848eddd17aa` |
| 20 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--8582e5a6cea7d29d309d7dbc.md) | 284 | `result-track:8582e5a6cea7d29d309d7dbccae2b3ad6068dadb9cfa23dcd2043a9199b7e134` |
| 21 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-le-mul-rpow-add-rpow--15f6f1e5a86c0eb3817261fc.md) | 292 | `result-track:15f6f1e5a86c0eb3817261fca478e19bb551ad7be36b50382389774300ead821` |
| 22 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/add-rpow-le-rpow-add--88455197447fec03f5bc9840.md) | 305 | `result-track:88455197447fec03f5bc98407a79f8f933508a44fd92507baee314522c5acb83` |
| 23 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-rpow-le-add--a37e9e73b4b3d49dac346e7b.md) | 318 | `result-track:a37e9e73b4b3d49dac346e7b2a6f7ccab97ae15e58b46d33379148ab6f666037` |
| 24 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-rpow-le--3f0782a85952c9db5e84f1df.md) | 325 | `result-track:3f0782a85952c9db5e84f1df288d3d569d4f696bf70d9688ef04c73ad29898dc` |
| 25 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean/declarations/rpow-add-le-add-rpow--de775fe4a460a5409cd2618b.md) | 338 | `result-track:de775fe4a460a5409cd2618b46f004cf556fdb8454117f742dbf021532c0c46f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
