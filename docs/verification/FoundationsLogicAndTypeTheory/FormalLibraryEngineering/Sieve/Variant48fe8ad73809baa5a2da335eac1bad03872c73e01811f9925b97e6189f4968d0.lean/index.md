# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sieve.Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "747203adad52fdda83b4246f3ee73b2bde9aab9e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `747203adad52fdda83b4246f3ee73b2bde9aab9e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Foundations` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FactoringSieve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/factoringsieve--579d02096373c1be4339fce6.md) | 19 | `declaration-track:579d02096373c1be4339fce69c406fc124132c3c7ef4d43995ddc9fdfe056b24` |
| 2 | `structure` | [TraversalOccurrence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/traversaloccurrence--79c2f8bd5476ac1e233b5d2b.md) | 31 | `declaration-track:79c2f8bd5476ac1e233b5d2bf5912df1efd0e8679abd1e36daa2fa6d21135ec1` |
| 3 | `structure` | [TraversalTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/traversaltransport--1c6c33a5f414db1bc6a74dea.md) | 37 | `declaration-track:1c6c33a5f414db1bc6a74dea4d29118ab7d3dad1dc5fe17fd33f0d45ae65a698` |
| 4 | `structure` | [SieveTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/sievetransport--3cf8f70966567e1e983cfe29.md) | 50 | `declaration-track:3cf8f70966567e1e983cfe29b7a8e73433b41cf9f03d69f41c2df1b973c22917` |
| 5 | `def` | [toTraversalTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/totraversaltransport--c6f1eb910acd5428779cb068.md) | 79 | `declaration-track:c6f1eb910acd5428779cb068d0982078c7d612643cd6198f3d8769c07a85e122` |
| 6 | `def` | [AdmissibleEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/admissibleedge--67491ce25abfe9a4736421e8.md) | 101 | `declaration-track:67491ce25abfe9a4736421e8f26e5da4f3c17f444e7b6bece60b0b8e1f89893d` |
| 7 | `theorem` | [admissibleEdge_preserved_of_sieveTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/admissibleedge-preserved-of-sievetransport--b850ad2238ab35e088db41c1.md) | 115 | `result-track:b850ad2238ab35e088db41c110841740db953f609a4d00449bffeea9d7ac3d59` |
| 8 | `structure` | [TraversalWeight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/traversalweight--97f69ca6506cb6456ce880a8.md) | 135 | `declaration-track:97f69ca6506cb6456ce880a849a3d4caba91c44c599eb824a8d32f6f55c966a5` |
| 9 | `def` | [AdmissibilityWeightSound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/admissibilityweightsound--97267de830acd4986f375195.md) | 139 | `declaration-track:97267de830acd4986f3751951a59fa2a855f48c486138d51a66ba7c57abbad3a` |
| 10 | `def` | [TraversalWeightCorrect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/traversalweightcorrect--b931915fda85d6d7e26d0698.md) | 151 | `declaration-track:b931915fda85d6d7e26d0698e72e585261e9479362fa66dd9a8514173fee4ddc` |
| 11 | `def` | [OccurrencePreserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/occurrencepreserved--9529ad62c4fd4157bff16d77.md) | 158 | `declaration-track:9529ad62c4fd4157bff16d770e1bb985580e87b2b3f3d73e30de5691caf3d272` |
| 12 | `theorem` | [occurrencePreserved_of_sieveTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/occurrencepreserved-of-sievetransport--f9f2609376074a8c197292c5.md) | 169 | `result-track:f9f2609376074a8c197292c5d8bd6c6c71f44568f9113e0c3c24f6081ff418fe` |
| 13 | `def` | [TraversalWeightPreserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/traversalweightpreserved--b88cefeb34430dae3810bd58.md) | 186 | `declaration-track:b88cefeb34430dae3810bd5809ceedc51b02644df23f91fc873ae415288f6f84` |
| 14 | `def` | [TraversalPreserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/traversalpreserved--4db5f1d73fdd37256a40d12a.md) | 201 | `declaration-track:4db5f1d73fdd37256a40d12a40b7a3c97eedce9bacab5d8fc0f81cbbd9fe037a` |
| 15 | `theorem` | [admissibleEdge_of_positiveWeight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/declarations/admissibleedge-of-positiveweight--f89891409b5884fd20891d3b.md) | 214 | `result-track:f89891409b5884fd20891d3ba38ca742af838cbc55f1ef9720c7473f1bdbdfe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
