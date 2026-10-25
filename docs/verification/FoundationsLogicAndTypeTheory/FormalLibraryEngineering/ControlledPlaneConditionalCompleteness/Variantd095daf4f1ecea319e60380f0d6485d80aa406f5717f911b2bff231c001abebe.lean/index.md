# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneConditionalCompleteness.Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d478f635a4cca0f076ab9f5f38010ed622afe7a",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d478f635a4cca0f076ab9f5f38010ed622afe7a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Theorems.CF01_ClosedCoordinateFixation` — import line 1; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF02_DesignatedConeCompatibility` — import line 2; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF03_SieveAdmissibility` — import line 3; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF04_TraversalPreservation` — import line 4; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF05_ControlledSeparation` — import line 5; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF06_ControlNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF07_LosslessDecoder` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF08_OperationHomomorphism` — import line 8; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF09_ClosedCoordinateSeparation` — import line 9; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF10_CoordinateCompleteness` — import line 10; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF11_RefinementCoherence` — import line 11; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF12_ControlledPresentationExistence` — import line 12; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF13_CompactCarrier` — import line 13; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF14_NoEmbeddingObligation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [controlledPlane_scoped_conditional_completeness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe.lean/declarations/controlledplane-scoped-conditional-completeness--c7c7136718fd59646029a79e.md) | 33 | `result-track:c7c7136718fd59646029a79e51090ac44b2a454af3aa13a9322dc27ca6d5fedd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
