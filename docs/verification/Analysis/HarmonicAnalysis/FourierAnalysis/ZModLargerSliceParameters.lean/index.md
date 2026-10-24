# Verification target: GRWTSK.Analysis.Fourier.ZModLargerSliceParameters

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85`.

Source path: `GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModLargerSliceParameters.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModPartitionEnergy`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceConstant](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/sourceconstant--bcc1c2494eafeba51f2ef665.md) | 18 | `declaration-track:bcc1c2494eafeba51f2ef6655b2e6ad14a97566f8e5aa3144db6d9baf04174dd` |
| 2 | `def` | [sliceThreshold](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/slicethreshold--86970c0e52f7879af2d4bff4.md) | 20 | `declaration-track:86970c0e52f7879af2d4bff4ef4377314229665b2b9736890fdd822330589ec0` |
| 3 | `def` | [largerSliceConstant](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/largersliceconstant--da651a76a1bba5ff2b0e9281.md) | 23 | `declaration-track:da651a76a1bba5ff2b0e9281672f4038121b0389cf8059ad4f68092c587776fa` |
| 4 | `def` | [auxiliarySliceSize](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/auxiliaryslicesize--2fedc1327d970b02d93ae11a.md) | 26 | `declaration-track:2fedc1327d970b02d93ae11a49ddc82d90843bc724963ab194ffeec3c1b44f0f` |
| 5 | `def` | [retainedSliceSize](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/retainedslicesize--c90c9cb60dbbbf02bed6f058.md) | 29 | `declaration-track:c90c9cb60dbbbf02bed6f0588016bf51c84619a07b579616288e3ea877adfd92` |
| 6 | `theorem` | [sourceConstant_pos](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/sourceconstant-pos--c6578842d4cae771e987a320.md) | 32 | `result-track:c6578842d4cae771e987a32019f65a251bbb9220cc99c34f765e2db7338b9249` |
| 7 | `theorem` | [sourceConstant_ge_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/sourceconstant-ge-one--6ef67756c2af9f660c28f8b3.md) | 35 | `result-track:6ef67756c2af9f660c28f8b33b4c1c72156d22557adbffde1b3a3ff96f739a14` |
| 8 | `theorem` | [log_sq_le_sixteen_sqrt](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/log-sq-le-sixteen-sqrt--9793fab0597c096b18a021c6.md) | 38 | `result-track:9793fab0597c096b18a021c6c123b801c62625bf4c43b239643b9dbb4d2a2213` |
| 9 | `theorem` | [sourceConstant_mul_log_ge_two](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/sourceconstant-mul-log-ge-two--02905045863c6f811858b311.md) | 51 | `result-track:02905045863c6f811858b311c5010008a35a13165372af4c12db760db7e81c31` |
| 10 | `theorem` | [sample_le_card_of_density](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/sample-le-card-of-density--660497e9c441c8dbef7c413f.md) | 59 | `result-track:660497e9c441c8dbef7c413fb661b8030942ae3dd2c06049bc6494c233297372` |
| 11 | `theorem` | [large_card_log_square](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/large-card-log-square--ac84ce6842cc727abbad3d4a.md) | 68 | `result-track:ac84ce6842cc727abbad3d4a91d0d6c405a3635ed5b7206a67e13ec0f6d889d3` |
| 12 | `theorem` | [auxiliarySliceSize_bounds](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/auxiliaryslicesize-bounds--3ec23a67a52c4fb4620db046.md) | 93 | `result-track:3ec23a67a52c4fb4620db0464e6cb31e275c7b89e380260af8f82bdda26deedc` |
| 13 | `theorem` | [retainedSliceSize_bounds](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/retainedslicesize-bounds--5a2a1e5b32e921cf36c971d6.md) | 154 | `result-track:5a2a1e5b32e921cf36c971d624ab8dc71d19aa5f15b6905f87ca2e6392ef0ac7` |
| 14 | `theorem` | [residualSliceSize_source_range](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/declarations/residualslicesize-source-range--c67982a1c3927cf7ea4d39f0.md) | 231 | `result-track:c67982a1c3927cf7ea4d39f06b66d81b50479bb357f7ba01227e7d67ca575a09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
