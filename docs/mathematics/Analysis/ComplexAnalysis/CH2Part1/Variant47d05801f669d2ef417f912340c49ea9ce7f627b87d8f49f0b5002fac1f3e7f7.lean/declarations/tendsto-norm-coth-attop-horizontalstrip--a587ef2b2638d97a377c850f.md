# tendsto_norm_coth_atTop_horizontalStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:366a42d6-0c96-431a-33b0-6e67816d8fec",
  "kind": "lemma",
  "lexical_name": "tendsto_norm_coth_atTop_horizontalStrip",
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
  "slug": "tendsto-norm-coth-attop-horizontalstrip--a587ef2b2638d97a377c850f",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5720,
    "line": 5685,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a587ef2b2638d97a377c850fe92a047be5e8ce73b24b05670c8906a7499e5a60",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:366a42d6-0c96-431a-33b0-6e67816d8fec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5685–5720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_norm_coth_atTop_horizontalStrip (c : ℝ) :
    Filter.Tendsto (fun z : ℂ ↦ ‖coth z‖)
      (Filter.comap (abs ∘ Complex.re) Filter.atTop ⊓ Filter.principal (Complex.im ⁻¹' Set.Icc (-c) c)) (nhds 1) := by
  let F := Filter.comap (abs ∘ Complex.re) Filter.atTop ⊓ Filter.principal (Complex.im ⁻¹' Set.Icc (-c) c)
  have h_basis := HorizontalStrip.hasBasis_atTop c
  have h_lim_coth_sq : Filter.Tendsto (fun z ↦ ‖coth z‖ ^ 2) F (nhds 1) := by
    have h_eq : (fun z ↦ ‖coth z‖ ^ 2) =ᶠ[F] (fun z ↦ 1 + (Real.cos (2 * z.im)) / (Real.sinh z.re ^ 2 + Real.sin z.im ^ 2)) := by
      refine h_basis.eventually_iff.mpr ⟨1, True.intro, fun z hz ↦ ?_⟩
      simp only [Set.mem_setOf_eq] at hz
      have h_snz : Complex.sinh z ≠ 0 := sinh_ne_zero_of_re_ne_zero (abs_pos.mp (by linarith [hz.1]))
      exact normSq_coth_eq z h_snz
    refine Filter.Tendsto.congr' h_eq.symm ?_
    have h_lim_frac : Filter.Tendsto (fun z ↦ (Real.cos (2 * z.im)) / (Real.sinh z.re ^ 2 + Real.sin z.im ^ 2)) F (nhds 0) := by
      rw [tendsto_zero_iff_norm_tendsto_zero]
      have h_lim_upper : Filter.Tendsto (fun z : ℂ ↦ 1 / Real.sinh z.re ^ 2) F (nhds 0) := by
        have h_re : Filter.Tendsto (fun z : ℂ ↦ |z.re|) F Filter.atTop :=
          Filter.tendsto_inf_left Filter.tendsto_comap
        have h_sinh := tendsto_one_div_sinh_sq_atTop
        refine Filter.Tendsto.congr' (Filter.Eventually.of_forall (fun z ↦ ?_)) (h_sinh.comp h_re)
        simp only [Function.comp_apply]
        rw [← sq_abs (Real.sinh z.re), Real.abs_sinh]
      refine Filter.Tendsto.squeeze' tendsto_const_nhds h_lim_upper ?_ ?_
      · filter_upwards with z; apply norm_nonneg
      · refine h_basis.eventually_iff.mpr ⟨1, True.intro, fun z hz ↦ ?_⟩
        simp only [Set.mem_setOf_eq] at hz
        simp only [norm_div, Real.norm_eq_abs]
        have h_sn_pos : 0 < Real.sinh z.re ^ 2 := sq_pos_of_ne_zero (Real.sinh_ne_zero.mpr (abs_pos.mp (by linarith [hz.1])))
        have h_pos : 0 < Real.sinh z.re ^ 2 + Real.sin z.im ^ 2 := by
          nlinarith [sq_nonneg (Real.sin z.im)]
        rw [abs_of_pos h_pos]
        apply div_le_div₀ (by norm_num) (Real.abs_cos_le_one (2 * z.im)) h_sn_pos (le_add_of_nonneg_right (sq_nonneg _))
    convert Filter.Tendsto.add (tendsto_const_nhds (x := 1)) h_lim_frac; simp
  convert (Filter.Tendsto.sqrt h_lim_coth_sq) using 1
  · ext z; exact (Real.sqrt_sq (norm_nonneg _)).symm
  · simp [Real.sqrt_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L5685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
