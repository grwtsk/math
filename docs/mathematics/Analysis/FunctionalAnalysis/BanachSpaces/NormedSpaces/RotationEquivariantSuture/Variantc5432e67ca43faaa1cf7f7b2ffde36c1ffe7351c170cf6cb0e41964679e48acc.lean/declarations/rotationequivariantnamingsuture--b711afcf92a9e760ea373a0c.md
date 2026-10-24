# RotationEquivariantNamingSuture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cad9def3757b9e7adba6389c3c71401579e4b93737d34558bd211eed5a95ec0",
  "kind": "structure",
  "lexical_name": "RotationEquivariantNamingSuture",
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
  "slug": "rotationequivariantnamingsuture--b711afcf92a9e760ea373a0c",
  "source": {
    "blob": "03b5c296b9f63ce7c0b8b6a081eef4654e4ea6ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 24,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationEquivariantSuture/Variantc5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b711afcf92a9e760ea373a0c240a485ca906899a6863259ce5dbe267b4f30eea",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationEquivariantSuture/Variantc5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cad9def3757b9e7adba6389c3c71401579e4b93737d34558bd211eed5a95ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RotationEquivariantNamingSuture (n : Nat) (B : Type*)
    [NeZero n] [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B] where
  base : NamingSuture
  rotation : AdmissibleBanachRotation n B
  oracleSignal : CubicalFaceSignal n B
  modelSignal : CubicalFaceSignal n B
  allFacesAgree :
    allDegreeSutured rotation oracleSignal modelSignal
  degreeWeight : Nat → ℝ
  degreeWeightPositive : ∀ k, 0 < degreeWeight k
  eventChange : TwistedOneCochain n B
  eventClosed : TwistedOneCocycle eventChange
  eventExact : TwistedOneCoboundary eventChange
  cycleHolonomy : ZMod n
  cycleHolonomyInStabilizer :
    FaceSignalTurnStabilizes cycleHolonomy modelSignal

/--
The complete naming-suture theorem: one admissible global turn gives exact
all-face equality and zero quantitative residual; the event change is both
closed and exact in the twisted complex; cycle holonomy stabilizes the
accepted signal; and canonical `ElementNameIR` equality is inherited from the
closed-candidate proposal agreement.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationEquivariantSuture/Variantc5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationEquivariantSuture/Variantc5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b5c296b9f63ce7c0b8b6a081eef4654e4ea6ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
