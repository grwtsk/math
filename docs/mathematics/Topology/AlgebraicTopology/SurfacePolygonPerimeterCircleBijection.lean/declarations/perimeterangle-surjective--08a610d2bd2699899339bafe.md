# perimeterAngle_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a48d5d78-d072-7b17-4aaf-1aa398d5d913",
  "kind": "theorem",
  "lexical_name": "perimeterAngle_surjective",
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
  "slug": "perimeterangle-surjective--08a610d2bd2699899339bafe",
  "source": {
    "blob": "cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 368,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08a610d2bd2699899339bafe18f528357b9df28e02eefe4aa28ec9c5210a376e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a48d5d78-d072-7b17-4aaf-1aa398d5d913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perimeterAngle_surjective (k : ℕ) :
    Function.Surjective (perimeterAngle k) := by
  intro θ
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  let p := sourceOfCircleRepresentative k θ
  refine ⟨perimeterProjection k p, ?_⟩
  rw [perimeterAngle_projection]
  have hp :
      (directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ) =
        (circleFundamentalRepresentative k θ : ℝ) := by
    dsimp [p, sourceOfCircleRepresentative]
    rw [← directedSideOrdinalEquiv_val]
    simp
    ring
  calc
    sourceAngularAddress k p =
        (((directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ) : ℝ) :
          AddCircle (angularPeriod k)) := rfl
    _ = ((circleFundamentalRepresentative k θ : ℝ) :
          AddCircle (angularPeriod k)) :=
      congrArg (fun v : ℝ => (v : AddCircle (angularPeriod k))) hp
    _ = θ := by
      simpa [circleFundamentalRepresentative] using
        (AddCircle.equivIco (angularPeriod k) (0 : ℝ)).symm_apply_apply θ

/-- Genuine bijectivity of the previously constructed continuous
angular map, with BOTH logical directions sourced and named. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
