# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SingularReconstruction.Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33fafbe5626c17c25f287b40e29bffabb285463d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33fafbe5626c17c25f287b40e29bffabb285463d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Cardinal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Choose` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [singular_small_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean/declarations/singular-small-decomposition--d55af832d5c9c2f3c10e6bd8.md) | 32 | `result-track:d55af832d5c9c2f3c10e6bd827c279345f96a4e78f24f83f3bca7ee23ccf343e` |
| 2 | `def` | [singularCoverThreshold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean/declarations/singularcoverthreshold--2968913b80ecf47154b1c844.md) | 75 | `declaration-track:2968913b80ecf47154b1c844509abffe9852ed5a37fa48863f5b7de4eadf7523` |
| 3 | `theorem` | [le_singularCoverThreshold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean/declarations/le-singularcoverthreshold--24b0925bfba85ae24c554c91.md) | 78 | `result-track:24b0925bfba85ae24c554c91ee233f84496a14fd65ad95707fbc995334e38ac8` |
| 4 | `theorem` | [singularCoverThreshold_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean/declarations/singularcoverthreshold-lt--344c72e4c60236f337914aba.md) | 81 | `result-track:344c72e4c60236f337914abafdda7019c9f5da6b070320ac5661e15a80721e57` |
| 5 | `theorem` | [singular_exact_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458.lean/declarations/singular-exact-reconstruction--c0d103d48e1fa7fbd9918d6f.md) | 89 | `result-track:c0d103d48e1fa7fbd9918d6f00a081cb0a13fb7f60fd6f6d1f55112d70c54153` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
