# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Forward.Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cd46daa1295aaeb2786c763dba00c8144d4124c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cd46daa1295aaeb2786c763dba00c8144d4124c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.UnusedNames` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.CollectFVars` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ForwardM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardm-context--e3ba7d06981c550ee8b81d72.md) | 22 | `declaration-track:e3ba7d06981c550ee8b81d724dd335917cc6d5f86d87f400fa6108a41ebaa98f` |
| 2 | `structure` | [ForwardM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardm-state--c7cd47915f0468e8e6d4e122.md) | 27 | `declaration-track:c7cd47915f0468e8e6d4e122a7fc6cf23df30022955e65d3450c076b18d6b2e9` |
| 3 | `abbrev` | [ForwardM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardm--e465c335c925938e8bbaf663.md) | 32 | `declaration-track:e465c335c925938e8bbaf663bdf4a57385fa97744428df47cd1c63c0cbdc778a` |
| 4 | `def` | [makeForwardHypProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/makeforwardhypproofs--1c8615ec348bdeeae20ad335.md) | 34 | `declaration-track:1c8615ec348bdeeae20ad33599e63a7c3da60e3321e1db98ff42f7fd2287b0fe` |
| 5 | `def` | [makeForwardHypProofs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/makeforwardhypproofs--5089c3ffba07c08f0d2e19de.md) | 116 | `declaration-track:5089c3ffba07c08f0d2e19de43a84d03a119c476b96b3611774fb468667607ce` |
| 6 | `def` | [assertForwardHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/assertforwardhyp--6a5d1c74e57a5f14991ae17d.md) | 125 | `declaration-track:6a5d1c74e57a5f14991ae17d5e96596e499d7c2c82f7653965abb9d7a4fd929d` |
| 7 | `def` | [applyForwardRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/applyforwardrule--7a19e4aa11bc75875d4affcc.md) | 146 | `declaration-track:7a19e4aa11bc75875d4affcc7e453471dddd031c9beabfa22f5026a9346cc26c` |
| 8 | `def` | [forwardExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardexpr--b957ffc69690a986dd425376.md) | 183 | `declaration-track:b957ffc69690a986dd42537608b2e25f01ba64f1fb2dd0b85835166a678e3590` |
| 9 | `def` | [forwardConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardconst--2fb9d3d169a465859a627b0c.md) | 192 | `declaration-track:2fb9d3d169a465859a627b0c5be624963831dbcf071df296126adc273c77793b` |
| 10 | `def` | [forwardTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardterm--45cd4f986ca8233c24a5ac64.md) | 197 | `declaration-track:45cd4f986ca8233c24a5ac648326c476756b8f74886509d105a56f49a2da062f` |
| 11 | `def` | [forward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forward--344e71c702dbcf346b44c748.md) | 203 | `declaration-track:344e71c702dbcf346b44c748b61450f0893d4979e453f1708d89d6ece6f69e75` |
| 12 | `def` | [forwardMatches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardmatches--923fe5e37a0d1787e9de3402.md) | 209 | `declaration-track:923fe5e37a0d1787e9de340262865cf152852530e2635ee4125ac302c4030e47` |
| 13 | `def` | [forwardMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/declarations/forwardmatch--fcfc1e851065dc97317bfbd5.md) | 235 | `declaration-track:fcfc1e851065dc97317bfbd5333306b6f694640e0c8de0d2d579c8295d88c8f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
