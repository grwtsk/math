# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrdConnectedComponent.Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b93a8ac7224433d944465a567361979638f7fd84",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b93a8ac7224433d944465a567361979638f7fd84`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrdConnected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent--fcf8a3a0190c33c566c17a05.md) | 35 | `declaration-track:fcf8a3a0190c33c566c17a05a4fa340088c3d7a164f85c1a976aeab7326f6a5e` |
| 2 | `theorem` | [mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/mem-ordconnectedcomponent--61668b17390ec9ccf4207c49.md) | 38 | `result-track:61668b17390ec9ccf4207c49cff4b48ac49d3617ee4504452819f497bd255bf7` |
| 3 | `theorem` | [dual_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/dual-ordconnectedcomponent--77e1eaad011ecff79691d502.md) | 41 | `result-track:77e1eaad011ecff79691d502a292f966236537521db366bc34a4f77e25fbf5e3` |
| 4 | `theorem` | [ordConnectedComponent_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent-subset--30b9aaa8aa842d30c0a07e93.md) | 45 | `result-track:30b9aaa8aa842d30c0a07e93bd01e578c53b18fa80ec22d957a37b63536f7fd0` |
| 5 | `theorem` | [subset_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/subset-ordconnectedcomponent--e7ac00864b374387feec70c3.md) | 48 | `result-track:e7ac00864b374387feec70c3dd85cd5360dd39687f1ba8068b0f2ca1e89d1b83` |
| 6 | `theorem` | [self_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/self-mem-ordconnectedcomponent--3b0242322fd70cc978e569be.md) | 52 | `result-track:3b0242322fd70cc978e569bed3f9a147013c20445e31f0ec3402ac5888cd399e` |
| 7 | `theorem` | [nonempty_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/nonempty-ordconnectedcomponent--b88c8a15b2d14622261d611b.md) | 56 | `result-track:b88c8a15b2d14622261d611b6bd121a3dd392a064a1282fa16238fcbb9c577f5` |
| 8 | `theorem` | [ordConnectedComponent_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent-eq-empty--0f023505a9208205a887ed73.md) | 60 | `result-track:0f023505a9208205a887ed73ef434162020ba6e839f687dd9c25882cdcbec08f` |
| 9 | `theorem` | [ordConnectedComponent_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent-empty--4c1b9d6309eed1de3baee2e6.md) | 64 | `result-track:4c1b9d6309eed1de3baee2e682ffcf74f1420dc9d98219ffd0f38c704c69fc52` |
| 10 | `theorem` | [ordConnectedComponent_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent-univ--905dd031f2e38d29b0e10a93.md) | 68 | `result-track:905dd031f2e38d29b0e10a930f43301a56538ad6bd3ab3c6cf57aa5dec1ccda8` |
| 11 | `theorem` | [ordConnectedComponent_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent-inter--98a8540bc9621a1850f02bb7.md) | 71 | `result-track:98a8540bc9621a1850f02bb74d3edebe6679ec1d4eb03cd3b7b553d1323c6934` |
| 12 | `theorem` | [mem_ordConnectedComponent_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/mem-ordconnectedcomponent-comm--cdb2d0b7b426d546ba9e30c8.md) | 75 | `result-track:cdb2d0b7b426d546ba9e30c8e71b74d00ea1d714f3f1bc827b80d40207fa628b` |
| 13 | `theorem` | [mem_ordConnectedComponent_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/mem-ordconnectedcomponent-trans--57129d0179642be75c22ea23.md) | 79 | `result-track:57129d0179642be75c22ea236e92a6c12d81645f9c0d6a0ecf41c3a87e3e3c4a` |
| 14 | `theorem` | [ordConnectedComponent_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent-eq--a13560a97dc07d3e3b91db3a.md) | 85 | `result-track:a13560a97dc07d3e3b91db3ad3fe8f61a1be96a849bf45cf234c7b21f231f891` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/instance--fdb92b5f3278ff4ea50274af.md) | 91 | `declaration-track:fdb92b5f3278ff4ea50274afd4e212ae2e83fe69e89c0a14dc8dd21f34472711` |
| 16 | `def` | [ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedproj--a49ade6da8980e75407d2f6b.md) | 96 | `declaration-track:a49ade6da8980e75407d2f6bbfc4042d5264879032ecbd033256bf37a76f6057` |
| 17 | `theorem` | [ordConnectedProj_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedproj-mem-ordconnectedcomponent--1c9565248a0664f8b1b63e0d.md) | 99 | `result-track:1c9565248a0664f8b1b63e0d6f17a44ad93a0321ef0e15a8255fe2492bc890cf` |
| 18 | `theorem` | [mem_ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/mem-ordconnectedcomponent-ordconnectedproj--a8987a5ae06b03dfb927b4e9.md) | 103 | `result-track:a8987a5ae06b03dfb927b4e9bd65ff2852671730b62c2b870a09a903f77ce409` |
| 19 | `theorem` | [ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedcomponent-ordconnectedproj--5b15a025d42054dc52364e46.md) | 108 | `result-track:5b15a025d42054dc52364e4696ba2d74954a64fe825cda674897f728e17ab3e5` |
| 20 | `theorem` | [ordConnectedProj_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedproj-eq--c195c286d7f025dfe33b5202.md) | 113 | `result-track:c195c286d7f025dfe33b520286f1dcd4690cc689381ac724c5fdf22a5a24ae7a` |
| 21 | `def` | [ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedsection--8098a6a1ba696b2b16eb6efd.md) | 123 | `declaration-track:8098a6a1ba696b2b16eb6efd41846e30f83408b299090ec7b7f5f1ada3c40783` |
| 22 | `theorem` | [dual_ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/dual-ordconnectedsection--f4a8af2e1d1a6345e655f95d.md) | 126 | `result-track:f4a8af2e1d1a6345e655f95d2478c629c28f7cd4f1739193761a6b726e4b04c4` |
| 23 | `theorem` | [ordConnectedSection_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordconnectedsection-subset--0152071f1f377700bb642111.md) | 135 | `result-track:0152071f1f377700bb6421114858fd906b719d6476f40a4df5d250d0105ba001` |
| 24 | `theorem` | [eq_of_mem_ordConnectedSection_of_uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/eq-of-mem-ordconnectedsection-of-uicc-subset--959377dd3df858c251efff9c.md) | 138 | `result-track:959377dd3df858c251efff9cce05edd5e9a2558b7705e79d7659d22c3b38c73b` |
| 25 | `def` | [ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordseparatingset--92bc37bcffdc53b288899c60.md) | 151 | `declaration-track:92bc37bcffdc53b288899c605b5a21696961a58d09b5b0209188d40d7f9ce81a` |
| 26 | `theorem` | [ordSeparatingSet_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordseparatingset-comm--56278246db9e1ae3e286391e.md) | 154 | `result-track:56278246db9e1ae3e286391ebb49c508ab9ccedb8ffe855304afaf5e66e8719b` |
| 27 | `theorem` | [disjoint_left_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/disjoint-left-ordseparatingset--6ef0744a7882ff15976c694f.md) | 157 | `result-track:6ef0744a7882ff15976c694f9e9b617536623bef36fed629d2a0c8f49bee229f` |
| 28 | `theorem` | [disjoint_right_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/disjoint-right-ordseparatingset--37b8bfc86a62f9709bc266d7.md) | 162 | `result-track:37b8bfc86a62f9709bc266d7ca6e3634fb58469f54a24c321d3ea0e7fa8e1c80` |
| 29 | `theorem` | [dual_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/dual-ordseparatingset--d8d8a7da4d9f6f1594e5c173.md) | 165 | `result-track:d8d8a7da4d9f6f1594e5c1736eddf495d281bf7f4e9d1496cd7b36bac8cde08e` |
| 30 | `def` | [ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/ordt5nhd--3ae866e6ddf9f77b39f53b6b.md) | 172 | `declaration-track:3ae866e6ddf9f77b39f53b6b600c808bfdfe33fa8909b9d3c3770bdf83d3cfc7` |
| 31 | `theorem` | [disjoint_ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant882d9d7abe28a874e3994fded5d3a1def43891382c9ca52c84b2d5b351faf967.lean/declarations/disjoint-ordt5nhd--25c9e7d0235d36b746f03474.md) | 175 | `result-track:25c9e7d0235d36b746f034742509b2be01b5ff85696fe56f33c256e4d4d26f30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
