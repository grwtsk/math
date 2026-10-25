# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Incidence.Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b685be261b30e556a4ed45f35086afa64fd378ef",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b685be261b30e556a4ed45f35086afa64fd378ef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Primitive` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IncidenceSignature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean/declarations/incidencesignature--f972da7b584f21cadd52a6d8.md) | 16 | `declaration-track:f972da7b584f21cadd52a6d86a9dd12bc43d7ad1abf1ef140af2fabbb20348fa` |
| 2 | `def` | [Collinear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean/declarations/collinear--e61eb2c1b639e8622ac6e21c.md) | 20 | `declaration-track:e61eb2c1b639e8622ac6e21c1a088df81365a28aba201b5060a66459cb119ea9` |
| 3 | `def` | [TwoPointLineExistence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean/declarations/twopointlineexistence--e3d1a8ba8dc19b21ab230ffd.md) | 30 | `declaration-track:e3d1a8ba8dc19b21ab230ffdc912aa15876b6f0928f82f7049fca2f688047b80` |
| 4 | `def` | [TwoPointLineUniqueness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean/declarations/twopointlineuniqueness--e682bbec1f1d9fb894e3b971.md) | 40 | `declaration-track:e682bbec1f1d9fb894e3b971530cb80b8ec04a699d1dd798a205a086e541b98c` |
| 5 | `def` | [ThreeNoncollinearPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea.lean/declarations/threenoncollinearpoints--a83845f80c1799f704e026be.md) | 52 | `declaration-track:a83845f80c1799f704e026beb56344dab0852b4a58fc56320b2a85a9b6a29235` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
