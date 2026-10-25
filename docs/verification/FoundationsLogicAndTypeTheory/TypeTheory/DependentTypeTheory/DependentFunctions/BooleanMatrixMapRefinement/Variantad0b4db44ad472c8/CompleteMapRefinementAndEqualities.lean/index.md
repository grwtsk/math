# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.BooleanMatrixMapRefinement.Variantad0b4db44ad472c8.CompleteMapRefinementAndEqualities

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "828d468d40ddb245879e9a6954229510f356b9b2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `828d468d40ddb245879e9a6954229510f356b9b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Refinement` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.BooleanMatrixMapRefinement.Variantad0b4db44ad472c8.DeclarativeAndArrayObservationSystems`](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/DeclarativeAndArrayObservationSystems.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapRefinement](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean/declarations/maprefinement--d1c9adc5f5c37338c817245c.md) | 41 | `declaration-track:d1c9adc5f5c37338c817245c068c7701ce3fe83e53100ff45977c1bd3c76cfd8` |
| 2 | `theorem` | [mapRefinement_abstract](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean/declarations/maprefinement-abstract--24a1f62ba27b65f8bb9a7788.md) | 56 | `result-track:24a1f62ba27b65f8bb9a7788d0e4562cfe25b3fce5cc832277d46719d2d75096` |
| 3 | `theorem` | [mapRefinement_step_sound](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean/declarations/maprefinement-step-sound--5982326fcd49727456fd0a84.md) | 63 | `result-track:5982326fcd49727456fd0a84973d893c8c48ef4aa4acfe125d5fffc5288ec761` |
| 4 | `theorem` | [refines_iff_abstract_eq](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean/declarations/refines-iff-abstract-eq--9feaef432ff2b36a3536337b.md) | 74 | `result-track:9feaef432ff2b36a3536337b769cc82b8a4adaf14a9d0397de34cfbfff94702e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
