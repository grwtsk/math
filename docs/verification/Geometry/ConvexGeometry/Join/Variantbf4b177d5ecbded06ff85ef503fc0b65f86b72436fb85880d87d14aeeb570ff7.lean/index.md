# Verification target: GRWTSK.Geometry.ConvexGeometry.Join.Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91b909ec8faff7d48625e69ded89f35afda4679c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91b909ec8faff7d48625e69ded89f35afda4679c`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin--4cc676f0acf18e4231d148da.md) | 29 | `declaration-track:4cc676f0acf18e4231d148dac8327736be93edf7f8a8735f3d623bf16efa5104` |
| 2 | `theorem` | [mem_convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/mem-convexjoin--c4cd54c4c8a801f62faf23d5.md) | 34 | `result-track:c4cd54c4c8a801f62faf23d584e35600248ddf3424039d80c1e5b6930d9570f7` |
| 3 | `theorem` | [convexJoin_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-comm--ab1ac27bf1ed023d4fd93583.md) | 37 | `result-track:ab1ac27bf1ed023d4fd9358395281cb0e2e5f6863ec4ad1fef746fc9e1aad497` |
| 4 | `theorem` | [convexJoin_mono](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-mono--c559c1b78daa5aa1ed2ec625.md) | 40 | `result-track:c559c1b78daa5aa1ed2ec6250322524c99298dd99613e6ffd4a452a093f6c9f6` |
| 5 | `theorem` | [convexJoin_mono_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-mono-left--f822a91b8bfa6c5281c03d0f.md) | 43 | `result-track:f822a91b8bfa6c5281c03d0f74d594c6ca7b2ec30b259f222578e2dc19cefaa7` |
| 6 | `theorem` | [convexJoin_mono_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-mono-right--6e497b40eb264f20acb398c4.md) | 46 | `result-track:6e497b40eb264f20acb398c4c8d93d6c649f73220122b5f3932d92dde6b4908c` |
| 7 | `theorem` | [convexJoin_empty_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-empty-left--412460b0354f1d3dcdc5e2fe.md) | 50 | `result-track:412460b0354f1d3dcdc5e2fec888b28f21a14617a76070f8bf9c480f6081ad5c` |
| 8 | `theorem` | [convexJoin_empty_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-empty-right--b3e83be2b27073f481521c0b.md) | 53 | `result-track:b3e83be2b27073f481521c0ba7fe4b866673e42e2d03bde2262b978f26bb39ab` |
| 9 | `theorem` | [convexJoin_singleton_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-singleton-left--cb58326ec5d9699f4513afe8.md) | 56 | `result-track:cb58326ec5d9699f4513afe866c3005948f0dcd96f821d2be5bc686a750bd087` |
| 10 | `theorem` | [convexJoin_singleton_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-singleton-right--fb170bc096bd22baf33ca22d.md) | 60 | `result-track:fb170bc096bd22baf33ca22dd35b83365804a7e79896ecb6bd2803a93448b169` |
| 11 | `theorem` | [convexJoin_singletons](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-singletons--d4bae7d27eaa329e4652264c.md) | 63 | `result-track:d4bae7d27eaa329e4652264cfe143f4a2f29b4b20d691c26a0531eac1f9f3bf8` |
| 12 | `theorem` | [convexJoin_union_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-union-left--56fc9aab5d3eabb3293f9b60.md) | 66 | `result-track:56fc9aab5d3eabb3293f9b605ab2fc882912d78177dab06c28ab9ec72753e235` |
| 13 | `theorem` | [convexJoin_union_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-union-right--861f9b45afcd7edea4b48309.md) | 71 | `result-track:861f9b45afcd7edea4b48309f9eaa93af9da1308d44a042f975e7c6c06e8d4d0` |
| 14 | `theorem` | [convexJoin_iUnion_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-iunion-left--0e10fa08e5ab638a1b79f331.md) | 76 | `result-track:0e10fa08e5ab638a1b79f33190f1852ac9b044fce15778bcdabb0e33e1974661` |
| 15 | `theorem` | [convexJoin_iUnion_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-iunion-right--acc41ed6d1628b917dd0a301.md) | 82 | `result-track:acc41ed6d1628b917dd0a301ff8139f2a64e7ec317d055fd3009013cecf2ec20` |
| 16 | `theorem` | [segment_subset_convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/segment-subset-convexjoin--bf1c56ab54ae10483e54bad8.md) | 86 | `result-track:bf1c56ab54ae10483e54bad8fe3f32526df6f4393d8085746368bb4438268b97` |
| 17 | `theorem` | [subset_convexJoin_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/subset-convexjoin-left--5baac3cab9939340018e41c9.md) | 92 | `result-track:5baac3cab9939340018e41c96dbe8562923c1a771f1fede6482837dcebd1a6a1` |
| 18 | `theorem` | [subset_convexJoin_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/subset-convexjoin-right--d8599044253533b6152cf99e.md) | 96 | `result-track:d8599044253533b6152cf99e46cd9a0d42198b30c201803005adfb0af65f5368` |
| 19 | `theorem` | [convexJoin_subset](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-subset--b4898e06e289ede7869b49c4.md) | 101 | `result-track:b4898e06e289ede7869b49c489761270009e33a4290b1e0c53f7d27368f20603` |
| 20 | `theorem` | [convexJoin_subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-subset-convexhull--5447dd67726ba12a204df7ec.md) | 104 | `result-track:5447dd67726ba12a204df7ecf710fc59ced94df525521ce8ad75cfaa58d83bef` |
| 21 | `theorem` | [convexJoin_assoc_aux](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-assoc-aux--ce446751b74e3c87f25ffd34.md) | 116 | `result-track:ce446751b74e3c87f25ffd34ab9ee17c12035cdf511ba6306ad03f91f77bcd7d` |
| 22 | `theorem` | [convexJoin_assoc](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-assoc--093f09935a3b6875528ddf9a.md) | 130 | `result-track:093f09935a3b6875528ddf9a0708460581450c04999063138b377b3c310a2901` |
| 23 | `theorem` | [convexJoin_left_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-left-comm--577b57c91a6cd35dc6633ac3.md) | 136 | `result-track:577b57c91a6cd35dc6633ac387a4c3e8e8fcc294c7936e0fc4f47ea69b804a58` |
| 24 | `theorem` | [convexJoin_right_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-right-comm--2274caacd85a9cae4b8f752f.md) | 140 | `result-track:2274caacd85a9cae4b8f752f109306d0ff5925ea12336f75e7ca6c811cda66be` |
| 25 | `theorem` | [convexJoin_convexJoin_convexJoin_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-convexjoin-convexjoin-comm--9ded2aeb4304eaf6a756b2a6.md) | 144 | `result-track:9ded2aeb4304eaf6a756b2a6ba9afa05e3ba9416dac2a2011e312f31e3932b78` |
| 26 | `theorem` | [Convex.convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convex-convexjoin--8ac143e94acfd3f4700cf63d.md) | 149 | `result-track:8ac143e94acfd3f4700cf63d8770b5389bf8de9535f1b02dcb86556eb59b6607` |
| 27 | `theorem` | [Convex.convexHull_union](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convex-convexhull-union--3a945516e86e299510524db2.md) | 161 | `result-track:3a945516e86e299510524db2812b9a5cda9d1cba37e7a1169664c32cd11806e3` |
| 28 | `theorem` | [convexHull_union](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexhull-union--f4da283366c3b9d3171d8143.md) | 167 | `result-track:f4da283366c3b9d3171d8143714225390b89b8689e35dc997374dfe8139d32db` |
| 29 | `theorem` | [convexHull_insert](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexhull-insert--9eb55bd933bae617c8fa9d56.md) | 172 | `result-track:9eb55bd933bae617c8fa9d5694fbe84b38fe28761241fdc3c60f9323ada1ce0a` |
| 30 | `theorem` | [convexJoin_segments](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-segments--b1403e28a57a4d0a51d3c775.md) | 176 | `result-track:b1403e28a57a4d0a51d3c7755971677b80466077108031bdb3bde6f655608489` |
| 31 | `theorem` | [convexJoin_segment_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-segment-singleton--fc79b791202eab39eab0dd2b.md) | 182 | `result-track:fc79b791202eab39eab0dd2b0138be98ce3b255bc634785e7df530f2548dda8f` |
| 32 | `theorem` | [convexJoin_singleton_segment](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variantbf4b177d5ecbded06ff85ef503fc0b65f86b72436fb85880d87d14aeeb570ff7.lean/declarations/convexjoin-singleton-segment--36d9efd9b1e656d2d2c045ca.md) | 186 | `result-track:36d9efd9b1e656d2d2c045ca4fda2e9271da4da5e8b103cf290dd3c7e8f4677c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
