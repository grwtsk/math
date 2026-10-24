# Verification target: GRWTSK.Topology.GeneralTopology.Flow.Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41864fa5f9d6cfe2816b26b38efdfeac18a0afd3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41864fa5f9d6cfe2816b26b38efdfeac18a0afd3`.

Source path: `GRWTSK/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/isinvariant--bf7aecc16afa0665093081dc.md) | 53 | `declaration-track:bf7aecc16afa0665093081dcb138d0898aeae114bba4d1c1f04f884fb37a6d58` |
| 2 | `theorem` | [isInvariant_iff_image](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/isinvariant-iff-image--6ab6243d998370cae505be71.md) | 59 | `result-track:6ab6243d998370cae505be71a8ee073f03f14abc094680e3d99e77ce1a30ca46` |
| 3 | `def` | [IsFwInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/isfwinvariant--307031ba97838d7ca1c6e3bb.md) | 65 | `declaration-track:307031ba97838d7ca1c6e3bba50f7c832e613133aacfd400d4a487f28c6b1e42` |
| 4 | `theorem` | [IsInvariant.isFwInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/isinvariant-isfwinvariant--09015376f89cad92fd02818c.md) | 69 | `result-track:09015376f89cad92fd02818c4c3caa179cc26be1a9b68703eef342442d933a65` |
| 5 | `theorem` | [IsFwInvariant.isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/isfwinvariant-isinvariant--2adfca7f72439e755888e886.md) | 75 | `result-track:2adfca7f72439e755888e886298b59b8c50f97eeebf6d6a54d27f8ff50900240` |
| 6 | `theorem` | [isFwInvariant_iff_isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/isfwinvariant-iff-isinvariant--325aac396130c18e1625362e.md) | 81 | `result-track:325aac396130c18e1625362ef4d4102f351b13a90e641b91b4800029489bf096` |
| 7 | `structure` | [Flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/flow--c5b631df7390170ebc4932be.md) | 95 | `declaration-track:c5b631df7390170ebc4932be5b58cf65ad4741bad10108861b1c1d1c29927c81` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/instance--106e7cd5c47560288ec79568.md) | 108 | `declaration-track:106e7cd5c47560288ec795683c5a1fcc7e256b2ee941ea95bdb23c1bef2b342d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/instance--a0044b85410fae652655c911.md) | 114 | `declaration-track:a0044b85410fae652655c9116b59bebb089d1efca9dfcb0eda6e42b06de2b1d9` |
| 10 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/ext--c7142a25db02df671053a78d.md) | 117 | `result-track:c7142a25db02df671053a78d8b32e9363758067253a29312544a96d7c5eab55f` |
| 11 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/continuous--2261c613b894992fe7e68f87.md) | 125 | `result-track:2261c613b894992fe7e68f87fad4cc79093721945ebabbc7aeeb3daffca9c83d` |
| 12 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/map-add--44d93f202e76bffb66f35951.md) | 133 | `result-track:44d93f202e76bffb66f3595116c333d2e4e89450a37e15d5b224c4a946fd17ff` |
| 13 | `theorem` | [map_zero](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/map-zero--88c8b8134893275a83e599bf.md) | 137 | `result-track:88c8b8134893275a83e599bfa8cdd71c48c27ebde54764880876caedb1f0c0f4` |
| 14 | `theorem` | [map_zero_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/map-zero-apply--aed9969abafc01ed2b3b80c4.md) | 140 | `result-track:aed9969abafc01ed2b3b80c45965709bf16553742f5c3d0b3baaaea7ebe66a9d` |
| 15 | `def` | [fromIter](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/fromiter--80b101a1c8ae018e0a4eb993.md) | 145 | `declaration-track:80b101a1c8ae018e0a4eb993a3f7ed1f6a65ba0d4615a652105d0e5852c47148` |
| 16 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/restrict--62b07b8f8e53370e58efd207.md) | 153 | `declaration-track:62b07b8f8e53370e58efd20769d3480bbee3354e62b633bb56c98252d7374a34` |
| 17 | `theorem` | [isInvariant_iff_image_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/isinvariant-iff-image-eq--b37db8a803ab0aa87965a2fa.md) | 167 | `result-track:b37db8a803ab0aa87965a2fa4e0ae0955f93afaa23fc42e74ef8ee86c7a08d1d` |
| 18 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/reverse--adc53a85397c9a013dac6351.md) | 176 | `declaration-track:adc53a85397c9a013dac6351cbcea3529140856615ab9a10d30e626c82222790` |
| 19 | `theorem` | [continuous_toFun](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/continuous-tofun--f9bc68cc8e7b84246de6282d.md) | 187 | `result-track:f9bc68cc8e7b84246de6282df6f844725a3e992c4c9276c9f441c67805f5eea9` |
| 20 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/tohomeomorph--01a2d22acdfa45e377651b5b.md) | 193 | `declaration-track:01a2d22acdfa45e377651b5b9032f2e2c3e7384ff0a1a10337dd827ae09b7c47` |
| 21 | `theorem` | [image_eq_preimage](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/declarations/image-eq-preimage--c9fffffaa5a994eeacfda653.md) | 200 | `result-track:c9fffffaa5a994eeacfda653ffee128879bad35f469e90d782b59f70fe72a484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
