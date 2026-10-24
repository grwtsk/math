# Verification target: GRWTSK.Topology.GeneralTopology.Barrelled.Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11f39fb0884cb246608a950d2960e942e1491c64",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11f39fb0884cb246608a950d2960e942e1491c64`.

Source path: `GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean.json)

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
| 1 | `class` | [BarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/declarations/barrelledspace--dc215cc488b5fd74c9a8c1b8.md) | 99 | `declaration-track:dc215cc488b5fd74c9a8c1b862e5d98b43b17acc083bf624cbb82dffddaad2d5` |
| 2 | `theorem` | [Seminorm.continuous_of_lowerSemicontinuous](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/declarations/seminorm-continuous-of-lowersemicontinuous--02e696d4fb02bdfc0c33c9ba.md) | 104 | `result-track:02e696d4fb02bdfc0c33c9bab21c5f1fd9c6a1f2e73bec6c2c57de93abcbe2a3` |
| 3 | `theorem` | [Seminorm.continuous_iSup](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/declarations/seminorm-continuous-isup--bd9424cdd6ca62c434b72948.md) | 109 | `result-track:bd9424cdd6ca62c434b729483c4644f9e6c1bcb2c2b2a551d54d072819ad906d` |
| 4 | `instance` | [BaireSpace.instBarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/declarations/bairespace-instbarrelledspace--f5aebf0e483f49628eaee024.md) | 131 | `declaration-track:f5aebf0e483f49628eaee024826a8a787c0543f72a018e0e12216b928ec1d06d` |
| 5 | `theorem` | [banach_steinhaus](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/declarations/banach-steinhaus--9f5fb04779d203cc22a2c3bf.md) | 173 | `result-track:9f5fb04779d203cc22a2c3bfe40d53425d3cdac2145a23d60261b8638b62d022` |
| 6 | `theorem` | [PolynormableSpace.banach_steinhaus](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/declarations/polynormablespace-banach-steinhaus--4280d23b66887d7517dce221.md) | 201 | `result-track:4280d23b66887d7517dce22182395895a20c9b91d5b2f7fa4a84daa54cdb119e` |
| 7 | `def` | [continuousLinearMapOfTendsto](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/declarations/continuouslinearmapoftendsto--da1ba7b5f40259cf887b7fab.md) | 217 | `declaration-track:da1ba7b5f40259cf887b7fab0fde0b5cc252f834022f6856d5fdb8bffeb612a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
