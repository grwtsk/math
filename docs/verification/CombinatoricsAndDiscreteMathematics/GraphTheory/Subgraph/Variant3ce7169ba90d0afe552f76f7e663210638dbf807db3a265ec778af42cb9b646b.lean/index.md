# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Subgraph.Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fe7a276929710cab52b4bb3a5ab19fa83621d62",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fe7a276929710cab52b4bb3a5ab19fa83621d62`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/preconnected--d9513fb78f585925026a8b19.md) | 37 | `declaration-track:d9513fb78f585925026a8b199d84909d08f10cf935c3cce49c127318aebc53b1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/instance--23169c03b4f6737b18ef31d1.md) | 40 | `declaration-track:23169c03b4f6737b18ef31d1e4ddcd6d6da45257ce46e9087f138bfe3ffc15c0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/instance--efafb7f52bbe25d8a9ea7d28.md) | 42 | `declaration-track:efafb7f52bbe25d8a9ea7d281d053be6676eebab0c6a6c25e3ce2fcdb5b98d77` |
| 4 | `lemma` | [preconnected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/preconnected-iff--1462387373cb9bc52e8ea0fc.md) | 45 | `result-track:1462387373cb9bc52e8ea0fc3ec084f874baea50ff0149695dd2e1cc8bca6c0e` |
| 5 | `structure` | [Connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected--49fd0fbe1980ce30ed919624.md) | 51 | `declaration-track:49fd0fbe1980ce30ed91962482a6d1fa2d8e21e75416fabf9dd5dbb9b21ed93e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/instance--f64fe0fdbce222a6eeec6a03.md) | 55 | `declaration-track:f64fe0fdbce222a6eeec6a03e281346e8710b1605b6b8a06807d8dd776fda2af` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/instance--e545efced129276f7eb7c0fd.md) | 57 | `declaration-track:e545efced129276f7eb7c0fd4ee47185587957629902052fc4926289771baffd` |
| 8 | `lemma` | [connected_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-iff--dc7fedb3f0da5ebe301b881d.md) | 60 | `result-track:dc7fedb3f0da5ebe301b881d751c5a80ff291ad39b2e149ee55f44ba3fd1dcd1` |
| 9 | `lemma` | [connected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-iff--9a923fbdf2f769ff5843a6a5.md) | 63 | `result-track:9a923fbdf2f769ff5843a6a52f05a472420039246cdd8e5106710a36d6d89d18` |
| 10 | `lemma` | [Connected.preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-preconnected--cf2c6fdd1f94f14c440ca513.md) | 67 | `result-track:cf2c6fdd1f94f14c440ca513bb6f98134af8d3b52d367ddd0fbdef5bbec6bb8e` |
| 11 | `lemma` | [Connected.nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-nonempty--97e826f9387fc88100a38d6c.md) | 70 | `result-track:97e826f9387fc88100a38d6c5c8da445747e820ec100c090d4c0517fffd7b796` |
| 12 | `theorem` | [singletonSubgraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/singletonsubgraph-connected--89573a819df5f7e51b22276c.md) | 73 | `result-track:89573a819df5f7e51b22276c7dfd8d4ce0c197c10a21050960267940961cb925` |
| 13 | `theorem` | [subgraphOfAdj_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/subgraphofadj-connected--7fe41e20f405d8c43d48ad2a.md) | 82 | `result-track:7fe41e20f405d8c43d48ad2ab0737e05fbac47dde827d49aeb6cfbf807d2a7d6` |
| 14 | `lemma` | [top_induce_pair_connected_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/top-induce-pair-connected-of-adj--6769740c18c40bf872dca94a.md) | 90 | `result-track:6769740c18c40bf872dca94a8424c7b34da86c6ed78f48daa344550f205f95b5` |
| 15 | `lemma` | [Connected.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-mono--fc853de07808ba63bf594fbe.md) | 96 | `result-track:fc853de07808ba63bf594fbe8f0726b7983cb4973ea880e469e37ee363d3844d` |
| 16 | `lemma` | [Connected.mono'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-mono--1ee6922b730a287be7e34161.md) | 103 | `result-track:1ee6922b730a287be7e34161fb3cd1302d6396b7bd0450961bc92662d9e57665` |
| 17 | `lemma` | [Connected.sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-sup--87e15c26daf06c31c92dd59f.md) | 108 | `result-track:87e15c26daf06c31c92dd59f89c77907dbf6e29fbb521961b8fbcecf0b9fb23c` |
| 18 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Preconnected.Variantf0d9daedf85ad41e4bc73072e4131c8510b35393057971919f586a250b355032.SimpleGraph.Walk.toSubgraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-preconnected--67e2b97cfa4373627c4b61b6.md) | 118 | `result-track:67e2b97cfa4373627c4b61b67705ce962da1bd2dcbd46fa476a18d3934c9c187` |
| 19 | `lemma` | [induce_union_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/induce-union-connected--8f9c2f2936d6a0c05f0d488d.md) | 128 | `result-track:8f9c2f2936d6a0c05f0d488d1bcfefbf9f02c2c9e4c427cdcca7ffae466bd865` |
| 20 | `lemma` | [Connected.adj_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-adj-union--1d49be96fee1e2b0d7691bad.md) | 136 | `result-track:1d49be96fee1e2b0d7691bad87cbd0608e1f6e7c089a45afabfde8b4d2255072` |
| 21 | `lemma` | [preconnected_iff_forall_exists_walk_subgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/preconnected-iff-forall-exists-walk-subgraph--11dfbfd05b55ed7e93082e55.md) | 144 | `result-track:11dfbfd05b55ed7e93082e5588423ce8a5233dd3e5c4f3a415c8bc03c80dc0fe` |
| 22 | `lemma` | [connected_iff_forall_exists_walk_subgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-iff-forall-exists-walk-subgraph--1c8659a320cf580abf5ab296.md) | 158 | `result-track:1c8659a320cf580abf5ab2967083912482d09ab874be46fa334d43b74474000b` |
| 23 | `lemma` | [connected_induce_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/connected-induce-iff--f6ae6f87958cc9fccf1c28ff.md) | 167 | `result-track:f6ae6f87958cc9fccf1c28ff9438b723893eb910c8d2ee1f4e65b405b9361b7c` |
| 24 | `lemma` | [induce_union_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/induce-union-connected--d1428b5a03f217ccb4772afc.md) | 170 | `result-track:d1428b5a03f217ccb4772afc5fc7500fdf1326d4d7edf054abbc0374f65de0fb` |
| 25 | `lemma` | [induce_pair_connected_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/induce-pair-connected-of-adj--bf564568c4d47d4f5293b389.md) | 177 | `result-track:bf564568c4d47d4f5293b38959054c34e7bc4d799b9b2e87e814e34da5493ab6` |
| 26 | `lemma` | [Subgraph.Connected.induce_verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/subgraph-connected-induce-verts--b04552a35386fab3a9ead9c1.md) | 182 | `result-track:b04552a35386fab3a9ead9c11e25a3fb69daf766f4ddbdb4d5a8c8a16ca1b02b` |
| 27 | `lemma` | [Walk.connected_induce_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/walk-connected-induce-support--aa36f9e1c0006241185a9e1c.md) | 187 | `result-track:aa36f9e1c0006241185a9e1c83b90751db83d46febd58b2b68461ea0d3c44f9b` |
| 28 | `lemma` | [induce_connected_adj_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/induce-connected-adj-union--4ed58ea7804865266078cb7e.md) | 192 | `result-track:4ed58ea7804865266078cb7ec83773b5cccf6c784cf70492f5cb669b77d28c2d` |
| 29 | `lemma` | [induce_connected_of_patches](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/induce-connected-of-patches--3dfc5d4903f972552f84ddc0.md) | 206 | `result-track:3dfc5d4903f972552f84ddc0add40ff283b3c68f30791d4883c43d156c09e799` |
| 30 | `lemma` | [induce_sUnion_connected_of_pairwise_not_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/induce-sunion-connected-of-pairwise-not-disjoint--e9745cc5b6d13488b7b55404.md) | 215 | `result-track:e9745cc5b6d13488b7b554046eab06e721f1539204b97200c3997b5ac20d7234` |
| 31 | `lemma` | [extend_finset_to_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant3ce7169ba90d0afe552f76f7e663210638dbf807db3a265ec778af42cb9b646b.lean/declarations/extend-finset-to-connected--644eb5270237a097dea54c1b.md) | 228 | `result-track:644eb5270237a097dea54c1b0ae61c070d356ce32fab804a246b6c9a273f6401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
