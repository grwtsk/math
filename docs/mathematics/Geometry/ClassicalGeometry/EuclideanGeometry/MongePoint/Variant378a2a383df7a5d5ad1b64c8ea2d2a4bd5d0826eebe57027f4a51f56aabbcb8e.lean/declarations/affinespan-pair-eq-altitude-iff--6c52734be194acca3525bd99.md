# affineSpan_pair_eq_altitude_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44185b66-baee-48ef-977e-28b3d204f390",
  "kind": "theorem",
  "lexical_name": "affineSpan_pair_eq_altitude_iff",
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
  "slug": "affinespan-pair-eq-altitude-iff--6c52734be194acca3525bd99",
  "source": {
    "blob": "1279a2e7b96731c6a97969d3d022508edc7025df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 402,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c52734be194acca3525bd998b0d8096a585a9f46234faad9b56625acd958280",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44185b66-baee-48ef-977e-28b3d204f390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_pair_eq_altitude_iff {n : ℕ} (s : Simplex ℝ P (n + 1)) (i : Fin (n + 2))
    (p : P) :
    line[ℝ, p, s.points i] = s.altitude i ↔
      p ≠ s.points i ∧
        p ∈ affineSpan ℝ (Set.range s.points) ∧
          p -ᵥ s.points i ∈ (affineSpan ℝ (s.points '' ↑(Finset.univ.erase i))).directionᗮ := by
  rw [eq_iff_direction_eq_of_mem (mem_affineSpan ℝ (Set.mem_insert_of_mem _ (Set.mem_singleton _)))
      (s.mem_altitude _),
    ← vsub_right_mem_direction_iff_mem (mem_affineSpan ℝ (Set.mem_range_self i)) p,
    direction_affineSpan, direction_affineSpan, direction_affineSpan]
  constructor
  · intro h
    constructor
    · intro heq
      rw [heq, Set.pair_eq_singleton, vectorSpan_singleton] at h
      have hd : finrank ℝ (s.altitude i).direction = 0 := by rw [← h, finrank_bot]
      simp at hd
    · rw [← Submodule.mem_inf, _root_.inf_comm, ← direction_altitude, ← h]
      exact
        vsub_mem_vectorSpan ℝ (Set.mem_insert _ _) (Set.mem_insert_of_mem _ (Set.mem_singleton _))
  · rintro ⟨hne, h⟩
    rw [← Submodule.mem_inf, _root_.inf_comm, ← direction_altitude] at h
    rw [vectorSpan_eq_span_vsub_set_left_ne ℝ (Set.mem_insert _ _),
      Set.insert_diff_of_mem _ (Set.mem_singleton _),
      Set.diff_singleton_eq_self fun h => hne (Set.mem_singleton_iff.1 h), Set.image_singleton]
    refine' eq_of_le_of_finrank_eq _ _
    · rw [Submodule.span_le]
      simpa using h
    · rw [finrank_direction_altitude, finrank_span_set_eq_card]
      · simp
      · refine' linearIndependent_singleton _
        simpa using hne
#align affine.simplex.affine_span_pair_eq_altitude_iff Affine.Simplex.affineSpan_pair_eq_altitude_iff

end Simplex

namespace Triangle

open EuclideanGeometry Finset Simplex AffineSubspace FiniteDimensional

variable {V : Type*} {P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

/-- The orthocenter of a triangle is the intersection of its
altitudes.  It is defined here as the 2-dimensional case of the
Monge point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1279a2e7b96731c6a97969d3d022508edc7025df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
