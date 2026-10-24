# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efbc70789ed73adff0a19b412911e3270c392bc2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efbc70789ed73adff0a19b412911e3270c392bc2`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsUltrametricDist](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/isultrametricdist--611e482deecd38be7305d995.md) | 41 | `declaration-track:611e482deecd38be7305d9954c74b736becbee5c70c1e9d4f565cdb3c441f72d` |
| 2 | `lemma` | [dist_triangle_max](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/dist-triangle-max--b17b099458a07f9e8d0be635.md) | 48 | `result-track:b17b099458a07f9e8d0be635fdcc8c24d33fdf6c74695f5fa2c2df005504019b` |
| 3 | `lemma` | [dist_eq_max_of_dist_ne_dist](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/dist-eq-max-of-dist-ne-dist--053e4e4dc57c46511096f1c8.md) | 54 | `result-track:053e4e4dc57c46511096f1c8af9ea2dd9e0effd8ca89e7c3ff639c9f58edad27` |
| 4 | `instance` | [subtype](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/subtype--c49dc9246f4085bf9b2a5aa0.md) | 65 | `declaration-track:c49dc9246f4085bf9b2a5aa06250bc83deab16b5273e0f5a75deec5d0f74e777` |
| 5 | `lemma` | [ball_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/ball-eq-of-mem--d79a325fa87202df4a7d35d7.md) | 68 | `result-track:d79a325fa87202df4a7d35d72c91346d5a24012f2286c3907b101d67dae6d9b1` |
| 6 | `lemma` | [mem_ball_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/mem-ball-iff--2f217843a23929ddd14efe38.md) | 74 | `result-track:2f217843a23929ddd14efe38a6562f011f27c5d9fa19266c446135a65f82d3b3` |
| 7 | `lemma` | [ball_subset_trichotomy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/ball-subset-trichotomy--7cee35773cf8f9e4a795a410.md) | 82 | `result-track:7cee35773cf8f9e4a795a41044805e21c60b5342cebfd606d2b1c3d54ce8ed4b` |
| 8 | `lemma` | [ball_eq_or_disjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/ball-eq-or-disjoint--59c137e0220a189fb43f45c2.md) | 92 | `result-track:59c137e0220a189fb43f45c25c2c5f998a660576f2ab0437bc0326377861c1b1` |
| 9 | `lemma` | [closedBall_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/closedball-eq-of-mem--9d7b1ac4ce84911c6a78f5e7.md) | 99 | `result-track:9d7b1ac4ce84911c6a78f5e749421e00a5a5876d66469ca66f99347b85a9d362` |
| 10 | `lemma` | [mem_closedBall_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/mem-closedball-iff--61a11accac412e4fd6ba893f.md) | 106 | `result-track:61a11accac412e4fd6ba893fe5e7772715ab63898947630302fb0e35114a9899` |
| 11 | `lemma` | [closedBall_subset_trichotomy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/closedball-subset-trichotomy--28be8da0e3781895cf60ba30.md) | 115 | `result-track:28be8da0e3781895cf60ba308859bc994e71fd83f50704473807505b932b7d10` |
| 12 | `lemma` | [isClosed_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/isclosed-ball--b9aad5186745843c183dac7d.md) | 127 | `result-track:b9aad5186745843c183dac7d97c43d7b37bf05d909c78b31e64f9eef9bb1898a` |
| 13 | `lemma` | [isClopen_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/isclopen-ball--7a6348514fd392c433ec1269.md) | 143 | `result-track:7a6348514fd392c433ec126958ff4a2027c73fc9fc3009639c95b835eb5d2ae4` |
| 14 | `lemma` | [frontier_ball_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/frontier-ball-eq-empty--56eb6b1cb9e4312f22db8359.md) | 145 | `result-track:56eb6b1cb9e4312f22db83595a10cced3e74fef9f9ebbe38d3bf5374bff32a7e` |
| 15 | `lemma` | [closedBall_eq_or_disjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/closedball-eq-or-disjoint--fe657dfa5f630c586569db89.md) | 148 | `result-track:fe657dfa5f630c586569db891e2f48184993ac3dc0e3b4f14ca07dd5d2e564f7` |
| 16 | `lemma` | [isOpen_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/isopen-closedball--03c502b56541f23189f4b698.md) | 156 | `result-track:03c502b56541f23189f4b698b703697fc64628119903bc08038766a58c3e8016` |
| 17 | `lemma` | [isClopen_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/isclopen-closedball--8e2de6cafabbe5e21f5620f9.md) | 171 | `result-track:8e2de6cafabbe5e21f5620f984305206e2af535dcdd434b72826b2d740cc0e7b` |
| 18 | `lemma` | [frontier_closedBall_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/frontier-closedball-eq-empty--116ba5914f315f7fd4711044.md) | 174 | `result-track:116ba5914f315f7fd4711044a4188aefd247a1163b7c33d8efc0a0cc29b0f439` |
| 19 | `lemma` | [isOpen_sphere](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/isopen-sphere--c993934d8cb57a5d2466d0b0.md) | 177 | `result-track:c993934d8cb57a5d2466d0b0aa661eec08d6d31ddfcf9760d3a2a1fd1d5c7891` |
| 20 | `lemma` | [isClopen_sphere](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3ec348f040dbd909785e4135fc29056ae1f24b4e4990985039623648b01cd2b5.lean/declarations/isclopen-sphere--45c84673e2998dfc49c57880.md) | 181 | `result-track:45c84673e2998dfc49c57880e5162a24b0abc980b456605cbb929067fa4ee63d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
