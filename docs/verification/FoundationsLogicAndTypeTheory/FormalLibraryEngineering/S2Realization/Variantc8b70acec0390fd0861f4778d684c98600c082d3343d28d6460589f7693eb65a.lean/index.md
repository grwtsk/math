# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S2Realization.Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "868b9a424244137f6daabd4d03a1ed829273f2f6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `868b9a424244137f6daabd4d03a1ed829273f2f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.VertexPlacement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InjectiveS2Realization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean/declarations/injectives2realization--f16db6ac8e74c577b2219960.md) | 21 | `declaration-track:f16db6ac8e74c577b2219960b39c8d56f8dcea0c01212a54bb68936f436a3c2b` |
| 2 | `def` | [HasInjectiveS2RealizationWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean/declarations/hasinjectives2realizationwitness--ede3511dc3e18304f3c9ecff.md) | 28 | `declaration-track:ede3511dc3e18304f3c9ecff5a0ed5b1edf8af0308a846093346b5729a48dec3` |
| 3 | `structure` | [VertexCompatibleS2Realization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean/declarations/vertexcompatibles2realization--02f4c93a53ad29caa47a745f.md) | 40 | `declaration-track:02f4c93a53ad29caa47a745fae841ad979ff95da2576476074b81b0c174010dc` |
| 4 | `def` | [HasVertexCompatibleS2RealizationWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean/declarations/hasvertexcompatibles2realizationwitness--addcf7e9730ef1474e396e34.md) | 54 | `declaration-track:addcf7e9730ef1474e396e346d4aae0ac632763c17fe1ae41482b2ecbe598cf3` |
| 5 | `theorem` | [hasInjectiveS2RealizationWitness_of_vertexCompatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantc8b70acec0390fd0861f4778d684c98600c082d3343d28d6460589f7693eb65a.lean/declarations/hasinjectives2realizationwitness-of-vertexcompatible--f33b210c8e40a86807654214.md) | 66 | `result-track:f33b210c8e40a8680765421446b009f69c89a36e4d3ef5ca2df977c0a7a716d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
