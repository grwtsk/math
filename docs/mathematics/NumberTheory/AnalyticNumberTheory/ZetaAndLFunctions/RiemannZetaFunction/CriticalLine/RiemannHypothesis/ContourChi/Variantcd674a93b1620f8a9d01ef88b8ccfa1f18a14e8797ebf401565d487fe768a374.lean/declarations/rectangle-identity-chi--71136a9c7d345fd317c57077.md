# rectangle_identity_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd9fc1d3-6c22-7b5f-0090-985c38d0ee1b",
  "kind": "theorem",
  "lexical_name": "rectangle_identity_chi",
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
  "slug": "rectangle-identity-chi--71136a9c7d345fd317c57077",
  "source": {
    "blob": "252eeb60c555d67451e714582a9cda19a78deda6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContourChi/Variantcd674a93b1620f8a9d01ef88b8ccfa1f18a14e8797ebf401565d487fe768a374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71136a9c7d345fd317c57077906c1f0c3f01ed1425a823a4eb0db7f950708d2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContourChi/Variantcd674a93b1620f8a9d01ef88b8ccfa1f18a14e8797ebf401565d487fe768a374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd9fc1d3-6c22-7b5f-0090-985c38d0ee1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_identity_chi (hq : 1 < q) (hprim : χ.IsPrimitive)
    {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) {R : ℝ} (hR : 7 ≤ R)
    (hgood : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c →
      completedLFunction χ s ≠ 0) :
    ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | IsNontrivialZeroL χ ρ ∧ -R < ρ.im ∧ ρ.im < R}) ∧
      RectangleIntegral' (fun s => Hfn k s * logDeriv (completedLSym χ) s)
          ((1 - c : ℝ) - R * I) ((c : ℝ) + R * I)
        = ∑ ρ ∈ Z, (zeroMultL χ ρ : ℂ) * Hfn k ρ := by
  classical
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  set z : ℂ := (1 - c : ℝ) - R * I with hzdef
  set w : ℂ := (c : ℝ) + R * I with hwdef
  have hzre : z.re = 1 - c := by simp [hzdef]
  have hzim : z.im = -R := by simp [hzdef]
  have hwre : w.re = c := by simp [hwdef]
  have hwim : w.im = R := by simp [hwdef]
  have hre : z.re ≤ w.re := by rw [hzre, hwre]; linarith
  have him : z.im ≤ w.im := by rw [hzim, hwim]; linarith
  have hmem : ∀ s : ℂ, s ∈ Rectangle z w ↔
      (1 - c ≤ s.re ∧ s.re ≤ c) ∧ (-R ≤ s.im ∧ s.im ≤ R) := by
    intro s
    simp only [Rectangle, Complex.mem_reProdIm, hzre, hzim, hwre, hwim,
      Set.uIcc_of_le (show (1 - c : ℝ) ≤ c by linarith),
      Set.uIcc_of_le (show (-R : ℝ) ≤ R by linarith), Set.mem_Icc]
  have hfin := LSeam_finite_window (χ := χ) hq hprim (-R) R
  set Z : Finset ℂ := hfin.toFinset with hZdef
  have hZmemiff : ∀ ρ : ℂ, ρ ∈ Z ↔ (IsNontrivialZeroL χ ρ ∧ -R < ρ.im ∧ ρ.im ≤ R) := by
    intro ρ
    rw [hZdef, Set.Finite.mem_toFinset]
    constructor
    · rintro ⟨h1, h2⟩
      exact ⟨h1, h2⟩
    · rintro ⟨h1, h2⟩
      exact ⟨h1, h2⟩
  have hZcoe : (Z : Set ℂ) = {ρ : ℂ | IsNontrivialZeroL χ ρ ∧ -R < ρ.im ∧ ρ.im < R} := by
    ext ρ
    rw [Finset.mem_coe, hZmemiff]
    simp only [Set.mem_setOf_eq]
    constructor
    · rintro ⟨h1, h2, h3⟩
      refine ⟨h1, h2, lt_of_le_of_ne h3 ?_⟩
      intro h
      refine hgood ρ (Or.inl h) (by linarith [h1.2.1]) (by linarith [h1.2.2]) ?_
      exact (completedLFunction_eq_zero_iff_of_re_pos hq h1.2.1).mpr h1.1
    · rintro ⟨h1, h2, h3⟩
      exact ⟨h1, h2, h3.le⟩
  refine ⟨Z, hZcoe, ?_⟩
  have hf : AnalyticOnNhd ℂ (completedLSym χ) (Rectangle z w) := fun s _ =>
    (differentiable_completedLSym hχ1).analyticAt s
  have hg : AnalyticOnNhd ℂ (Hfn k) (Rectangle z w) := by
    intro s _
    have hdiff : Differentiable ℂ (Hfn k) := by
      unfold Hfn
      exact (differentiable_paperFT hk.continuous hkc).comp
        ((differentiable_id.sub_const _).div_const _)
    exact hdiff.analyticAt s
  have hborder : ∀ s ∈ RectangleBorder z w, completedLSym χ s ≠ 0 := by
    intro s hs h0
    rw [completedLSym_eq_zero_iff'] at h0
    have hsrect := rectangleBorder_subset_rectangle z w hs
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsrect
    simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
      hzre, hzim, hwre, hwim] at hs
    rcases hs with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
    · exact hgood s (Or.inr h') hr1 hr2 h0
    · exact completedLFunction_ne_zero_of_re_nonpos hq hprim (by rw [h']; linarith) h0
    · exact hgood s (Or.inl h') hr1 hr2 h0
    · exact completedLFunction_ne_zero_of_one_le_re hq hχ1 (by rw [h']; linarith) h0
  have hZchar : ∀ s ∈ Rectangle z w, (completedLSym χ s = 0 ↔ s ∈ Z) := by
    intro s hsrect
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsrect
    rw [completedLSym_eq_zero_iff', hZmemiff]
    constructor
    · intro h0
      have hrepos : 0 < s.re := by
        by_contra hle
        exact completedLFunction_ne_zero_of_re_nonpos hq hprim (by linarith) h0
      have hrelt : s.re < 1 := by
        by_contra hge
        exact completedLFunction_ne_zero_of_one_le_re hq hχ1 (by linarith) h0
      have hnz : IsNontrivialZeroL χ s :=
        ⟨(completedLFunction_eq_zero_iff_of_re_pos hq hrepos).mp h0, hrepos, hrelt⟩
      refine ⟨hnz, ?_, hi2⟩
      rcases lt_or_eq_of_le hi1 with h | h
      · exact h
      · exact absurd h0 (hgood s (Or.inr h.symm) hr1 hr2)
    · rintro ⟨h1, _, _⟩
      exact (completedLFunction_eq_zero_iff_of_re_pos hq h1.2.1).mpr h1.1
  have hZsub : (Z : Set ℂ) ⊆ Rectangle z w := by
    intro ρ hρ
    rw [Finset.mem_coe, hZmemiff] at hρ
    obtain ⟨h1, h2, h3⟩ := hρ
    exact (hmem ρ).mpr ⟨⟨by linarith [h1.2.1], by linarith [h1.2.2]⟩, h2.le, h3⟩
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv hre him hf hg hborder
    Z hZchar hZsub
  rw [key]
  refine Finset.sum_congr rfl fun ρ hρ => ?_
  have h1 := ((hZmemiff ρ).mp hρ).1
  congr 2
  -- analyticOrderNatAt (completedLSym χ) ρ = zeroMultL χ ρ
  rw [analyticOrderNatAt_completedLSym hq hχ1 h1.2.1]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContourChi/Variantcd674a93b1620f8a9d01ef88b8ccfa1f18a14e8797ebf401565d487fe768a374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContourChi/Variantcd674a93b1620f8a9d01ef88b8ccfa1f18a14e8797ebf401565d487fe768a374.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `252eeb60c555d67451e714582a9cda19a78deda6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
