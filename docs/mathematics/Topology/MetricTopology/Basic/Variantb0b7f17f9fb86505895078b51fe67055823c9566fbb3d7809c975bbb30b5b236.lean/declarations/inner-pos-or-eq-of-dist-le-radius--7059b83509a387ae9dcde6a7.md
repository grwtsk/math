# inner_pos_or_eq_of_dist_le_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "554f03b1db2739bec6345283c07b3c24759a12fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f99d6daf-4f65-0bc2-f822-ca6e6dfd7f19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fa0bdcb-7302-e837-4c35-4cb6abbcf0ea",
  "kind": "theorem",
  "lexical_name": "inner_pos_or_eq_of_dist_le_radius",
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
  "slug": "inner-pos-or-eq-of-dist-le-radius--7059b83509a387ae9dcde6a7",
  "source": {
    "blob": "554f03b1db2739bec6345283c07b3c24759a12fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 411,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7059b83509a387ae9dcde6a7f759f16ea3932b6c55a4cc4f74df9816258f6f69",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa0bdcb-7302-e837-4c35-4cb6abbcf0ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_pos_or_eq_of_dist_le_radius {s : Sphere P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s)
    (hp₂ : dist p₂ s.center ≤ s.radius) : 0 < ⟪p₁ -ᵥ p₂, p₁ -ᵥ s.center⟫ ∨ p₁ = p₂ := by
  by_cases h : p₁ = p₂; · exact Or.inr h
  refine Or.inl ?_
  rw [mem_sphere] at hp₁
  rw [← vsub_sub_vsub_cancel_right p₁ p₂ s.center, inner_sub_left,
    real_inner_self_eq_norm_mul_norm, sub_pos]
  refine lt_of_le_of_ne
    ((real_inner_le_norm _ _).trans (mul_le_mul_of_nonneg_right ?_ (norm_nonneg _))) ?_
  · rwa [← dist_eq_norm_vsub, ← dist_eq_norm_vsub, hp₁]
  · rcases hp₂.lt_or_eq with (hp₂' | hp₂')
    · refine ((real_inner_le_norm _ _).trans_lt (mul_lt_mul_of_pos_right ?_ ?_)).ne
      · rwa [← hp₁, @dist_eq_norm_vsub V, @dist_eq_norm_vsub V] at hp₂'
      · rw [norm_pos_iff, vsub_ne_zero]
        rintro rfl
        rw [← hp₁] at hp₂'
        refine (dist_nonneg.not_lt : ¬dist p₂ s.center < 0) ?_
        simpa using hp₂'
    · rw [← hp₁, @dist_eq_norm_vsub V, @dist_eq_norm_vsub V] at hp₂'
      nth_rw 1 [← hp₂']
      rw [Ne, inner_eq_norm_mul_iff_real, hp₂', ← sub_eq_zero, ← smul_sub,
        vsub_sub_vsub_cancel_right, ← Ne, smul_ne_zero_iff, vsub_ne_zero,
        and_iff_left (Ne.symm h), norm_ne_zero_iff, vsub_ne_zero]
      rintro rfl
      refine h (Eq.symm ?_)
      simpa using hp₂'

/-- Given a point on a sphere and a point not outside it, the inner product between the
difference of those points and the radius vector is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantb0b7f17f9fb86505895078b51fe67055823c9566fbb3d7809c975bbb30b5b236.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554f03b1db2739bec6345283c07b3c24759a12fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
