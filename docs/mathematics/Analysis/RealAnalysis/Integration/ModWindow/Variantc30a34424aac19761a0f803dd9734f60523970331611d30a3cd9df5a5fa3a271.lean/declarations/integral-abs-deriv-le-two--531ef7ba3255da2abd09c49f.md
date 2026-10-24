# integral_abs_deriv_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d37df7a4-6cda-8e0a-6b85-7959c5baca2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c22efce-1a48-0aae-661c-12744f77fe36",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv_le_two",
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
  "slug": "integral-abs-deriv-le-two--531ef7ba3255da2abd09c49f",
  "source": {
    "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:531ef7ba3255da2abd09c49fdd73b390e5961d94f69fb118d4f2b3ec2e3032d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c22efce-1a48-0aae-661c-12744f77fe36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv_le_two {g : ℝ → ℝ} {M : ℝ} (hM : 0 < M)
    (hg : ContDiff ℝ 1 g) (heven : ∀ x, g (-x) = g x) (hanti : AntitoneOn g (Set.Ici 0))
    (h1 : ∀ x, g x ≤ 1) (hsupp : ∀ x, M ≤ |x| → g x = 0) :
    ∫ u, |deriv g u| ≤ 2 := by
  have hd : Differentiable ℝ g := hg.differentiable (by norm_num)
  have hd' : Continuous (deriv g) := hg.continuous_deriv le_rfl
  have hderiv0 : ∀ x : ℝ, M < |x| → deriv g x = 0 := by
    intro x hx
    have hopen : IsOpen {v : ℝ | M < |v|} := (continuous_abs).isOpen_preimage _ isOpen_Ioi
    have hEq : g =ᶠ[nhds x] (fun _ => (0:ℝ)) := by
      filter_upwards [hopen.mem_nhds hx] with v hv
      exact hsupp v (le_of_lt hv)
    rw [hEq.deriv_eq, deriv_const]
  have hodd : ∀ x : ℝ, |deriv g (-x)| = |deriv g x| := by
    intro x
    have hfe : (fun y : ℝ => g (-y)) = g := funext heven
    have h := deriv_comp_neg (f := g) (x := x)
    rw [hfe] at h
    have h' : deriv g (-x) = -deriv g x := by linarith
    rw [h', abs_neg]
  have habs : (fun u : ℝ => |deriv g u|) = fun u => (fun t => |deriv g t|) |u| := by
    funext u
    show |deriv g u| = |deriv g (|u|)|
    rcases le_or_gt 0 u with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_neg h, hodd]
  have hhalf : ∫ u, |deriv g u| = 2 * ∫ u in Set.Ioi 0, |deriv g u| := by
    conv_lhs => rw [habs]
    exact integral_comp_abs (f := fun t => |deriv g t|)
  have hcs : HasCompactSupport (deriv g) := by
    apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := -M) (b := M))
    intro x hx
    rw [Function.mem_support] at hx
    by_contra hmem
    apply hx
    apply hderiv0
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at hmem
    rcases hmem with h | h
    · rw [abs_of_neg (by linarith)]; linarith
    · rw [abs_of_pos (by linarith)]; linarith
  have hint : Integrable (fun u => |deriv g u|) :=
    (hd'.integrable_of_hasCompactSupport hcs).abs
  have hsplit : ∫ u in Set.Ioi 0, |deriv g u|
      = (∫ u in Set.Ioc 0 M, |deriv g u|) + ∫ u in Set.Ioi M, |deriv g u| := by
    rw [← MeasureTheory.setIntegral_union (Set.Ioc_disjoint_Ioi le_rfl) measurableSet_Ioi
      hint.integrableOn hint.integrableOn, Set.Ioc_union_Ioi_eq_Ioi hM.le]
  have hfar : ∫ u in Set.Ioi M, |deriv g u| = 0 := by
    apply MeasureTheory.setIntegral_eq_zero_of_forall_eq_zero
    intro x hx
    rw [hderiv0 x (by rw [abs_of_pos (lt_trans hM hx)]; exact hx), abs_zero]
  have hneg : ∀ x ∈ Set.Ioc 0 M, |deriv g x| = -deriv g x := by
    intro x hx
    have hx0 : 0 < x := hx.1
    have hle : deriv g x ≤ 0 := by
      have hmem : Set.Ici (0:ℝ) ∈ nhds x := Ici_mem_nhds hx0
      rw [← derivWithin_of_mem_nhds hmem]
      exact hanti.derivWithin_nonpos
    rw [abs_of_nonpos hle]
  have hFTC : ∫ u in (0:ℝ)..M, deriv g u = g M - g 0 :=
    intervalIntegral.integral_deriv_eq_sub (fun x _ => hd x) ((hd'.intervalIntegrable) 0 M)
  have hnear : ∫ u in Set.Ioc 0 M, |deriv g u| = g 0 - g M := by
    rw [MeasureTheory.setIntegral_congr_fun measurableSet_Ioc hneg]
    rw [← intervalIntegral.integral_of_le hM.le] at *
    rw [intervalIntegral.integral_neg, hFTC]
    ring
  have hgM : g M = 0 := hsupp M (by rw [abs_of_pos hM])
  have hg0 : g 0 ≤ 1 := h1 0
  rw [hhalf, hsplit, hfar, hnear, hgM]
  linarith

/-! ### first-derivative norms -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401612063d52225f560f886499cc0e07a3c7ba67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
