# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Atlas.Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a41e6a839f21771719a8dfa2874427779d7b32cf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a41e6a839f21771719a8dfa2874427779d7b32cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Semantics.Atlas.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Semantics.Atlas.Bridge` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Semantics.Atlas.Closure` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/proofgrammar--c09b84daa1a7fd94146b7ab7.md) | 26 | `declaration-track:c09b84daa1a7fd94146b7ab73431d94aa93f1bfe8adbd0d3ae3327beb4aaf984` |
| 2 | `theorem` | [ProofGrammar.rule_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/proofgrammar-rule-sound--76b00ed2bf57533167fa15fa.md) | 35 | `result-track:76b00ed2bf57533167fa15fa458edf6c2742b8c675aab5747e7f7bfaa88de2a7` |
| 3 | `def` | [identityGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/identitygrammar--2ab383d0acdea0fbf40019a5.md) | 43 | `declaration-track:2ab383d0acdea0fbf40019a5a74281e2527d3af4ecc35201c93876b355f1a662` |
| 4 | `def` | [invertibleCompositionGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/invertiblecompositiongrammar--00704cbd82ae8d282e4cd345.md) | 49 | `declaration-track:00704cbd82ae8d282e4cd3456d608aba1f5d73d6795e6c04dbd6704f591f4cbf` |
| 5 | `def` | [implicationGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/implicationgrammar--d0f33e4359c12b0fa54b6a61.md) | 55 | `declaration-track:d0f33e4359c12b0fa54b6a616bccdf783c47837662dbc1ec1ba27c3b9b464efa` |
| 6 | `def` | [specializationGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/specializationgrammar--d3cc64fe564309e8ac957ba0.md) | 61 | `declaration-track:d3cc64fe564309e8ac957ba0a1aa5397a757de05813738d0f93e7dcac9f11b41` |
| 7 | `def` | [propertyTransportGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/propertytransportgrammar--c2fe75f3d211ca78162a71ac.md) | 70 | `declaration-track:c2fe75f3d211ca78162a71ac18b30992ae6365e4d826c52ad154c0b6bc522b15` |
| 8 | `def` | [quotientDescentGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/quotientdescentgrammar--c081e8d1fc4b611246544332.md) | 77 | `declaration-track:c081e8d1fc4b6112465443329eb9e41cde132333826301a7e65b6d88b21c122c` |
| 9 | `def` | [quotientDescentCompositionGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/declarations/quotientdescentcompositiongrammar--b0b0080e8250837e91424fe2.md) | 83 | `declaration-track:b0b0080e8250837e91424fe2b38988275efc1e6af451a0a5beda588c4ffedb42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
