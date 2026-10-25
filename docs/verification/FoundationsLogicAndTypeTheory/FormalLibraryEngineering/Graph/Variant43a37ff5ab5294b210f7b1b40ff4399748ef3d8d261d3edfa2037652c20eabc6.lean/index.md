# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e94f8464599f2151bd56f3d70135c7465717dad",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e94f8464599f2151bd56f3d70135c7465717dad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Sieve` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GraphVersionKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/graphversionkind--fc5743a0410079fda6e0b242.md) | 8 | `declaration-track:fc5743a0410079fda6e0b242d4415365b758f67f44ab732317031d6eae791caf` |
| 2 | `inductive` | [EdgeIdentityPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/edgeidentitypolicy--a1b9cfa82a95a94b844a2ed6.md) | 14 | `declaration-track:a1b9cfa82a95a94b844a2ed690a3bc54ef04b4b8da71bb428ffc57b225f1f021` |
| 3 | `structure` | [CoordinateGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/coordinategraph--830fdad709fc82a267cde676.md) | 21 | `declaration-track:830fdad709fc82a267cde67684daa5381dd8e3926cef5d51ff20dc1354c4a5c2` |
| 4 | `structure` | [VertexOccurrence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/vertexoccurrence--5fa9458339ac46a5cfc647a0.md) | 30 | `declaration-track:5fa9458339ac46a5cfc647a01282631d5867afd879992d9c54beb2ef26178d97` |
| 5 | `structure` | [EdgeOccurrence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/edgeoccurrence--cd21ccdb2c4611215a3a17d2.md) | 38 | `declaration-track:cd21ccdb2c4611215a3a17d2fb78ad14debbfe7b1298f909779a527c54361f30` |
| 6 | `structure` | [IntensionalGraphSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/intensionalgraphsemantics--703ec222840d01060e26b79d.md) | 51 | `declaration-track:703ec222840d01060e26b79db9c6c2c13e220592ae8976ad239c2df12702066b` |
| 7 | `theorem` | [edgeIff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/edgeiff--081a32d8da8ad275312e9bb4.md) | 68 | `result-track:081a32d8da8ad275312e9bb48ef61528e7fb590e153e19012688053ee6305e67` |
| 8 | `structure` | [RealizationContract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/realizationcontract--4e4e7486248d999c1cb6cd24.md) | 85 | `declaration-track:4e4e7486248d999c1cb6cd24ce2d7b102e7c05a7254f611cdc8bd02c43e8f4ba` |
| 9 | `structure` | [RealizationRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/realizationrecord--a9742833ae0bb16ed363c929.md) | 99 | `declaration-track:a9742833ae0bb16ed363c92947659bcd43f915ae929c3d995f8b8df61d2a6879` |
| 10 | `def` | [MaterializedOutgoingEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/materializedoutgoingevidence--f5114a4b84980c259d787d07.md) | 118 | `declaration-track:f5114a4b84980c259d787d072995c12d259bcbfc6995e35b0c8b8d3b5c5f2e73` |
| 11 | `structure` | [SourceTotalRealization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/sourcetotalrealization--aaf56b83af0fec9b08db3352.md) | 132 | `declaration-track:aaf56b83af0fec9b08db3352dffe4fcc0d321651184887be72aa92e0e8e89305` |
| 12 | `structure` | [RealizationReflection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/realizationreflection--598efca9091b227fbfb684fd.md) | 145 | `declaration-track:598efca9091b227fbfb684fd6d12bac4b614c331001d92a2b052a6f538df4297` |
| 13 | `structure` | [TheoremDerivedEdgeDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/theoremderivededgedeclaration--455b134a739b0617f861d917.md) | 156 | `declaration-track:455b134a739b0617f861d9176db642c77e9cfb29c07a4fb40378c78d04b05282` |
| 14 | `inductive` | [GraphPropertySensitivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/graphpropertysensitivity--fe20106189930281f8b29180.md) | 164 | `declaration-track:fe20106189930281f8b291806ec5667993d956870528e8aae57b0e66ea9d1f6c` |
| 15 | `structure` | [GraphConsequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/graphconsequence--c747e5ee55822887d63ada02.md) | 173 | `declaration-track:c747e5ee55822887d63ada024a5a61a0b54ee769d8b0f1a29255152016a19d11` |
| 16 | `structure` | [GraphConsequenceProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/graphconsequenceproof--0c2d3050454630e7d7089345.md) | 183 | `declaration-track:0c2d3050454630e7d708934565cbc2622c7f280f0efd4ce5c3129ada5ee15b3a` |
| 17 | `inductive` | [IsomorphismRegime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/isomorphismregime--04b3050c57921f5d7ef94235.md) | 193 | `declaration-track:04b3050c57921f5d7ef94235115cb846010ed2ae980f76a1b35f3e7eba8e8505` |
| 18 | `def` | [supports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/supports--1eabfb18465ad4ed7c9c33c5.md) | 204 | `declaration-track:1eabfb18465ad4ed7c9c33c5157731b718cf4e4a95ad10422d0c1ae82d2717fe` |
| 19 | `def` | [condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/condition--ee6a16cfb370286397236672.md) | 219 | `declaration-track:ee6a16cfb3702863972366721fe3b8c6d44704a0bc23a0180b4ad055bb221139` |
| 20 | `structure` | [GraphIsomorphism](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/graphisomorphism--d1aaa7e13550e70cee7faa96.md) | 233 | `declaration-track:d1aaa7e13550e70cee7faa9665da2ce5c33b4379de4c50f8a52c393db5f8a81c` |
| 21 | `structure` | [GraphInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant43a37ff5ab5294b210f7b1b40ff4399748ef3d8d261d3edfa2037652c20eabc6.lean/declarations/graphinvariant--fa2e01a8a077bb7d72c7a6e0.md) | 252 | `declaration-track:fa2e01a8a077bb7d72c7a6e018c278f9097e2336e884e818165439f4d75b727c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
