# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a32d282f8922bac46561588b4d0a6b520287f730",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a32d282f8922bac46561588b4d0a6b520287f730`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.ElabTerm` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Rfl` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/test-sorry--9152b9c279af1e3e134ae0e9.md) | 13 | `declaration-track:9152b9c279af1e3e134ae0e9efcf40eb5071a6da344012cd7b6cf61eb862813e` |
| 2 | `def` | [eTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/etrue--6465c07c01802ee053189037.md) | 17 | `declaration-track:6465c07c01802ee053189037c813e10aa7b4798926a05b67f59baba9d75acb21` |
| 3 | `def` | [eFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/efalse--c2acb7aa2b2afa4d65e51ccc.md) | 18 | `declaration-track:c2acb7aa2b2afa4d65e51ccc25dcc7d382df3771ad0a247acfbd7f8674cbe920` |
| 4 | `def` | [eNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/enat--5f6980a533a99c54d2313fb1.md) | 19 | `declaration-track:5f6980a533a99c54d2313fb154977b93d7c4d5cebf7b0f4d63e30f3c1469c83a` |
| 5 | `def` | [eNatZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/enatzero--0ca7acf04cd8ed229854f13a.md) | 20 | `declaration-track:0ca7acf04cd8ed229854f13ab5a0b6cc2782f1b7ceddcf9355abc46acb34f2c9` |
| 6 | `def` | [eNatOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/enatone--a3cfaa0cd406ed97a2f301b4.md) | 21 | `declaration-track:a3cfaa0cd406ed97a2f301b46870fb73605d45e36af7c88193aac8b84c2cbb88` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/elab--3a55056cf12a9a215947f0fe.md) | 55 | `declaration-track:3a55056cf12a9a215947f0fec61fde405abde34232efb3cc6c8840f8b51c2ba1` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/example--6515ed7a89c3e3c0ea0012d7.md) | 68 | `declaration-track:6515ed7a89c3e3c0ea0012d7fb0a81b8787875fc956aad1fafaad4eee215af08` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/example--4e0a8ef75b947389ffc5dae8.md) | 74 | `declaration-track:4e0a8ef75b947389ffc5dae89fc58a6f1ee5c01d322e76a2f700dbeddafa83d3` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/declarations/example--3f9a63ffbbbfa309f093fa61.md) | 80 | `declaration-track:3f9a63ffbbbfa309f093fa61110c8d9bfd4c898b4dbb40333f887b3c16692d16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
