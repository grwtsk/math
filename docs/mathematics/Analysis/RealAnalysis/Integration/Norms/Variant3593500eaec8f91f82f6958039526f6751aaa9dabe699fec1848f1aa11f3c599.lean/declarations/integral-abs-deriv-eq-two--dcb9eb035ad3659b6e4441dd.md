# integral_abs_deriv_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bacc3dc794637292679c0c4fe4e9f2ed74c05b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca662547-48e6-5415-2567-ae0d24c995ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ca3a004-c44f-0774-5012-a0d634a6c4dc",
  "kind": "lemma",
  "lexical_name": "integral_abs_deriv_eq_two",
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
  "slug": "integral-abs-deriv-eq-two--dcb9eb035ad3659b6e4441dd",
  "source": {
    "blob": "bacc3dc794637292679c0c4fe4e9f2ed74c05b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb9eb035ad3659b6e4441dde8704fdf88aab0c53d523e5667fb4460f619424b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ca3a004-c44f-0774-5012-a0d634a6c4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_abs_deriv_eq_two {F : ℝ → ℝ} {L : ℝ} (hL : 0 < L)
    (hF : ContDiff ℝ 1 F) (heven : ∀ u, F (-u) = F u)
    (hnonpos : ∀ u : ℝ, 0 < u → deriv F u ≤ 0)
    (hsupp : ∀ u : ℝ, L / 2 ≤ |u| → F u = 0) (hF0 : F 0 = 1) :
    ∫ u, |deriv F u| = 2 := by
  have hdcont : Continuous (deriv F) := hF.continuous_deriv le_rfl
  have hodd : ∀ u : ℝ, deriv F (-u) = -(deriv F u) := by
    intro u
    have h1 : deriv (fun x : ℝ => F (-x)) u = -deriv F (-u) := deriv_comp_neg F u
    have h2 : (fun x : ℝ => F (-x)) = F := funext heven
    rw [h2] at h1
    linarith
  have hzero_out : ∀ u : ℝ, L / 2 < |u| → deriv F u = 0 := by
    intro u hu
    have hopen : IsOpen {v : ℝ | L / 2 < |v|} := isOpen_lt continuous_const continuous_abs
    have hev : F =ᶠ[nhds u] (fun _ => (0 : ℝ)) := by
      filter_upwards [hopen.mem_nhds hu] with v hv
      exact hsupp v (le_of_lt hv)
    rw [hev.deriv_eq]
    simp
  have heqIcc : ∫ u, |deriv F u| = ∫ u in Icc (-(L / 2)) (L / 2), |deriv F u| := by
    refine (MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero fun u hu => ?_).symm
    rw [mem_Icc, not_and_or, not_le, not_le] at hu
    have : L / 2 < |u| := by
      rcases hu with h | h
      · calc L / 2 < -u := by linarith
          _ ≤ |u| := neg_le_abs u
      · calc L / 2 < u := h
          _ ≤ |u| := le_abs_self u
    rw [hzero_out u this, abs_zero]
  have hIccIoc : ∫ u in Icc (-(L / 2)) (L / 2), |deriv F u|
      = ∫ u in (-(L / 2))..(L / 2), |deriv F u| := by
    rw [intervalIntegral.integral_of_le (by linarith), MeasureTheory.integral_Icc_eq_integral_Ioc]
  have hii : ∀ a b : ℝ, IntervalIntegrable (fun u => |deriv F u|) MeasureTheory.volume a b :=
    fun a b => (hdcont.abs).intervalIntegrable a b
  have hsplit : ∫ u in (-(L / 2))..(L / 2), |deriv F u|
      = (∫ u in (-(L / 2))..(0 : ℝ), |deriv F u|) + ∫ u in (0 : ℝ)..(L / 2), |deriv F u| :=
    (intervalIntegral.integral_add_adjacent_intervals (hii _ _) (hii _ _)).symm
  have hright : ∫ u in (0 : ℝ)..(L / 2), |deriv F u| = 1 := by
    have habs : ∫ u in (0 : ℝ)..(L / 2), |deriv F u|
        = ∫ u in (0 : ℝ)..(L / 2), -(deriv F u) := by
      rw [intervalIntegral.integral_of_le (by linarith), intervalIntegral.integral_of_le
        (by linarith)]
      refine MeasureTheory.setIntegral_congr_fun measurableSet_Ioc fun u hu => ?_
      exact abs_of_nonpos (hnonpos u hu.1)
    rw [habs, intervalIntegral.integral_neg, intervalIntegral.integral_deriv_eq_sub
      (fun x _ => (hF.differentiable (by norm_num)).differentiableAt) (hdcont.intervalIntegrable _ _)]
    rw [hsupp (L / 2) (by rw [abs_of_pos (by linarith)]), hF0]
    ring
  have hleft : ∫ u in (-(L / 2))..(0 : ℝ), |deriv F u|
      = ∫ u in (0 : ℝ)..(L / 2), |deriv F u| := by
    have h1 := intervalIntegral.integral_comp_neg (a := (0 : ℝ)) (b := L / 2)
      (fun u => |deriv F u|)
    have h2 : (∫ x in (0 : ℝ)..(L / 2), |deriv F (-x)|)
        = ∫ x in (0 : ℝ)..(L / 2), |deriv F x| := by
      refine intervalIntegral.integral_congr fun x _ => ?_
      rw [hodd, abs_neg]
    rw [← h2, h1]
    norm_num
  rw [heqIcc, hIccIoc, hsplit, hleft, hright]
  ring

/-- [eq:phinorms]: "`‖φ'‖₁ = 2`". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bacc3dc794637292679c0c4fe4e9f2ed74c05b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
