# requiredFormalObligationStatuses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:206d210333f421160e06057c5b2f815c4193c14bacc67f84ca212468a1c599fb",
  "kind": "def",
  "lexical_name": "requiredFormalObligationStatuses",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "requiredformalobligationstatuses--cebb5fc1a80e75391ec6a21c",
  "source": {
    "blob": "695f881953d5293a554493f4ec2a980eb782f930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cebb5fc1a80e75391ec6a21cd0bc66375f58b6e2df11a5d796c812c3bae80da4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:206d210333f421160e06057c5b2f815c4193c14bacc67f84ca212468a1c599fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def requiredFormalObligationStatuses :
    List FormalObligationStatus :=
  [ ⟨.scA01InvariantExistence, .open,
      "FiniteInvariantLawExistenceObligation"⟩
  , ⟨.scA02ContractionUniqueness, .proved,
      "invariantLaw_unique_under_strict_contraction"⟩
  , ⟨.scA03PseudometricQuotient, .proved,
      "zeroDistance_equivalence"⟩
  , ⟨.scA04EquivariantGroupInvariance, .proved,
      "unique_equivariant_invariant_law_is_group_invariant"⟩
  , ⟨.scA05InvariantLawPerturbation, .proved,
      "stableInvariantLawPerturbation"⟩
  , ⟨.scA06CrossScheduleConvergence, .open,
      "CrossScheduleConvergenceObligation"⟩
  , ⟨.scA07CrossedProductSelfAdjointness, .proved,
      "crossedProductOperator_selfAdjoint"⟩
  , ⟨.scA08FunctionalSpectralSymmetry, .proved,
      "functional_symmetry_reflects_eigenpair"⟩
  , ⟨.scA09ZeroJordanContribution, .open,
      "JordanSemisimplicityObligation"⟩
  , ⟨.scA10CanonicalTraceProperties, .proved,
      "canonicalTrace_add"⟩
  , ⟨.scA11LawTraceStability, .open,
      "LawTraceStabilityObligation"⟩
  , ⟨.scA12OperatorTraceStability, .proved,
      "law_and_operator_trace_defects_compose"⟩
  , ⟨.scA13ConcentrationSoundness, .open,
      "ConcentrationSoundnessObligation"⟩
  , ⟨.scA14SimultaneousTypicality, .open,
      "SimultaneousTypicalityObligation"⟩
  , ⟨.scA15ArithmeticTraceCorrespondence, .open,
      "ArithmeticTraceCorrespondenceCertificate"⟩
  , ⟨.scA16BoundaryLawSquareRoot, .proved,
      "boundaryLaw_squareRoot_assembly"⟩
  , ⟨.scA17CommittedRealizationSquareRoot, .proved,
      "committedRealization_squareRoot_assembly"⟩
  , ⟨.scA18AuthorityNoninterference, .proved,
      "spectral_artifacts_cannot_commit"⟩
  , ⟨.scA19RuntimeCannotManufactureTheorems, .proved,
      "runtime_observations_cannot_manufacture_theorem_certificates"⟩
  , ⟨.scA20OwnerAdmissionNecessary, .proved,
      "owner_admission_is_necessary_for_committed_realization"⟩
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695f881953d5293a554493f4ec2a980eb782f930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
