# coordinate_quadratic_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f6647b7-2eee-a769-5a0c-4caa5d3b0c55",
  "kind": "theorem",
  "lexical_name": "coordinate_quadratic_eq",
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
  "slug": "coordinate-quadratic-eq--163977c333f6dff4d90d395b",
  "source": {
    "blob": "b15f90ffa0f87f05d8c34fc037739611eac2bdc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:163977c333f6dff4d90d395b3a1d666541bd290e30f9bc891732de95ec863a9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f6647b7-2eee-a769-5a0c-4caa5d3b0c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinate_quadratic_eq {ι : Type*} [DecidableEq ι]
    (K : ι → ι → ℝ) {s : Finset ι} {n : ι} (hn : n ∈ s) :
    orderedQuadratic K s (coordinateWeight n) = K n n := by
  unfold orderedQuadratic
  rw [Finset.sum_eq_single n]
  · rw [Finset.sum_eq_single n]
    · simp [coordinateWeight]
    · intro k _ hkn
      simp [coordinateWeight, hkn]
    · exact fun hnot ↦ (hnot hn).elim
  · intro m _ hmn
    simp [coordinateWeight, hmn]
  · exact fun hnot ↦ (hnot hn).elim

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
/-- No finite real price can dominate a positive coordinate by a zero one.
The result does not require positivity of the price or semidefiniteness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b15f90ffa0f87f05d8c34fc037739611eac2bdc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
