# Verification target: GRWTSK.Topology.GeneralTopology.BoundedOperation.Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db72c9f1de65f0511b9d94e2ca5d94873e5437c8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db72c9f1de65f0511b9d94e2ca5d94873e5437c8`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean.json)

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
| 1 | `class` | [BoundedSub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/boundedsub--554b689b40b1911a0a0ffa19.md) | 42 | `declaration-track:554b689b40b1911a0a0ffa1924928e6ae980a959e1f0d55a5b57238f7b098483` |
| 2 | `lemma` | [isBounded_sub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/isbounded-sub--750d432e4254ff65af8f9962.md) | 48 | `result-track:750d432e4254ff65af8f996271297979be819516957b6f4c9ce30f41bd040659` |
| 3 | `lemma` | [sub_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/sub-bounded-of-bounded-of-bounded--48d45038dee90f608085b14d.md) | 52 | `result-track:48d45038dee90f608085b14d71a62233d640ef43c7fdb8cc3e2ba0137388e51c` |
| 4 | `lemma` | [boundedSub_of_lipschitzWith_sub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/boundedsub-of-lipschitzwith-sub--a0cab1ec5570280bb922ccc7.md) | 63 | `result-track:a0cab1ec5570280bb922ccc74069967b4c9debf7b1d8a386441997b01140bfd3` |
| 5 | `class` | [BoundedAdd](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/boundedadd--5778ed338d46f2e93f3c826a.md) | 84 | `declaration-track:5778ed338d46f2e93f3c826a3e6933b8343885dd52f799dc7b8acfc929e1a5d7` |
| 6 | `class` | [BoundedMul](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/boundedmul--9429b4bba7a16990257c8f64.md) | 92 | `declaration-track:9429b4bba7a16990257c8f6458f293f2915044bee3254a793c89eb4c14ec3fa9` |
| 7 | `lemma` | [isBounded_mul](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/isbounded-mul--6570c6283103a5894844150d.md) | 99 | `result-track:6570c6283103a5894844150d7fcfafa7f6f36a3550156c9382458b0faee705a8` |
| 8 | `lemma` | [isBounded_pow](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/isbounded-pow--4b072d87598e5c7d81a5000d.md) | 104 | `result-track:4b072d87598e5c7d81a5000d24e4bf19f7a9cd597709404e4ef42efa33695574` |
| 9 | `lemma` | [mul_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/mul-bounded-of-bounded-of-bounded--a9a6b7a416d1fa01c51fbb13.md) | 124 | `result-track:a9a6b7a416d1fa01c51fbb13ab6845af64905e45febcb98bfe8fb23494b507d3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/instance--d89beff0c8ceed65ba6b2978.md) | 136 | `declaration-track:d89beff0c8ceed65ba6b29787acc03a807b03fd2b829cfba9ba83dee6b677bcf` |
| 11 | `lemma` | [SeminormedAddCommGroup.lipschitzWith_sub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/seminormedaddcommgroup-lipschitzwith-sub--1cbd2693b96a9e557049460f.md) | 158 | `result-track:1cbd2693b96a9e557049460fabe7ac66cc57b576a35f322624e7c01f106ae5d1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/instance--f0736e18627b05352d2f472c.md) | 163 | `declaration-track:f0736e18627b05352d2f472c570ee4dcd8177731e789bdc66951f3cb3c0a63af` |
| 13 | `lemma` | [tendsto_add_const_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/tendsto-add-const-cobounded--d121a291f12e5c573b53b000.md) | 174 | `result-track:d121a291f12e5c573b53b000cb9549e5ffa84052a71ba842fcbe6aa37ae4e282` |
| 14 | `lemma` | [tendsto_const_add_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/tendsto-const-add-cobounded--edf2b5ff3bc3940eabc1e045.md) | 185 | `result-track:edf2b5ff3bc3940eabc1e0453ec4557a296300ee34d0d6aa96fc63dfba397640` |
| 15 | `theorem` | [tendsto_sub_const_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/tendsto-sub-const-cobounded--51824e391b278006e8df8507.md) | 196 | `result-track:51824e391b278006e8df850760e2edd718a479ac69e15ca2c0ec85a928511c08` |
| 16 | `theorem` | [tendsto_const_sub_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/tendsto-const-sub-cobounded--bba66aa28db969c533a11ca1.md) | 201 | `result-track:bba66aa28db969c533a11ca1a9c335ec6a744258d7fff412e0d70d0bc5f8c270` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/instance--e87287f7209ce8b4aec66113.md) | 215 | `declaration-track:e87287f7209ce8b4aec6611342379ca4c9ccdb528e64a0e4831a916ffb1ce6ef` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/instance--5f23c4a972101becab292165.md) | 243 | `declaration-track:5f23c4a972101becab29216536f2f02c2eb90c879ddabce3f943c7e3da0a3ab1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/declarations/instance--5fabab575e7146ca84cb81d3.md) | 246 | `declaration-track:5fabab575e7146ca84cb81d34e817e7497bfb829fe2bb9dc0aa68354aea040d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
