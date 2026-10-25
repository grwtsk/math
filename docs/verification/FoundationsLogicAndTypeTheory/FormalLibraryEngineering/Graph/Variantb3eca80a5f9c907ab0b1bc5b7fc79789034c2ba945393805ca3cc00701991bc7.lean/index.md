# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652380dbe0c46e91c27ba54249084c923ffbeb29",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652380dbe0c46e91c27ba54249084c923ffbeb29`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Sieve` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GraphVersionKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/graphversionkind--1982eec10f5e9c750928af02.md) | 16 | `declaration-track:1982eec10f5e9c750928af02505be5e54164192c0546bdb06b45849f1d1dd8e0` |
| 2 | `inductive` | [EdgeIdentityPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/edgeidentitypolicy--572b473f7f427a3caa9908e7.md) | 22 | `declaration-track:572b473f7f427a3caa9908e7798c6d083a242e14b6a7bfe17508b5211e1df272` |
| 3 | `structure` | [CoordinateGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/coordinategraph--6d6c71b1b64fdd3e8611c948.md) | 29 | `declaration-track:6d6c71b1b64fdd3e8611c948505a43710058a645f1ad4890839d9097b8bbbf87` |
| 4 | `structure` | [VertexOccurrence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/vertexoccurrence--76556fb7c58696035f5d3f6b.md) | 38 | `declaration-track:76556fb7c58696035f5d3f6b19a3e8bb2d30befb679246eb8204f61b5c58d323` |
| 5 | `structure` | [EdgeOccurrence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/edgeoccurrence--06332e9e4d236c4ea66a8ea6.md) | 46 | `declaration-track:06332e9e4d236c4ea66a8ea66fca72d092bf1e78e13d968e2634a8c3f11b9e86` |
| 6 | `structure` | [IntensionalGraphSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/intensionalgraphsemantics--6e3fcb29f2049cdc76553c5c.md) | 59 | `declaration-track:6e3fcb29f2049cdc76553c5c19667add44fd21cc1ae98ef07b3930d556723693` |
| 7 | `theorem` | [edgeIff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/edgeiff--a1a3cab703c841de040d644c.md) | 76 | `result-track:a1a3cab703c841de040d644c3165c00047e68f901f072c0624249167eeb8f49b` |
| 8 | `structure` | [RealizationContract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/realizationcontract--816878d2ec2b758bc629da64.md) | 93 | `declaration-track:816878d2ec2b758bc629da64a26cd8b05f7b0a34de75a78f95d3800708edadfb` |
| 9 | `structure` | [RealizationRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/realizationrecord--c6cb5ae41dc7603a2a343025.md) | 107 | `declaration-track:c6cb5ae41dc7603a2a343025f0af6fcfa02cf91d6269d89d182d76d6129f415c` |
| 10 | `def` | [MaterializedOutgoingEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/materializedoutgoingevidence--f049b1b20167f7fc41f44e20.md) | 126 | `declaration-track:f049b1b20167f7fc41f44e2093803f16e8b18b0bee87a1b1a40f16d0a4dd3685` |
| 11 | `structure` | [SourceTotalRealization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/sourcetotalrealization--979a838e53eb15709b608646.md) | 140 | `declaration-track:979a838e53eb15709b608646ab07f43ec147f012d3cca8942feec2eddee4cca3` |
| 12 | `structure` | [RealizationReflection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/realizationreflection--6cc8c73e6e92e9d25c363db9.md) | 153 | `declaration-track:6cc8c73e6e92e9d25c363db990072ce2758c0e4cca4573c80f0c437ccc196a85` |
| 13 | `structure` | [TheoremDerivedEdgeDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/theoremderivededgedeclaration--b30ca748a868df8f646b1a1a.md) | 164 | `declaration-track:b30ca748a868df8f646b1a1a61f5ee2dc236ad6d41b8b80e8c02cef809bacd37` |
| 14 | `inductive` | [GraphPropertySensitivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/graphpropertysensitivity--b72553dbc555d45b4ecb1751.md) | 172 | `declaration-track:b72553dbc555d45b4ecb175175f95f38d780aed160ab3b5d8bfa417d0f9f0646` |
| 15 | `structure` | [GraphConsequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/graphconsequence--74d399444fcf7ca0396388b3.md) | 181 | `declaration-track:74d399444fcf7ca0396388b34f916321ecfd295ffdf9effb00843ab0be7848ef` |
| 16 | `structure` | [GraphConsequenceProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/graphconsequenceproof--ed3424cb46456727d5d47dc9.md) | 191 | `declaration-track:ed3424cb46456727d5d47dc9ca39faee7753293c598cedd3bfa66d023fcbbdb3` |
| 17 | `inductive` | [IsomorphismRegime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/isomorphismregime--94c4e1b7f138fc858f75ebf1.md) | 201 | `declaration-track:94c4e1b7f138fc858f75ebf1f87c7187898a346bb7b6fe06635dd70021fc581d` |
| 18 | `def` | [supports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/supports--cbbbc5864984e7c3b069fa48.md) | 212 | `declaration-track:cbbbc5864984e7c3b069fa48f8aedf3b945cde5ffab0e7743573c1b4dc524099` |
| 19 | `def` | [condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/condition--8840f66ff5dcd48463a86c92.md) | 227 | `declaration-track:8840f66ff5dcd48463a86c92199011cbd13899ab7a9684fc1dfa9226afd98b34` |
| 20 | `structure` | [GraphIsomorphism](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/graphisomorphism--745c079af20778851f8863fa.md) | 241 | `declaration-track:745c079af20778851f8863fa5d3428877fd37fd37b1135527f4a07e96ecb38b8` |
| 21 | `structure` | [GraphInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/declarations/graphinvariant--b3493422f927f9e83f08424a.md) | 260 | `declaration-track:b3493422f927f9e83f08424ae6918f45774a8be61d7d0118d2d5f98c33348a96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
