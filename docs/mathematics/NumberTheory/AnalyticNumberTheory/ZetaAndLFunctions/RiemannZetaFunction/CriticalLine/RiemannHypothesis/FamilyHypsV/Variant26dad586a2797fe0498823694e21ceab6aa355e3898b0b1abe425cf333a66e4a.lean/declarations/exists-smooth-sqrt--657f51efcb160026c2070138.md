# exists_smooth_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13ba6a07-d625-496a-ae6b-903c5a967146",
  "kind": "lemma",
  "lexical_name": "exists_smooth_sqrt",
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
  "slug": "exists-smooth-sqrt--657f51efcb160026c2070138",
  "source": {
    "blob": "8c77408fe6586397e3c57ff94be7d415317d1d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:657f51efcb160026c20701386a49df6faa4f172dc86585d03c37cb7cb6fda60c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13ba6a07-d625-496a-ae6b-903c5a967146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_smooth_sqrt {v : ℝ → ℝ} (hv : WindowProfile v) :
    ∃ (h : ℝ → ℝ) (η H : ℝ), 0 < η ∧ 1 ≤ H ∧ ContDiff ℝ 3 h ∧
      (∀ s : ℝ, |s| ≤ 1 / 2 + η → 0 < v s ∧ h s = Real.sqrt (v s)) ∧
      (∀ i : ℕ, i ≤ 3 → ∀ s : ℝ, |iteratedDeriv i h s| ≤ H) := by
  obtain ⟨η₀, m, hη₀, hm, hvm⟩ := exists_margin hv
  -- smooth cut-off: 1 on |s| ≤ ½ + η₀/2, 0 off |s| < ½ + η₀
  let χ : ContDiffBump (0:ℝ) := ⟨1/2 + η₀/2, 1/2 + η₀, by positivity, by linarith⟩
  set vt : ℝ → ℝ := fun s => χ s * v s + (1 - χ s) * m with hvt
  have hvt_ge : ∀ s, m ≤ vt s := by
    intro s
    have h0 := χ.nonneg (x := s)
    have h1 := χ.le_one (x := s)
    by_cases hs : |s| ≤ 1/2 + η₀
    · have := hvm s hs
      simp only [hvt]
      nlinarith
    · have hz : χ s = 0 := χ.zero_of_le_dist (by
        rw [Real.dist_eq, sub_zero]; exact (lt_of_not_ge hs).le)
      simp [hvt, hz]
  have hvt_cd : ContDiff ℝ 3 vt := by
    have hχ : ContDiff ℝ 3 χ := χ.contDiff
    have hv3 := hv.contDiff
    simp only [hvt]
    fun_prop
  set h : ℝ → ℝ := fun s => Real.sqrt (vt s) with hh
  have hh_cd : ContDiff ℝ 3 h := by
    rw [contDiff_iff_contDiffAt]
    intro s
    exact hvt_cd.contDiffAt.sqrt (ne_of_gt (hm.trans_le (hvt_ge s)))
  have hagree : ∀ s : ℝ, |s| ≤ 1/2 + η₀/2 → h s = Real.sqrt (v s) := by
    intro s hs
    have h1 : χ s = 1 := χ.one_of_mem_closedBall (by
      rw [mem_closedBall, Real.dist_eq, sub_zero]; exact hs)
    simp [hh, hvt, h1]
  -- uniform derivative bounds: continuous on a compact, locally constant outside
  set K' : Set ℝ := Icc (-(1 + η₀)) (1 + η₀) with hK'
  have hbound : ∀ i : ℕ, i ≤ 3 → ∃ C : ℝ, ∀ s ∈ K', |iteratedDeriv i h s| ≤ C := by
    intro i hi
    obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn
      ((hh_cd.continuous_iteratedDeriv i (by exact_mod_cast hi)).continuousOn (s := K'))
    exact ⟨C, fun s hs => by simpa [Real.norm_eq_abs] using hC s hs⟩
  obtain ⟨C0, hC0⟩ := hbound 0 (by norm_num)
  obtain ⟨C1, hC1⟩ := hbound 1 (by norm_num)
  obtain ⟨C2, hC2⟩ := hbound 2 (by norm_num)
  obtain ⟨C3, hC3⟩ := hbound 3 le_rfl
  set H : ℝ := max (max (max (max C0 C1) (max C2 C3)) (Real.sqrt m)) 1 with hHdef
  have hout : ∀ s : ℝ, s ∉ K' → ∀ i : ℕ, i ≤ 3 →
      iteratedDeriv i h s = if i = 0 then Real.sqrt m else 0 := by
    intro s hs i hi
    -- h is eventually the constant √m near s
    have hs' : 1 + η₀ < |s| := by
      simp only [hK', mem_Icc, not_and_or, not_le] at hs
      rcases hs with hs | hs
      · rw [abs_of_neg (by linarith)]; linarith
      · rw [abs_of_pos (by linarith)]; linarith
    have hopen : IsOpen {t : ℝ | 1/2 + η₀ < |t|} := isOpen_lt continuous_const continuous_abs
    have hev : h =ᶠ[𝓝 s] (fun _ => Real.sqrt m) := by
      refine eventually_of_mem (hopen.mem_nhds (by show 1/2 + η₀ < |s|; linarith)) fun t ht => ?_
      have hz : χ t = 0 := χ.zero_of_le_dist (by
        rw [Real.dist_eq, sub_zero]; exact le_of_lt ht)
      simp [hh, hvt, hz]
    rw [hev.iteratedDeriv_eq i]
    simp only [iteratedDeriv_const]
  refine ⟨h, η₀ / 2, H, by positivity, le_max_right _ _, hh_cd, fun s hs => ⟨?_, hagree s hs⟩, ?_⟩
  · exact hm.trans_le (hvm s (by linarith))
  · intro i hi s
    by_cases hs : s ∈ K'
    · have hle : |iteratedDeriv i h s| ≤ max (max C0 C1) (max C2 C3) := by
        interval_cases i
        · exact (hC0 s hs).trans (le_trans (le_max_left _ _) (le_max_left _ _))
        · exact (hC1 s hs).trans (le_trans (le_max_right _ _) (le_max_left _ _))
        · exact (hC2 s hs).trans (le_trans (le_max_left _ _) (le_max_right _ _))
        · exact (hC3 s hs).trans (le_trans (le_max_right _ _) (le_max_right _ _))
      exact hle.trans (by rw [hHdef]; exact le_trans (le_max_left _ _) (le_max_left _ _))
    · rw [hout s hs i hi]
      split_ifs
      · rw [abs_of_nonneg (Real.sqrt_nonneg _), hHdef]
        exact le_trans (le_max_right _ _) (le_max_left _ _)
      · rw [abs_zero]; positivity

/-! ## §2. φ_v as (h̃(·/L))·φ, and the L¹ size of its derivatives -/

section Window
variable {ϱ : ℝ → ℝ} {L w : ℝ} {v h : ℝ → ℝ} {η H : ℝ}

/-- the smooth factor in the u-variable: u ↦ h̃(u/L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c77408fe6586397e3c57ff94be7d415317d1d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
