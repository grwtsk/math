# Verification target: GRWTSK.Topology.GeneralTopology.LinearPMap.Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5da29e849e9c1471705a0a9bbe52abde1610485",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5da29e849e9c1471705a0a9bbe52abde1610485`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean.json)

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
| 1 | `def` | [IsClosed](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosed--c284d3c453d64553cbe12c13.md) | 60 | `declaration-track:c284d3c453d64553cbe12c13e9728a182abdd93cc8ac0f428027fc2478c6850e` |
| 2 | `def` | [IsClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable--342a4932953cbec50ff4b504.md) | 67 | `declaration-track:342a4932953cbec50ff4b5047c7d78bf904f3f71a9e2f14ffba0f54a5da95ea9` |
| 3 | `theorem` | [IsClosed.isClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosed-isclosable--0351782c92662dc7e2bc178e.md) | 71 | `result-track:0351782c92662dc7e2bc178e8f87bc78c9f3ff51be8b3575bc14aa8761a1ba44` |
| 4 | `theorem` | [IsClosable.leIsClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable-leisclosable--69dca2bb8d6386a39c38ad79.md) | 75 | `result-track:69dca2bb8d6386a39c38ad79d3ff9721eebd6f10bdab0de5be71c29920ff79dd` |
| 5 | `theorem` | [IsClosable.existsUnique](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable-existsunique--762ab56282726233c5d29be7.md) | 86 | `result-track:762ab56282726233c5d29be728ae73597b2c7b5ff1c26abac21b2a937895b3e3` |
| 6 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/closure--d345be04ac602de5869f0b39.md) | 94 | `declaration-track:d345be04ac602de5869f0b39d9596d9f7f735dd2e4f7ceaef76ea7c6777b2f31` |
| 7 | `theorem` | [closure_def](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/closure-def--c3cc50b8a2eb92ae54fa24f2.md) | 97 | `result-track:c3cc50b8a2eb92ae54fa24f22b2b69fc29b111372eba47c4fa8ee2d54c6bae2f` |
| 8 | `theorem` | [closure_def'](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/closure-def--73f1811d25d3b05b570e52c9.md) | 100 | `result-track:73f1811d25d3b05b570e52c9f931a4b69f87f5fb97bfe986c250a18fabb67fa1` |
| 9 | `theorem` | [IsClosable.graph_closure_eq_closure_graph](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable-graph-closure-eq-closure-graph--d7ca86a9c19d172a01e8bc1b.md) | 104 | `result-track:d7ca86a9c19d172a01e8bc1b2bd9a39e68429c38445c43cf3dad975bae98e2c1` |
| 10 | `theorem` | [le_closure](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/le-closure--e17d13dc3068b45b6c949f23.md) | 110 | `result-track:e17d13dc3068b45b6c949f23c091a7fed1da0a0ca00dd71d30659d62050d1389` |
| 11 | `theorem` | [IsClosable.closure_mono](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable-closure-mono--b644c3b87d298707cce48c5d.md) | 117 | `result-track:b644c3b87d298707cce48c5d6eaf6a32a0e9414706319d6a5b65e570b0a578e7` |
| 12 | `theorem` | [IsClosable.closure_isClosed](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable-closure-isclosed--a1b8bc27dfb45ea581eceeb5.md) | 125 | `result-track:a1b8bc27dfb45ea581eceeb53588af07c1619efe12ff1e35fb16725b054ec83d` |
| 13 | `theorem` | [IsClosable.closureIsClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable-closureisclosable--bc9c57f35f457e14ec9c75d3.md) | 130 | `result-track:bc9c57f35f457e14ec9c75d35fe743bc0698071fb45c796ca35e5f0d6da5bca9` |
| 14 | `theorem` | [isClosable_iff_exists_closed_extension](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/isclosable-iff-exists-closed-extension--eec961b4f369b9361e4530e9.md) | 133 | `result-track:eec961b4f369b9361e4530e9f504e203480915132fef4cae9c54537c8da6dfc3` |
| 15 | `structure` | [HasCore](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/hascore--bccff9f5d635b022bbbbcbd0.md) | 142 | `declaration-track:bccff9f5d635b022bbbbcbd0222d813b37573a68493375203218b9fbfe1a27a8` |
| 16 | `theorem` | [hasCore_def](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/hascore-def--6178a7fa483ffb75240efb5d.md) | 146 | `result-track:6178a7fa483ffb75240efb5d470eb4b45fb9ca45d1774ebcd9154c6267fbe093` |
| 17 | `theorem` | [closureHasCore](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/closurehascore--ad18b96de883cd0948e83c32.md) | 153 | `result-track:ad18b96de883cd0948e83c32cada919ed63e89c60a286cfbee87f1b8fcefec85` |
| 18 | `theorem` | [inverse_closed_iff](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/inverse-closed-iff--889c62d36c35df8195a32a25.md) | 174 | `result-track:889c62d36c35df8195a32a253e0a4c8410ab73d80594000e9ddffe8e6e967037` |
| 19 | `theorem` | [closure_inverse_graph](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/closure-inverse-graph--40af96ea639ff02379e3ea33.md) | 183 | `result-track:40af96ea639ff02379e3ea3336767e26ba6ea43c01534f20aacf0b96e8cc87c2` |
| 20 | `theorem` | [inverse_isClosable_iff](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/inverse-isclosable-iff--61e436a6c4fba5eb8680757e.md) | 198 | `result-track:61e436a6c4fba5eb8680757e12bc010dacc12f9eb2191dd22c883f8fa993c18c` |
| 21 | `theorem` | [inverse_closure](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/declarations/inverse-closure--947cb190f3a848b560aaabfd.md) | 219 | `result-track:947cb190f3a848b560aaabfd20571bff7f915d2889f0e54373296601d67a783e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
