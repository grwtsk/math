# Verification target: GRWTSK.Topology.GeneralTopology.Bornology.Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0789f5caa20de55d3f19f778095d69631e4cd8d2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0789f5caa20de55d3f19f778095d69631e4cd8d2`.

Source path: `GRWTSK/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean.json)

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
| 1 | `def` | [orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/orderbornology--76f71cf99e6a032aa2eb72a1.md) | 35 | `declaration-track:76f71cf99e6a032aa2eb72a18545663b11d907773cb4960e36908791c4988f43` |
| 2 | `lemma` | [orderBornology_isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/orderbornology-isbounded--5e5f1892c6646c82e6b38a76.md) | 42 | `result-track:5e5f1892c6646c82e6b38a765e3e2d430f3def4cbe7031f49f016412b932b981` |
| 3 | `class` | [IsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology--8d623a7ca12e23f3f3acaad9.md) | 52 | `declaration-track:8d623a7ca12e23f3f3acaad9e57a31e105a0e3fa49f94e0d60d0b161d5746844` |
| 4 | `lemma` | [isOrderBornology_iff_eq_orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-iff-eq-orderbornology--05dc2ef3bf3381e8e66bd4b2.md) | 55 | `result-track:05dc2ef3bf3381e8e66bd4b2244d186236368b9380580977bf35cf4bd9bc7c38` |
| 5 | `lemma` | [isBounded_iff_bddBelow_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isbounded-iff-bddbelow-bddabove--c92c430e7f76e1bdde56a59a.md) | 64 | `result-track:c92c430e7f76e1bdde56a59aad31a3ae745dcefeaaba97a1fdba66a7599107cb` |
| 6 | `lemma` | [Bornology.IsBounded.bddBelow](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/bornology-isbounded-bddbelow--2143ac9a96212f565ac853aa.md) | 67 | `result-track:2143ac9a96212f565ac853aa77686aa65ad3f0286f44c3f8f894159f4d8ff109` |
| 7 | `lemma` | [Bornology.IsBounded.bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/bornology-isbounded-bddabove--c0f669daf0380693a543e9a8.md) | 70 | `result-track:c0f669daf0380693a543e9a82cbd58bd2581a91ce71c6d7fba8c3def6df00e3b` |
| 8 | `lemma` | [BddBelow.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/bddbelow-isbounded--89b3c8b049a9630ed5f6ee3e.md) | 73 | `result-track:89b3c8b049a9630ed5f6ee3ee9e2ddffff586f317fb7f8040a5a45db39f69aca` |
| 9 | `lemma` | [BddAbove.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/bddabove-isbounded--ce24ac1671dbad6b8344ce89.md) | 76 | `result-track:ce24ac1671dbad6b8344ce89dc3a327eb0c29992aa7f61fd78dbf99cbb3d7f7e` |
| 10 | `lemma` | [BddBelow.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/bddbelow-isbounded-inter--b21fec2df9f87524fcce24b8.md) | 79 | `result-track:b21fec2df9f87524fcce24b8e4e498b83d746fcb5e8eefb883f55a64e4a08890` |
| 11 | `lemma` | [BddAbove.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/bddabove-isbounded-inter--583b20a44f3421c8e71600d3.md) | 82 | `result-track:583b20a44f3421c8e71600d3504bde47288342706355ea4b21e5650e1215de2d` |
| 12 | `instance` | [OrderDual.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/orderdual-instisorderbornology--9db0689dc7f99b9a2d9a530c.md) | 85 | `declaration-track:9db0689dc7f99b9a2d9a530c09d871a26c5ae7ab569dcac4ed2e5bc2d5d4a255` |
| 13 | `instance` | [Prod.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/prod-instisorderbornology--21222474bc8ec8e74d13a1b9.md) | 90 | `declaration-track:21222474bc8ec8e74d13a1b920a987ab773061376e3633a395c8a9d728ca47ba` |
| 14 | `instance` | [Pi.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/pi-instisorderbornology--6facc9efbf9117f13346d4e4.md) | 96 | `declaration-track:6facc9efbf9117f13346d4e4a1fd13ad23304b95ce78b040eb9ebbfc910520a3` |
| 15 | `lemma` | [Nonempty.of_isOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/nonempty-of-isorderbornology--bf5a0af03baf5767dbe71133.md) | 103 | `result-track:bf5a0af03baf5767dbe71133ce05843fed4045e982a42be9585515aa0d57fcb0` |
| 16 | `instance` | [IsOrderBornology.neBot_cobounded_of_noBotOrder](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-nebot-cobounded-of-nobotorder--e4ce08f5e04324e3a5d0199b.md) | 105 | `declaration-track:e4ce08f5e04324e3a5d0199b751348fa3c79afbdcb6abd1f6f0fec98c6b36678` |
| 17 | `instance` | [IsOrderBornology.neBot_cobounded_of_noTopOrder](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-nebot-cobounded-of-notoporder--d6293e67ce92e8fe5fa83138.md) | 108 | `declaration-track:d6293e67ce92e8fe5fa83138e9bc1c93eb2731d7f25056697a03a20cc772caaa` |
| 18 | `lemma` | [IsOrderBornology.atTop_le_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-attop-le-cobounded--7504e4ee875d5746a40c6fb1.md) | 111 | `result-track:7504e4ee875d5746a40c6fb1ddf9bb70ad678a7c053fc76b9fd730381151fede` |
| 19 | `lemma` | [IsOrderBornology.atBot_le_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-atbot-le-cobounded--c94623e0eba4025d7f423918.md) | 122 | `result-track:c94623e0eba4025d7f42391866745bc4a5633c6428762090dccc8ad07f096f39` |
| 20 | `lemma` | [IsOrderBornology.cobounded_le_atBot_sup_atTop](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-cobounded-le-atbot-sup-attop--0e1a8770449a4c4e02c4d32c.md) | 131 | `result-track:0e1a8770449a4c4e02c4d32ccd24577ee937d40d861bdd013ece2ce6106518bb` |
| 21 | `lemma` | [IsOrderBornology.cobounded_eq](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-cobounded-eq--db2d5329a2b2f9b2539712b3.md) | 142 | `result-track:db2d5329a2b2f9b2539712b309f23564e58b3d16d20f3390940efbf811c65430` |
| 22 | `lemma` | [IsOrderBornology.cobounded_eq_atTop](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-cobounded-eq-attop--1fab4bc1cf3ff4c7c1c0e258.md) | 147 | `result-track:1fab4bc1cf3ff4c7c1c0e2586316fa35b2ee60ab6c19d39a9671b0f65797e14d` |
| 23 | `lemma` | [IsOrderBornology.cobounded_eq_atBot](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/isorderbornology-cobounded-eq-atbot--90ce88e8a3545091f34312b0.md) | 159 | `result-track:90ce88e8a3545091f34312b0e4a2dea4b58b6dd56b5c6564e8997e4680e4c578` |
| 24 | `lemma` | [Bornology.IsBounded.subset_Icc_sInf_sSup](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/declarations/bornology-isbounded-subset-icc-sinf-ssup--14bb40e81a49b3b22c9c8b43.md) | 167 | `result-track:14bb40e81a49b3b22c9c8b43beb93e1cc3b22df14fda745f61d0df2ab009a693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
