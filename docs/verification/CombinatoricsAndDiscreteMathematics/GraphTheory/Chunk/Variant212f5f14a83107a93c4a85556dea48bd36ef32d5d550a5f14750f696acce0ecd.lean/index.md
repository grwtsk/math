# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Chunk.Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe82b5b7f503465ea2496096f7f8af51b174624c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe82b5b7f503465ea2496096f7f8af51b174624c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Regularity.Bound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Equitabilise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Uniform` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/macro-rules--034397158ba9617dd01f4ca7.md) | 42 | `declaration-track:034397158ba9617dd01f4ca7c3c4d7455dd3b93b41d305debdd85853b77805c9` |
| 2 | `def` | [chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/chunk--080f89316ef8d55d71c13326.md) | 63 | `declaration-track:080f89316ef8d55d71c13326a5e518462d2f91410c90803b1e720fbf63c11572` |
| 3 | `def` | [star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/star--563e6ef852de853c22b4a727.md) | 73 | `declaration-track:563e6ef852de853c22b4a7272d189c1535c53cbeb28ce4d0102389dd6032db0b` |
| 4 | `theorem` | [biUnion_star_subset_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/biunion-star-subset-nonuniformwitness--292ada99c4a731d574d248a9.md) | 84 | `result-track:292ada99c4a731d574d248a9ed7efb303a22509c0e6eb4cf9124cb8064d084c6` |
| 5 | `theorem` | [star_subset_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/star-subset-chunk--09bdb2662b49652d61279aa9.md) | 91 | `result-track:09bdb2662b49652d61279aa973307f74e0ae10f2f8c53cd756f4f243383453dc` |
| 6 | `theorem` | [card_nonuniformWitness_sdiff_biUnion_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/card-nonuniformwitness-sdiff-biunion-star--fffaab77b1edfe0a934f6ea7.md) | 95 | `result-track:fffaab77b1edfe0a934f6ea7e58b1e1d9f3e9d7cab5f9b171c2342e3e05297b8` |
| 7 | `theorem` | [one_sub_eps_mul_card_nonuniformWitness_le_card_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/one-sub-eps-mul-card-nonuniformwitness-le-card-star--73fa721516f1d5da65b33513.md) | 129 | `result-track:73fa721516f1d5da65b335139712fae7a21a16b4385fb5e28dced93bae9658fa` |
| 8 | `theorem` | [card_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/card-chunk--dd91c8d6463c63fb7da06969.md) | 183 | `result-track:dd91c8d6463c63fb7da06969869bd3fbf5401c3793c1ba0fa45fa54974d7593e` |
| 9 | `theorem` | [card_eq_of_mem_parts_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/card-eq-of-mem-parts-chunk--5eb2894ed0daa9de03850c18.md) | 191 | `result-track:5eb2894ed0daa9de03850c184873c7876377149c119936a31f2a300c8d4eca12` |
| 10 | `theorem` | [m_le_card_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/m-le-card-of-mem-chunk-parts--38ea8b4f5bcd4320ce9a9620.md) | 197 | `result-track:38ea8b4f5bcd4320ce9a962036dcc8cdc2c1d242a698cede58afe208ac1e97d3` |
| 11 | `theorem` | [card_le_m_add_one_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/card-le-m-add-one-of-mem-chunk-parts--c50727e0476c4d42f2246169.md) | 201 | `result-track:c50727e0476c4d42f2246169f969ee317303aa82e4f9806868a627627b3a96dc` |
| 12 | `theorem` | [card_biUnion_star_le_m_add_one_card_star_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/card-biunion-star-le-m-add-one-card-star-mul--d41a30c8d2f552bce97e5088.md) | 205 | `result-track:d41a30c8d2f552bce97e508838f8cade4dcb7d0839be1465760efe64a0da1cc2` |
| 13 | `theorem` | [le_sum_card_subset_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/le-sum-card-subset-chunk-parts--a47abf8d4716dac520f759a7.md) | 211 | `result-track:a47abf8d4716dac520f759a7ee1ccbc642ef266bcc11e19fed24c95e7604e0c0` |
| 14 | `theorem` | [sum_card_subset_chunk_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/sum-card-subset-chunk-parts-le--36e12c9a8ed4a2de45b603da.md) | 219 | `result-track:36e12c9a8ed4a2de45b603dabef7b26802eb1cbb5a0e357c3d8835aaf8fd755e` |
| 15 | `theorem` | [one_sub_le_m_div_m_add_one_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/one-sub-le-m-div-m-add-one-sq--125f0a881001b20a16fbdc26.md) | 229 | `result-track:125f0a881001b20a16fbdc26e0cffc3825b70e134af32631687569ba35bd0f67` |
| 16 | `theorem` | [m_add_one_div_m_le_one_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/m-add-one-div-m-le-one-add--ba7b42b5d21752b300079220.md) | 243 | `result-track:ba7b42b5d21752b300079220b2021ef9a998eee9fc514e7eef47ae1159a94713` |
| 17 | `theorem` | [density_sub_eps_le_sum_density_div_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/density-sub-eps-le-sum-density-div-card--2e3b9e828912f55173391ca7.md) | 259 | `result-track:2e3b9e828912f55173391ca7a7df97e66036a7c1a2c5aed56499031b8f8e3fac` |
| 18 | `theorem` | [sum_density_div_card_le_density_add_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/sum-density-div-card-le-density-add-eps--468e903a24c14726bcb6ae2d.md) | 297 | `result-track:468e903a24c14726bcb6ae2d90a0468df77d05337c4d09c3dab5803d1e460eab` |
| 19 | `theorem` | [average_density_near_total_density](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/average-density-near-total-density--4398926c0b0e25693281002f.md) | 335 | `result-track:4398926c0b0e25693281002f797a13d515193fa8d164b9781f277e805d43a8fd` |
| 20 | `theorem` | [edgeDensity_chunk_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/edgedensity-chunk-aux--369a797e0c9efdd4b420998f.md) | 352 | `result-track:369a797e0c9efdd4b420998f281c52c2440684b6875126086ac1bb02cb04b057` |
| 21 | `theorem` | [abs_density_star_sub_density_le_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/abs-density-star-sub-density-le-eps--6d093a56aff00da37b376363.md) | 380 | `result-track:6d093a56aff00da37b3763632e318904c76a031ce07217b8cfc8e977b9006854` |
| 22 | `theorem` | [eps_le_card_star_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/eps-le-card-star-div--eb2dc817631579d362f87637.md) | 392 | `result-track:eb2dc817631579d362f87637817b398da4acc6516d244c7ce454f019fbbb5c96` |
| 23 | `theorem` | [edgeDensity_star_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/edgedensity-star-not-uniform--5b3ad1d6e4afb5ebd3556755.md) | 434 | `result-track:5b3ad1d6e4afb5ebd35567555fe7cbafe02829b3626c76a3082c9c3269328706` |
| 24 | `theorem` | [edgeDensity_chunk_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/edgedensity-chunk-not-uniform--892d02fc365a834187eed25d.md) | 476 | `result-track:892d02fc365a834187eed25d32619643490acbca3c5bcb79d601649108d3665f` |
| 25 | `theorem` | [edgeDensity_chunk_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/declarations/edgedensity-chunk-uniform--71f7a92e3d30f5d194fd9a1f.md) | 524 | `result-track:71f7a92e3d30f5d194fd9a1fe513ce47ea7848393b25490e4a3f31bc223155ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
