# roundingSet_transport_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:418cd90e-d530-c024-2c11-e3941731e3c1",
  "kind": "theorem",
  "lexical_name": "roundingSet_transport_iff",
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
  "slug": "roundingset-transport-iff--745625eac7e16095e43b39ff",
  "source": {
    "blob": "c5e933a61631c3a34fe36c54b132b8acb558d3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variant8526d002b67e56324c46188faf15e10e1d47ae8b4896f9004bdec4b4fc095d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:745625eac7e16095e43b39ffb5077360b98f804996ddc19407c3225b9927e21b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variant8526d002b67e56324c46188faf15e10e1d47ae8b4896f9004bdec4b4fc095d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:418cd90e-d530-c024-2c11-e3941731e3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roundingSet_transport_iff
    (sourceLattice :
      FreeCohomologyLattice SourceIntegral SourceReal)
    (targetLattice :
      FreeCohomologyLattice TargetIntegral TargetReal)
    (sourceGram : PositiveGram SourceReal)
    (targetGram : PositiveGram TargetReal)
    (pointTransport : SourceReal → TargetReal)
    (latticeTransport :
      sourceLattice.lattice ≃ targetLattice.lattice)
    (costPreserving :
      ∀ point integral,
      targetGram.squaredDistance
          (pointTransport point) (latticeTransport integral) =
        sourceGram.squaredDistance point integral)
    (point : SourceReal)
    (integral : sourceLattice.lattice) :
    latticeTransport integral ∈
        RoundingSet targetLattice targetGram (pointTransport point) ↔
      integral ∈ RoundingSet sourceLattice sourceGram point := by
  constructor
  · intro targetMinimal sourceCompetitor
    have compared :=
      targetMinimal (latticeTransport sourceCompetitor)
    simpa only [
      costPreserving point integral,
      costPreserving point sourceCompetitor,
    ] using compared
  · intro sourceMinimal targetCompetitor
    have compared :=
      sourceMinimal (latticeTransport.symm targetCompetitor)
    have competitorTransported :=
      costPreserving point (latticeTransport.symm targetCompetitor)
    calc
      targetGram.squaredDistance
          (pointTransport point) (latticeTransport integral) =
        sourceGram.squaredDistance point integral :=
          costPreserving point integral
      _ ≤ sourceGram.squaredDistance
          point (latticeTransport.symm targetCompetitor) :=
        compared
      _ = targetGram.squaredDistance
          (pointTransport point) targetCompetitor := by
        rw [← competitorTransported]
        simp

/-- Exact transport preserves the complete set of tied minimizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variant8526d002b67e56324c46188faf15e10e1d47ae8b4896f9004bdec4b4fc095d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variant8526d002b67e56324c46188faf15e10e1d47ae8b4896f9004bdec4b4fc095d59.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e933a61631c3a34fe36c54b132b8acb558d3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
