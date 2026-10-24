# oangle_eq_zero_or_eq_pi_iff_right_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff126ff59cf88bb8d18d57beb160f00eaba233bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd257bf1-8ef3-8f29-a3ff-a9122c1e2ff2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c67a87d-3e31-654f-cca7-4de1f03246ef",
  "kind": "theorem",
  "lexical_name": "oangle_eq_zero_or_eq_pi_iff_right_eq_smul",
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
  "slug": "oangle-eq-zero-or-eq-pi-iff-right-eq-smul--973e3e8e2d555b90fb296dd1",
  "source": {
    "blob": "ff126ff59cf88bb8d18d57beb160f00eaba233bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 389,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:973e3e8e2d555b90fb296dd1120050dc959f26f0416a0c792f43262e225602cf",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c67a87d-3e31-654f-cca7-4de1f03246ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_zero_or_eq_pi_iff_right_eq_smul {x y : V} :
    o.oangle x y = 0 ∨ o.oangle x y = π ↔ x = 0 ∨ ∃ r : ℝ, y = r • x := by
  rw [oangle_eq_zero_iff_sameRay, oangle_eq_pi_iff_sameRay_neg]
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rcases h with (h | ⟨-, -, h⟩)
    · by_cases hx : x = 0; · simp [hx]
      obtain ⟨r, -, rfl⟩ := h.exists_nonneg_left hx
      exact Or.inr ⟨r, rfl⟩
    · by_cases hx : x = 0; · simp [hx]
      obtain ⟨r, -, hy⟩ := h.exists_nonneg_left hx
      refine Or.inr ⟨-r, ?_⟩
      simp [hy]
  · rcases h with (rfl | ⟨r, rfl⟩); · simp
    by_cases hx : x = 0; · simp [hx]
    rcases lt_trichotomy r 0 with (hr | hr | hr)
    · rw [← neg_smul]
      exact Or.inr ⟨hx, smul_ne_zero hr.ne hx,
        SameRay.sameRay_pos_smul_right x (Left.neg_pos_iff.2 hr)⟩
    · simp [hr]
    · exact Or.inl (SameRay.sameRay_pos_smul_right x hr)

/-- The oriented angle between two vectors is not zero or `π` if and only if those two vectors
are linearly independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff126ff59cf88bb8d18d57beb160f00eaba233bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
