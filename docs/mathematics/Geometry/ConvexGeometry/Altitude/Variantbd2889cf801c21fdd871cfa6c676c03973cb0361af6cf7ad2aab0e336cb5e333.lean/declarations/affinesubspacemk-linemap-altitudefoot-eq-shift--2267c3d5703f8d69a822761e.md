# affineSubspaceMk'_lineMap_altitudeFoot_eq_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ce539a2-231b-3b7f-71b6-3e30911dc485",
  "kind": "theorem",
  "lexical_name": "affineSubspaceMk'_lineMap_altitudeFoot_eq_shift",
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
  "slug": "affinesubspacemk-linemap-altitudefoot-eq-shift--2267c3d5703f8d69a822761e",
  "source": {
    "blob": "a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 245,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2267c3d5703f8d69a822761eec41943464f2bdfcc75acdcf8dfa9a2e345f82e4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ce539a2-231b-3b7f-71b6-3e30911dc485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSubspaceMk'_lineMap_altitudeFoot_eq_shift {n : ℕ} [NeZero n] (s : Simplex ℝ P n)
    (i : Fin (n + 1)) (x : ℝ) :
    AffineSubspace.mk' (lineMap (s.points i) (s.altitudeFoot i) x)
      (s.altitude i).directionᗮ ⊓ affineSpan ℝ (Set.range s.points) =
        (affineSpan ℝ (s.points '' {i}ᶜ)).shift (s.points i) x := by
  have h : lineMap (s.points i) (s.altitudeFoot i) x ∈ affineSpan ℝ (Set.range s.points) :=
    lineMap_mem _ (mem_affineSpan _ (by simp)) (altitudeFoot_mem_affineSpan _ _)
  apply ext_of_direction_eq
  · rw [direction_shift, direction_inf_of_mem (by simp) h, direction_mk',
      direction_altitude, direction_affineSpan, direction_affineSpan]
    exact Submodule.orthogonal_inf_orthogonal_inf_of_le <| vectorSpan_mono _ <| by simp
  · refine ⟨lineMap (s.points i) (s.altitudeFoot i) x, ?_, ?_⟩
    · simpa using h
    · exact lineMap_mem_shift (by simp) _ _

/-- Through a point on the altitude of a simplex, draw the perpendicular plane and find the cross
section with the closed interior. This is the same as the cross section between the shifted base
and the closed interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
