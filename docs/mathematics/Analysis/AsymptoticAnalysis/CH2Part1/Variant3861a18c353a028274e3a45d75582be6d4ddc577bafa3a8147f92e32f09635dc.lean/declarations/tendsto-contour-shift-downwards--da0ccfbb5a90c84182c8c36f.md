# tendsto_contour_shift_downwards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3523,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40f9d76a-1caf-3b76-1eec-df9e89725c7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57d6575f-4a2b-0889-df29-b73b48495346",
  "kind": "lemma",
  "lexical_name": "tendsto_contour_shift_downwards",
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
  "slug": "tendsto-contour-shift-downwards--da0ccfbb5a90c84182c8c36f",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3562,
    "line": 3523,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da0ccfbb5a90c84182c8c36fb3d9efa81b0bcb3e3f468ced351fe36790c46216",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d6575f-4a2b-0889-df29-b73b48495346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3523–3562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_contour_shift_downwards {σ σ' : ℝ} {f : ℂ → ℂ}
    (hf_anal : ∀ (U : ℝ), U ≥ 0 → HolomorphicOn f (Rectangle (σ : ℂ) (σ' - I * U)))
    (h_bottom : Filter.Tendsto (fun (T : ℝ) ↦ ∫ t in σ..σ', f (t - I * T)) Filter.atTop (nhds 0)) :
    Filter.Tendsto (fun (T : ℝ) ↦ (I * ∫ t in Set.Icc 0 T, f (σ' - I * t)) - (I * ∫ t in Set.Icc 0 T, f (σ - I * t))) Filter.atTop (nhds (∫ t in σ..σ', f t)) := by
  have h_rect (T : ℝ) (hT : 0 ≤ T) :
      RectangleIntegral f σ (σ' - I * T) =
      (∫ t in σ..σ', f t) - (∫ t in σ..σ', f (t - I * T)) - (I * ∫ t in Set.Icc 0 T, f (σ' - I * t)) + (I * ∫ t in Set.Icc 0 T, f (σ - I * t)) := by
    dsimp [RectangleIntegral, HIntegral, VIntegral]
    have h1 : ∫ (x : ℝ) in σ..σ' - (0 * T - 1 * 0), f (↑x + 0 * I) = ∫ x in σ..σ', f ↑x := by
      simp only [show σ' - (0 * T - 1 * 0) = σ' from by ring]
      exact intervalIntegral.integral_congr fun x _ ↦ by ring_nf
    have h2 : ∫ (x : ℝ) in σ..σ' - (0 * T - 1 * 0), f (↑x + ↑(0 - (0 * 0 + 1 * T)) * I) = ∫ x in σ..σ', f (↑x - I * ↑T) := by
      simp only [show σ' - (0 * T - 1 * 0) = σ' from by ring]
      exact intervalIntegral.integral_congr fun x _ ↦ by norm_cast; simp; ring_nf
    have h3 : ∫ (y : ℝ) in 0..0 - (0 * 0 + 1 * T), f (↑(σ' - (0 * T - 1 * 0)) + ↑y * I) = - ∫ t in Set.Icc 0 T, f (↑σ' - I * ↑t) := by
      rw [show (0 : ℝ) - (0 * 0 + 1 * T) = -T from by ring,
          show σ' - (0 * T - 1 * 0) = σ' from by ring, neg_zero.symm]
      rw [← intervalIntegral.integral_comp_neg (f := fun y ↦ f (↑σ' + ↑y * I)) (a := T) (b := 0)]
      rw [intervalIntegral.integral_symm, intervalIntegral.integral_of_le hT, MeasureTheory.integral_Icc_eq_integral_Ioc]
      simp only [neg_zero]
      exact congr_arg Neg.neg (integral_congr_ae (Filter.Eventually.of_forall fun y ↦ by push_cast; ring_nf))
    have h4 : ∫ (y : ℝ) in 0..0 - (0 * 0 + 1 * T), f (↑σ + ↑y * I) = - ∫ t in Set.Icc 0 T, f (↑σ - I * ↑t) := by
      rw [show (0 : ℝ) - (0 * 0 + 1 * T) = -T from by ring, neg_zero.symm]
      rw [← intervalIntegral.integral_comp_neg (f := fun y ↦ f (↑σ + ↑y * I)) (a := T) (b := 0)]
      rw [intervalIntegral.integral_symm, intervalIntegral.integral_of_le hT, MeasureTheory.integral_Icc_eq_integral_Ioc]
      simp only [neg_zero]
      exact congr_arg Neg.neg (integral_congr_ae (Filter.Eventually.of_forall fun y ↦ by push_cast; ring_nf))
    rw [h1, h2, h3, h4]
    ring

  have h_zero : Filter.Tendsto (fun (T : ℝ) ↦ RectangleIntegral f σ (σ' - I * T)) Filter.atTop (nhds 0) :=
    tendsto_const_nhds.congr' (by
      filter_upwards [Filter.eventually_ge_atTop 0] with T hT
      exact (HolomorphicOn.vanishesOnRectangle (hf_anal T hT) subset_rfl).symm)
  have h_total_lim : Filter.Tendsto (fun (T : ℝ) ↦ (∫ t in σ..σ', f t) - (∫ t in σ..σ', f (t - I * T)) - RectangleIntegral f σ (σ' - I * T)) Filter.atTop (nhds (∫ t in σ..σ', f t)) := by
    simpa only [sub_zero] using ((tendsto_const_nhds (x := ∫ t in σ..σ', f t)).sub h_bottom).sub h_zero
  exact h_total_lim.congr' (by
    filter_upwards [Filter.eventually_ge_atTop 0] with T hT
    rw [h_rect T hT]; ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L3523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
