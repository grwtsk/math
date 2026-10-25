# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Atlas.Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cfaf763c1b23b126f4c80eeded2b99c6c82bb54",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cfaf763c1b23b126f4c80eeded2b99c6c82bb54`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Semantics.Atlas.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Semantics.Atlas.Bridge` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Semantics.Atlas.Closure` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/proofgrammar--b892a4b7104c74a7c33a2608.md) | 18 | `declaration-track:b892a4b7104c74a7c33a2608d2138d4a4fc9881cd3046331d71ebb64a3350f58` |
| 2 | `theorem` | [ProofGrammar.rule_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/proofgrammar-rule-sound--10e26c0c47628afdbc08b0dc.md) | 27 | `result-track:10e26c0c47628afdbc08b0dc455c203d1f0d23083fc59f39f1f96fd099fd6a01` |
| 3 | `def` | [identityGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/identitygrammar--5f2976678088be9c19a83319.md) | 35 | `declaration-track:5f2976678088be9c19a8331917de7a73527b40ffe38f4f9020f0a9acb493283b` |
| 4 | `def` | [invertibleCompositionGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/invertiblecompositiongrammar--66d20a79c3f125017369819a.md) | 41 | `declaration-track:66d20a79c3f125017369819a8a6c4bb2657de9d88d5e289698b4c60a49e68099` |
| 5 | `def` | [implicationGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/implicationgrammar--3bd8d86f20098e1db0caf9a2.md) | 47 | `declaration-track:3bd8d86f20098e1db0caf9a29e7720e03d2f5372d651676ad5c1a94ac29eaddb` |
| 6 | `def` | [specializationGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/specializationgrammar--e9c551a4ea49265b61d339d3.md) | 53 | `declaration-track:e9c551a4ea49265b61d339d35dfb5a0746d154ab98bc0ac981e92c8a707fee85` |
| 7 | `def` | [propertyTransportGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/propertytransportgrammar--8bfcbaeb9d0f2ee5d7d0c86e.md) | 62 | `declaration-track:8bfcbaeb9d0f2ee5d7d0c86ebaf8a949b189f141a838bbe78ee70a07b3a234a6` |
| 8 | `def` | [quotientDescentGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/quotientdescentgrammar--8298c3b60dc596f1674028fb.md) | 69 | `declaration-track:8298c3b60dc596f1674028fb190fa999ccdaa0170a697baf416343448bbf29b8` |
| 9 | `def` | [quotientDescentCompositionGrammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant68c9fe0b0ce5078aed18b5bc33e8a0fa33dfb759606e2259fc9df4e074ea64cf.lean/declarations/quotientdescentcompositiongrammar--170cbb4e4059f456c444fec6.md) | 75 | `declaration-track:170cbb4e4059f456c444fec6f5ac5c57d27d9676e8dc8b4af5b2b1973a36ff9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
