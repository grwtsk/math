# stereo_left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c1795f2ad1cb83329a5c33c5a4315871798ca1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bf729ad-5ba1-bb80-ae9c-eec9fd77ea56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0af2dda-8518-e52f-6c98-b16b71b86ffa",
  "kind": "theorem",
  "lexical_name": "stereo_left_inv",
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
  "slug": "stereo-left-inv--cc1244f0297331754d3ef73d",
  "source": {
    "blob": "4c1795f2ad1cb83329a5c33c5a4315871798ca1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 205,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc1244f0297331754d3ef73daa7ad96905eea5235d1da988fc22f14511f21a95",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0af2dda-8518-e52f-6c98-b16b71b86ffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stereo_left_inv (hv : ‖v‖ = 1) {x : sphere (0 : E) 1} (hx : (x : E) ≠ v) :
    stereoInvFun hv (stereoToFun v x) = x := by
  ext
  simp only [stereoToFun_apply, stereoInvFun_apply, smul_add]
  -- name two frequently-occurring quantities and write down their basic properties
  set a : ℝ := innerSL _ v x
  set y := (ℝ ∙ v)ᗮ.orthogonalProjectionOnto x
  have split : ↑x = a • v + ↑y := by
    rw [← ((ℝ ∙ v).starProjection_add_starProjection_orthogonal x),
      Submodule.starProjection_unit_singleton ℝ hv x]
    rfl
  have hvy : ⟪v, y⟫_ℝ = 0 := Submodule.mem_orthogonal_singleton_iff_inner_right.mp y.2
  have pythag : 1 = a ^ 2 + ‖y‖ ^ 2 := by
    have hvy' : ⟪a • v, y⟫_ℝ = 0 := by simp only [inner_smul_left, hvy, mul_zero]
    convert! norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero _ _ hvy' using 2
    · simp [← split]
    · simp [norm_smul, hv, ← sq, sq_abs]
    · exact sq _
  -- a fact which will be helpful for clearing denominators in the main calculation
  have ha : 0 < 1 - a := by
    have : a < 1 := (inner_lt_one_iff_real_of_norm_eq_one hv (by simp)).mpr hx.symm
    linarith
  rw [split, Submodule.coe_smul_of_tower]
  simp only [norm_smul, norm_div, Real.norm_eq_abs, abs_of_nonneg ha.le]
  match_scalars
  · field_simp
    linear_combination 4 * pythag
  · field_simp
    linear_combination 4 * (a - 1) * pythag

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c1795f2ad1cb83329a5c33c5a4315871798ca1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
