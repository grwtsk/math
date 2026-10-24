# tendsto_z_div_sinh_sq_atTop_horizontalStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0424959c-2318-5b07-c046-de01e87a184b",
  "kind": "lemma",
  "lexical_name": "tendsto_z_div_sinh_sq_atTop_horizontalStrip",
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
  "slug": "tendsto-z-div-sinh-sq-attop-horizontalstrip--802603d6b7341fd86b360c9e",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5722,
    "line": 5696,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:802603d6b7341fd86b360c9e6323abb0029b0ba5490032bf5aa05e4f885c0f83",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0424959c-2318-5b07-c046-de01e87a184b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5696–5722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_z_div_sinh_sq_atTop_horizontalStrip (c : ℝ) :
    Filter.Tendsto (fun z : ℂ ↦ z / (Complex.sinh z) ^ 2)
      (Filter.comap (abs ∘ Complex.re) Filter.atTop ⊓ Filter.principal (Complex.im ⁻¹' Set.Icc (-c) c)) (nhds 0) := by
  let F := Filter.comap (abs ∘ Complex.re) Filter.atTop ⊓ Filter.principal (Complex.im ⁻¹' Set.Icc (-c) c)
  have h_basis := HorizontalStrip.hasBasis_atTop c
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have h_le : ∀ᶠ (z : ℂ) in F, ‖z / Complex.sinh z ^ 2‖ ≤ (|z.re| + c) / Real.sinh z.re ^ 2 := by
    refine h_basis.eventually_iff.mpr ⟨1, True.intro, fun z hz ↦ ?_⟩
    simp only [Set.mem_setOf_eq] at hz
    rw [norm_div, norm_pow, normSq_sinh]
    have h_snz_re : Real.sinh z.re ≠ 0 := Real.sinh_ne_zero.mpr (abs_pos.mp (by linarith [hz.1]))
    have h_sinh_pos : 0 < Real.sinh z.re ^ 2 := sq_pos_of_ne_zero h_snz_re
    have h_denom : ‖z‖ / (Real.sinh z.re ^ 2 + Real.sin z.im ^ 2) ≤ ‖z‖ / Real.sinh z.re ^ 2 :=
      div_le_div_of_nonneg_left (norm_nonneg z) h_sinh_pos (le_add_of_nonneg_right (sq_nonneg _))
    have h_num : ‖z‖ / Real.sinh z.re ^ 2 ≤ (|z.re| + c) / Real.sinh z.re ^ 2 :=
      div_le_div_of_nonneg_right ((norm_le_abs_re_add_abs_im z).trans (add_le_add (le_refl |z.re|) hz.2)) h_sinh_pos.le
    exact h_denom.trans h_num
  have h_lim_upper : Filter.Tendsto (fun z : ℂ ↦ (|z.re| + c) / Real.sinh z.re ^ 2) F (nhds 0) := by
    have h_atTop := tendsto_linear_div_sinh_sq c
    refine Filter.Tendsto.congr' ?_ (Filter.Tendsto.comp h_atTop (Filter.tendsto_inf_left Filter.tendsto_comap))
    filter_upwards with z
    simp only [Function.comp_apply]
    rw [← sq_abs (Real.sinh z.re), Real.abs_sinh]
  refine Filter.Tendsto.squeeze' (h := fun z ↦ (|z.re| + c) / Real.sinh z.re ^ 2) tendsto_const_nhds h_lim_upper ?_ h_le
  · filter_upwards with z; apply norm_nonneg


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L5696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
