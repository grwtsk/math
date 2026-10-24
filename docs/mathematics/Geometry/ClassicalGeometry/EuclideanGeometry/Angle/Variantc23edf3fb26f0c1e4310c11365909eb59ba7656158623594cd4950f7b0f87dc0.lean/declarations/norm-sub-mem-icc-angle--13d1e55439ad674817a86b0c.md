# norm_sub_mem_Icc_angle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d99f67b6802728c501ac722eba20084d485f9ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf6ec18b-bb64-809d-fa0e-151cc825e620",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e282c5a3-a35a-9872-8a21-21d7e8693ec4",
  "kind": "lemma",
  "lexical_name": "norm_sub_mem_Icc_angle",
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
  "slug": "norm-sub-mem-icc-angle--13d1e55439ad674817a86b0c",
  "source": {
    "blob": "9d99f67b6802728c501ac722eba20084d485f9ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 79,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d1e55439ad674817a86b0c8e19c602909293819bd5b7d39e1c557e0a50a971",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e282c5a3-a35a-9872-8a21-21d7e8693ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sub_mem_Icc_angle (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    ‖x - y‖ ∈ Icc (2 / π * angle x y) (angle x y) := by
  wlog h : y = 1
  · have := @this (x / y) 1 (by simp only [norm_div, hx, hy, div_one]) norm_one rfl
    rwa [angle_div_left_eq_angle_mul_right, div_sub_one, norm_div, hy, div_one, one_mul]
      at this
    rintro rfl
    simp at hy
  subst y
  rw [norm_eq_one_iff'] at hx
  obtain ⟨θ, hθ, rfl⟩ := hx
  rw [angle_exp_one, exp_mul_I, add_sub_right_comm, (toIocMod_eq_self _).2]
  · norm_cast
    rw [norm_add_mul_I]
    refine ⟨Real.le_sqrt_of_sq_le ?_, ?_⟩
    · rw [mul_pow, ← abs_pow, abs_sq]
      calc
        _ = 2 * (1 - (1 - 2 / π ^ 2 * θ ^ 2)) := by ring
        _ ≤ 2 * (1 - θ.cos) := by
            gcongr; exact Real.cos_le_one_sub_mul_cos_sq <| abs_le.2 <| Ioc_subset_Icc_self hθ
        _  = _ := by linear_combination -θ.cos_sq_add_sin_sq
    · rw [Real.sqrt_le_left (by positivity), ← abs_pow, abs_sq]
      calc
        _ = 2 * (1 - θ.cos) := by linear_combination θ.cos_sq_add_sin_sq
        _ ≤ 2 * (1 - (1 - θ ^ 2 / 2)) := by gcongr; exact Real.one_sub_sq_div_two_le_cos
        _ = _ := by ring
  · convert hθ
    ring

/-- Chord-length is always less than arc-length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d99f67b6802728c501ac722eba20084d485f9ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
