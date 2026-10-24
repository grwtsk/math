# Verification target: GRWTSK.Topology.GeneralTopology.DerivedSet.Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c63ceacb3acdc0d79f7efaad41a350f4fc5d4d8e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c63ceacb3acdc0d79f7efaad41a350f4fc5d4d8e`.

Source path: `GRWTSK/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.map](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/accpt-map--9057674c6bd6f1810e8623cf.md) | 25 | `result-track:9057674c6bd6f1810e8623cf0ffd930eb7e070d6264dc0cc4295e9ba6796a2b7` |
| 2 | `def` | [derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/derivedset--61f3d61b6d99c95c00a213db.md) | 37 | `declaration-track:61f3d61b6d99c95c00a213db8f2f5fec88a4c8666292eddaa74610074a80c57c` |
| 3 | `lemma` | [mem_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/mem-derivedset--aeb2829c296ac8767986bc9a.md) | 40 | `result-track:aeb2829c296ac8767986bc9a9513e90e6bb12808342437c93350c1d3d407877c` |
| 4 | `lemma` | [derivedSet_union](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/derivedset-union--1c7fbf8f84f49e7da2c26607.md) | 42 | `result-track:1c7fbf8f84f49e7da2c26607decca1d01747ebfd2afc0572220eb86b9d2031bb` |
| 5 | `lemma` | [derivedSet_mono](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/derivedset-mono--7a58476043c11d16a018e2ce.md) | 46 | `result-track:7a58476043c11d16a018e2ce5c33ae02236a8e42c5e27492afa6ff5e0422c036` |
| 6 | `def` | [relDerivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/relderivedset--61cf07df4ea3e5afb9736104.md) | 50 | `declaration-track:61cf07df4ea3e5afb97361046c52ea25e99cd82a489e615301bb67a7fb8f1bc7` |
| 7 | `lemma` | [relDerivedSet_apply](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/relderivedset-apply--7947437f07611803ec619a71.md) | 54 | `result-track:7947437f07611803ec619a7186f1388bddd181160b57f36245d317ef1fe8f26c` |
| 8 | `lemma` | [relDerivedSet_subset](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/relderivedset-subset--b5913b0c961e0e91d887a821.md) | 56 | `result-track:b5913b0c961e0e91d887a821910219b0ff05a28ed5c55d6a421459748f66d35a` |
| 9 | `theorem` | [Continuous.image_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/continuous-image-derivedset--8ba05299fb3d54844d720e18.md) | 59 | `result-track:8ba05299fb3d54844d720e186cfa1e40e79c87110b7534e6b8e9674fd829456a` |
| 10 | `lemma` | [derivedSet_subset_closure](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/derivedset-subset-closure--4f64e6648e0cd883fb0c921d.md) | 68 | `result-track:4f64e6648e0cd883fb0c921d54e2911403c3d74d5f8fbeaf2aded6bbe5c9a7c1` |
| 11 | `lemma` | [isClosed_iff_derivedSet_subset](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/isclosed-iff-derivedset-subset--062bc5fa47da7d76c1e60bc1.md) | 71 | `result-track:062bc5fa47da7d76c1e60bc128b146f0f9a9fa34d8d73f8af3d3eb7188fae805` |
| 12 | `lemma` | [IsClosed.relDerivedSet_eq](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/isclosed-relderivedset-eq--2c8a88d8a3173171a0985422.md) | 81 | `result-track:2c8a88d8a3173171a0985422d530ba312d054fcc2e28b2389a7d7c99ea45ac9d` |
| 13 | `lemma` | [closure_eq_self_union_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/closure-eq-self-union-derivedset--a4312b94afd4acc5a55e274b.md) | 85 | `result-track:a4312b94afd4acc5a55e274b04b26bbd32fccb7d06dc7c627e68044ba777db0b` |
| 14 | `lemma` | [derivedSet_closure](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/derivedset-closure--e66f109ddb166569f76d0021.md) | 95 | `result-track:e66f109ddb166569f76d0021c85fbf1f09dc2bc3429ad3097fdbcc6103ccc16b` |
| 15 | `lemma` | [isClosed_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/isclosed-derivedset--791dfd25bac3b144c084a974.md) | 103 | `result-track:791dfd25bac3b144c084a97418786038b4bc35ac7e630c6fbc359b3e39acc3a6` |
| 16 | `lemma` | [preperfect_iff_subset_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/preperfect-iff-subset-derivedset--083f4d76e24841f0cfbfb467.md) | 108 | `result-track:083f4d76e24841f0cfbfb467db7e4a459d9752378105b7db5e77c3ea92790f8e` |
| 17 | `lemma` | [preperfect_iff_eq_relDerivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/preperfect-iff-eq-relderivedset--7d38a0f79bc3d308c699875e.md) | 111 | `result-track:7d38a0f79bc3d308c699875e35c856609f82eb28555fd3c949a1c2e6eac2284a` |
| 18 | `lemma` | [perfect_iff_eq_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/perfect-iff-eq-derivedset--b7b49c86f190fdb7e21e8363.md) | 114 | `result-track:b7b49c86f190fdb7e21e836338a478abfdf9dd034aa11157dd80b2926d5e826e` |
| 19 | `lemma` | [IsPreconnected.inter_derivedSet_nonempty](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant8bfc142ca515829b84b7045dfc9c93cbe41ed1140b6fb7c7e5b0b2ec170311a6.lean/declarations/ispreconnected-inter-derivedset-nonempty--66aecda0cbff56bbca6ee55a.md) | 118 | `result-track:66aecda0cbff56bbca6ee55ab3fc75d3134393d70744a5215e4e8b71d26e5058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
