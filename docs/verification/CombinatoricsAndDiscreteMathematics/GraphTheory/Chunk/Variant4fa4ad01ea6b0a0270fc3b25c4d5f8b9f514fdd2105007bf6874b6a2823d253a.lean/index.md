# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Chunk.Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6790588d16c212f809dcd20bfa350c3ce7220c36",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6790588d16c212f809dcd20bfa350c3ce7220c36`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Regularity.Bound` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Equitabilise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Uniform` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/chunk--3ba34f6d341bf81da055106c.md) | 66 | `declaration-track:3ba34f6d341bf81da055106c71f1063b6eea87d12601f4c1f3ddacd96dbf3343` |
| 2 | `def` | [star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/star--484eb530da55c4ca086016e4.md) | 75 | `declaration-track:484eb530da55c4ca086016e447a5dc582b7248da5d5f501c09fc726418781236` |
| 3 | `theorem` | [biUnion_star_subset_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/biunion-star-subset-nonuniformwitness--74fad28343a5d3132e4d3eaf.md) | 85 | `result-track:74fad28343a5d3132e4d3eafa246909c1283b5075d69ff83f0c85de2d6270728` |
| 4 | `theorem` | [star_subset_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/star-subset-chunk--e07714e7db306b2bfc666bd1.md) | 91 | `result-track:e07714e7db306b2bfc666bd1932c16542306edaf32f91bc2f6e918c1ebea2293` |
| 5 | `theorem` | [card_nonuniformWitness_sdiff_biUnion_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/card-nonuniformwitness-sdiff-biunion-star--ab26fdf9282a6b50d24f50f5.md) | 94 | `result-track:ab26fdf9282a6b50d24f50f5a09d48700167835e48af82389e678a0ae8a2ac8d` |
| 6 | `theorem` | [one_sub_eps_mul_card_nonuniformWitness_le_card_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/one-sub-eps-mul-card-nonuniformwitness-le-card-star--421d89aeea67ec4acc1490e6.md) | 127 | `result-track:421d89aeea67ec4acc1490e60530850051c3819ccefb2cea8d78d882013807d4` |
| 7 | `theorem` | [card_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/card-chunk--9beb49bd982f22506010900f.md) | 179 | `result-track:9beb49bd982f22506010900f961b6397373c3816e8060df55a62c26a19f5365a` |
| 8 | `theorem` | [card_eq_of_mem_parts_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/card-eq-of-mem-parts-chunk--7afa0d57700846dd06046ef7.md) | 186 | `result-track:7afa0d57700846dd06046ef74e08fd761c57c99f6feb8067d843bafbce50432e` |
| 9 | `theorem` | [m_le_card_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/m-le-card-of-mem-chunk-parts--b0bddd5bde842b124d4b2721.md) | 191 | `result-track:b0bddd5bde842b124d4b272142dd580a3f01c059997d237d5e555a0818ba0661` |
| 10 | `theorem` | [card_le_m_add_one_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/card-le-m-add-one-of-mem-chunk-parts--338f7a4aa973c25c39b79174.md) | 194 | `result-track:338f7a4aa973c25c39b791749c7474c368da8f2917925390d81e59ab5ccca53a` |
| 11 | `theorem` | [card_biUnion_star_le_m_add_one_card_star_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/card-biunion-star-le-m-add-one-card-star-mul--93138fa98a109f6f9344a2ff.md) | 197 | `result-track:93138fa98a109f6f9344a2ff6c559ba1428d662926043b8951e5d73123833965` |
| 12 | `theorem` | [le_sum_card_subset_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/le-sum-card-subset-chunk-parts--2acd37583dba2ba8121aa640.md) | 202 | `result-track:2acd37583dba2ba8121aa640da68a7e51c69588e312125cc16148edc9cd375b1` |
| 13 | `theorem` | [sum_card_subset_chunk_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/sum-card-subset-chunk-parts-le--4ef13cd1ad71dd2991868c09.md) | 210 | `result-track:4ef13cd1ad71dd2991868c097d4064d89d684f1736e6f04f9d6c66fef90ef71f` |
| 14 | `theorem` | [one_sub_le_m_div_m_add_one_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/one-sub-le-m-div-m-add-one-sq--40a48a766ab248be603baa96.md) | 220 | `result-track:40a48a766ab248be603baa9601d13329cce3492bf86e9544f44316f1c0c1db0d` |
| 15 | `theorem` | [m_add_one_div_m_le_one_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/m-add-one-div-m-le-one-add--951c944cef671017194bf4d7.md) | 234 | `result-track:951c944cef671017194bf4d7c5cef044d308d419a18a2b1142bf26a0ba8b157d` |
| 16 | `theorem` | [density_sub_eps_le_sum_density_div_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/density-sub-eps-le-sum-density-div-card--42f464a20a3cf8935d308f8c.md) | 249 | `result-track:42f464a20a3cf8935d308f8cf9a3fac7b6aacf924fbb5cd33d33b8f39eb5abe9` |
| 17 | `theorem` | [sum_density_div_card_le_density_add_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/sum-density-div-card-le-density-add-eps--5336ad906abe9d312a230eee.md) | 286 | `result-track:5336ad906abe9d312a230eee94e6c1017a3a33cbb195f80029ba95c921702b0b` |
| 18 | `theorem` | [average_density_near_total_density](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/average-density-near-total-density--022b0d592d2a6df1c02fd9dd.md) | 325 | `result-track:022b0d592d2a6df1c02fd9dd90093f1014de70202e81e51431c691a9c2a8b372` |
| 19 | `theorem` | [edgeDensity_chunk_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/edgedensity-chunk-aux--a901f2cad042be862225a9b6.md) | 342 | `result-track:a901f2cad042be862225a9b688cde155419d3ed7af5c5d5793ccb9a232296eab` |
| 20 | `theorem` | [abs_density_star_sub_density_le_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/abs-density-star-sub-density-le-eps--243d6e8ec732372b98d8bb6f.md) | 369 | `result-track:243d6e8ec732372b98d8bb6f52d86a56f3f7b5153197cf4545307b0072c646f4` |
| 21 | `theorem` | [eps_le_card_star_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/eps-le-card-star-div--578fc89468055d4105fa617a.md) | 381 | `result-track:578fc89468055d4105fa617a85ef5f576e4709e949b80870c4df2f1c980b6121` |
| 22 | `theorem` | [edgeDensity_star_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/edgedensity-star-not-uniform--074e2df6f86966f67c60fed0.md) | 424 | `result-track:074e2df6f86966f67c60fed0d81994e72a998c3e0b1dea8c1d3ca3f47e4722b5` |
| 23 | `theorem` | [edgeDensity_chunk_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/edgedensity-chunk-not-uniform--39f3004b3547701c492ebc5b.md) | 465 | `result-track:39f3004b3547701c492ebc5b6ceb22a28886e96fdde38fcea7cbcc7ec79db97f` |
| 24 | `theorem` | [edgeDensity_chunk_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/declarations/edgedensity-chunk-uniform--15655d0bf7d92bbea559b297.md) | 516 | `result-track:15655d0bf7d92bbea559b2978c27439ee308767f5d9fba2b89a5909872f8feec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
