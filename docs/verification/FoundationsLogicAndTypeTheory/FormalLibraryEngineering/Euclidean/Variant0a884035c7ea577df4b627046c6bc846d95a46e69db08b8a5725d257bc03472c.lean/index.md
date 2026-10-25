# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Euclidean.Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8c267032b181477a3374e8ab3667fbc11d1770",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8c267032b181477a3374e8ab3667fbc11d1770`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Point](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/point--d5236d1a97e6f459d45d4b72.md) | 23 | `declaration-track:d5236d1a97e6f459d45d4b72d131471a564e597a34091c2c6b5e312c82bfd06c` |
| 2 | `def` | [squaredDistance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/squareddistance--e5454034237420015f5b9d9a.md) | 28 | `declaration-track:e5454034237420015f5b9d9abd5d70035aa6d98cc61e6fc9b7697707dee9f729` |
| 3 | `structure` | [Circle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/circle--0310125d8f69d91244427a42.md) | 32 | `declaration-track:0310125d8f69d91244427a42ec3fc4f8acd76062c01986434b5d184a6a6085e9` |
| 4 | `def` | [Circle.Contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/circle-contains--2c7725e01a0fbd94f1ab06e5.md) | 38 | `declaration-track:2c7725e01a0fbd94f1ab06e574c2a5661fae2a2e379ce551e00e2dfa754b6304` |
| 5 | `structure` | [CircumcircleDatum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/circumcircledatum--b6240fa178dbf881cf7ced4e.md) | 42 | `declaration-track:b6240fa178dbf881cf7ced4ed684eac3b2891fe4b20f8009c0547cc2dfd127b9` |
| 6 | `inductive` | [YAxisDirection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/yaxisdirection--f99f00f3cc00fd19ec26013e.md) | 52 | `declaration-track:f99f00f3cc00fd19ec26013e24478b95e5397d89a57b9a569445551041faf29f` |
| 7 | `inductive` | [ArcOrientation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/arcorientation--3897b3dd332d6823b2582416.md) | 58 | `declaration-track:3897b3dd332d6823b25824169a7841138c1802f2e29e976fcc660e19490e4258` |
| 8 | `structure` | [DirectedArc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/directedarc--1c3b6cc85aa6023484548055.md) | 64 | `declaration-track:1c3b6cc85aa6023484548055746c8287aa36fb10f3fe4c445fc117b6dc60254f` |
| 9 | `abbrev` | [WindingNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/windingnumber--1b320c87e57f465dd62e1223.md) | 73 | `declaration-track:1b320c87e57f465dd62e12231394eb6d4720ebd7dd2091ad5dc8ee95bd4ca1ce` |
| 10 | `def` | [halfTurn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/halfturn--09e1c90e1c8507e27cbf160d.md) | 76 | `declaration-track:09e1c90e1c8507e27cbf160d343d2088d08d1e4e60c61f460c30140c8f70f824` |
| 11 | `theorem` | [halfTurn_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c.lean/declarations/halfturn-involutive--7dfc899c146a7d12ca2024fa.md) | 81 | `result-track:7dfc899c146a7d12ca2024fa27373edee8f23e6b30a5c93929d20cea93154c5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
