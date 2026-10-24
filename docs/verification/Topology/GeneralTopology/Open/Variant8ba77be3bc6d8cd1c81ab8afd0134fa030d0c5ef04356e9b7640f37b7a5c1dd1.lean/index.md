# Verification target: GRWTSK.Topology.GeneralTopology.Open.Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8871e64306f458787714ed0ddf851ab43e0e969d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8871e64306f458787714ed0ddf851ab43e0e969d`.

Source path: `GRWTSK/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean.json)

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
| 1 | `structure` | [ContinuousOpenMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/continuousopenmap--d3706ae39b6f44d6dfd97247.md) | 43 | `declaration-track:d3706ae39b6f44d6dfd9724712c908f3cfb0d1bb4d62166146a333dd09d1803b` |
| 2 | `class` | [ContinuousOpenMapClass](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/continuousopenmapclass--0e5571efaeb9bdb55871b065.md) | 54 | `declaration-track:0e5571efaeb9bdb55871b0654e583c46f034df7e2ab546fc9e16945d2655e330` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/instance--b305ec8a22a0195a24957587.md) | 62 | `declaration-track:b305ec8a22a0195a2495758736f42f2a9d570fd18e34bbd99d1729c607005cad` |
| 4 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/instfunlike--cba9e54d8df9328d44b723cb.md) | 75 | `declaration-track:cba9e54d8df9328d44b723cb009055ebb94ab33906429c43d8f0f96729c19036` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/instance--d960fba5ca2e13141466549f.md) | 82 | `declaration-track:d960fba5ca2e13141466549fe9a850da13a400bcb231320fa7938fc7e2d895e6` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/tofun-eq-coe--5793acaad2864883d69b2053.md) | 86 | `result-track:5793acaad2864883d69b20537fddd6bca61638651909d4ae6f586b8e34716307` |
| 7 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/coe-tocontinuousmap--7ea9be31dbcc9a7329cb2773.md) | 91 | `result-track:7ea9be31dbcc9a7329cb27739c5f853bfe438355a712d92b2a7cb0a9f71295c6` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/ext--6f838a977bb607443db3a0f9.md) | 94 | `result-track:6f838a977bb607443db3a0f984482d59c18b0b2a9d3c3a7e519880b37949cc7d` |
| 9 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/copy--f83bf1ff882914ab6ebf923b.md) | 99 | `declaration-track:f83bf1ff882914ab6ebf923b41431f399b8353fe702ff4097295c08db488e73e` |
| 10 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/coe-copy--0afc8c04a1826cf0963d04c7.md) | 103 | `result-track:0afc8c04a1826cf0963d04c7ec5cc5f9b3250daa9357a5050655fef7b8ca9224` |
| 11 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/copy-eq--d1357dfbf2f0adbeb24c8388.md) | 106 | `result-track:d1357dfbf2f0adbeb24c8388b244143ddf11f194fcad3928ee5a6275620ba38f` |
| 12 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/id--f000f246ce5818f5ac2d7b9b.md) | 112 | `declaration-track:f000f246ce5818f5ac2d7b9b0a5f0ac7cbd7425b2bf439e37ddaab24770c59e8` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/instance--f592ca78e4d7b2c9181e2dc0.md) | 115 | `declaration-track:f592ca78e4d7b2c9181e2dc0958a8431062858eac41bee2a3d3b39f304aeab5f` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/coe-id--d53d9da6087c0188c447f90c.md) | 119 | `result-track:d53d9da6087c0188c447f90cc905fe296d8f8bc4948848f27be8a34959aba267` |
| 15 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/id-apply--f050cf1bf609df4932b72957.md) | 125 | `result-track:f050cf1bf609df4932b729578279a8b77f8240dc40530633f77fd992d6b53831` |
| 16 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/comp--7d92a05a9527d6ff0fe3960a.md) | 129 | `declaration-track:7d92a05a9527d6ff0fe3960a05a6fbb20551096cc2d30bfd488670e8e750e6c2` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/coe-comp--ca5e50e52a3413cce4c0a106.md) | 133 | `result-track:ca5e50e52a3413cce4c0a1060cdf43777cef49c192789d64aaf482f2bbb10818` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/comp-apply--488b73823c5e15fce4674d83.md) | 137 | `result-track:488b73823c5e15fce4674d83afff0f89fda956235d8fb57c5c6661730df03688` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/comp-assoc--f8d74e4bf8fa7efcb5781ed8.md) | 141 | `result-track:f8d74e4bf8fa7efcb5781ed8bc2e6fd3e9f4120bdb9af5bb99a4fc5fbea971de` |
| 20 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/comp-id--d160961c14f42c9163bd39d3.md) | 146 | `result-track:d160961c14f42c9163bd39d398503443476ebb8fb1270b0b9b3646bdfaf693fe` |
| 21 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/id-comp--b852f2c18fcbdc0538f5d561.md) | 150 | `result-track:b852f2c18fcbdc0538f5d56164623f64757fb3eb0eab6805a4fc2dde4c29ba22` |
| 22 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/cancel-right--86634c096a2fc9d6c1294e18.md) | 154 | `result-track:86634c096a2fc9d6c1294e18ee50f391d1fd8824b9c5c0e977f874b7108c58f1` |
| 23 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Open/Variant8ba77be3bc6d8cd1c81ab8afd0134fa030d0c5ef04356e9b7640f37b7a5c1dd1.lean/declarations/cancel-left--4e1dd65107eed2173acbfe48.md) | 159 | `result-track:4e1dd65107eed2173acbfe48c2fe7c5f7e3f73269bedb705d8bc04f046c44fc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
