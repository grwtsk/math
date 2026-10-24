# integral_abs_iteratedDeriv_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cda9409e7d4b7818fe8c522c8ddda6ed8180fc54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd25fefc-8e07-fe29-9fe6-96bf53fe0a60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0099643b-f423-2267-a32b-371cc65f530e",
  "kind": "theorem",
  "lexical_name": "integral_abs_iteratedDeriv_mul_le",
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
  "slug": "integral-abs-iteratedderiv-mul-le--e887636b9db6437684dba1b2",
  "source": {
    "blob": "cda9409e7d4b7818fe8c522c8ddda6ed8180fc54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e887636b9db6437684dba1b2092ab265c05bb60f0092534d2c45567fe6cdf5a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0099643b-f423-2267-a32b-371cc65f530e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_iteratedDeriv_mul_le (hϱ : TaperProfile ϱ) {B : ℝ} (hB0 : 0 ≤ B)
    (hB : ∀ i : ℕ, 1 ≤ i → i ≤ 3 → ∀ x : ℝ, |iteratedDeriv i ϱ x| ≤ B)
    (hw1 : 1 ≤ w) (hwL : 2 * w ≤ L) (hL1 : 1 ≤ L)
    (hh : ContDiff ℝ 3 h) (hH1 : 1 ≤ H) (hH : ∀ i : ℕ, i ≤ 3 → ∀ s : ℝ, |iteratedDeriv i h s| ≤ H)
    {k : ℕ} (hk : 1 ≤ k) (hk3 : k ≤ 3) :
    Integrable (iteratedDeriv k (fun u => gfac h L u * Taper.phi ϱ L w u)) ∧
    ∫ u, |iteratedDeriv k (fun u => gfac h L u * Taper.phi ϱ L w u) u| ≤ 8 * (2 * B + 1) * H := by
  have hw : 0 < w := by linarith
  have hL : 0 < L := by linarith
  set φ : ℝ → ℝ := Taper.phi ϱ L w with hφdef
  set g : ℝ → ℝ := gfac h L with hgdef
  have hφcd : ContDiff ℝ 3 φ := Taper.phi_contDiff hϱ hw hwL
  have hgcd : ContDiff ℝ 3 g := gfac_contDiff hh
  have hF : (fun u => g u * φ u) = g * φ := rfl
  have hFcd : ContDiff ℝ 3 (g * φ) := hgcd.mul hφcd
  have hFcs : HasCompactSupport (g * φ) := (Taper.phi_hasCompactSupport hϱ hw).mul_left
  rw [hF]
  refine ⟨(hFcd.continuous_iteratedDeriv k (by exact_mod_cast hk3)).integrable_of_hasCompactSupport
    (FamilyHypsC3.hasCompactSupport_iteratedDeriv' hFcs k), ?_⟩
  -- the Leibniz majorant  G(u) := Σ_i C(k,i)·(L⁻¹)^i·H·|φ^{(k−i)}(u)|
  set G : ℝ → ℝ := fun u => ∑ i ∈ Finset.range (k + 1),
    (k.choose i : ℝ) * ((L⁻¹) ^ i * H * |iteratedDeriv (k - i) φ u|) with hG
  have hφj_int : ∀ j : ℕ, j ≤ 3 → Integrable (fun u => |iteratedDeriv j φ u|) := by
    intro j hj
    exact ((hφcd.continuous_iteratedDeriv j (by exact_mod_cast hj)).integrable_of_hasCompactSupport
      (FamilyHypsC3.hasCompactSupport_iteratedDeriv' (Taper.phi_hasCompactSupport hϱ hw) j)).abs
  have hGint : Integrable G := by
    refine integrable_finset_sum _ fun i hi => ?_
    exact ((hφj_int (k - i) (by omega)).const_mul _).const_mul _
  have hpt : ∀ u : ℝ, |iteratedDeriv k (g * φ) u| ≤ G u := by
    intro u
    rw [iteratedDeriv_mul (hgcd.contDiffAt.of_le (by exact_mod_cast hk3))
      (hφcd.contDiffAt.of_le (by exact_mod_cast hk3))]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i hi => ?_)
    have hi' : i ≤ 3 := by have := Finset.mem_range.1 hi; omega
    rw [abs_mul, abs_mul, Nat.abs_cast, mul_assoc]
    refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg (α := ℝ) _)
    exact mul_le_mul_of_nonneg_right (abs_iteratedDeriv_gfac_le hh hH hL hi' u) (abs_nonneg _)
  -- each term integrates to at most (2B+1)·H
  have hterm : ∀ i ∈ Finset.range (k + 1),
      ∫ u, (k.choose i : ℝ) * ((L⁻¹) ^ i * H * |iteratedDeriv (k - i) φ u|)
        ≤ (k.choose i : ℝ) * ((2 * B + 1) * H) := by
    intro i hi
    have hik : i ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.1 hi)
    rw [integral_const_mul, integral_const_mul]
    refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
    have hLi : (L⁻¹) ^ i ≤ 1 := pow_le_one₀ (by positivity) (inv_le_one_of_one_le₀ hL1)
    rcases Nat.lt_or_ge i k with hlt | hge
    · -- k − i ≥ 1: ramp bound 2B
      have hj1 : 1 ≤ k - i := by omega
      have hb := FamilyHypsC3.integral_abs_iteratedDeriv_phi_le (L := L) (w := w) hϱ hB0 hB hw hwL
        hj1 (by omega : k - i ≤ 3)
      have hwj : (w⁻¹) ^ (k - i) * w ≤ 1 := by
        obtain ⟨m, hm⟩ : ∃ m, k - i = m + 1 := ⟨k - i - 1, by omega⟩
        rw [hm, pow_succ, mul_assoc, inv_mul_cancel₀ hw.ne', mul_one]
        exact pow_le_one₀ (by positivity) (inv_le_one_of_one_le₀ hw1)
      have hI : ∫ u, |iteratedDeriv (k - i) φ u| ≤ 2 * B := by
        refine hb.trans ?_
        nlinarith
      calc (L⁻¹) ^ i * H * ∫ u, |iteratedDeriv (k - i) φ u| ≤ 1 * H * (2 * B) := by
            gcongr
        _ ≤ (2 * B + 1) * H := by nlinarith
    · -- i = k: the factor L⁻¹ against ∫|φ| ≤ L
      have hik' : i = k := le_antisymm hik hge
      subst hik'
      simp only [Nat.sub_self, iteratedDeriv_zero]
      have hI : ∫ u, |φ u| ≤ L := integral_abs_phi_le hϱ hw hwL
      obtain ⟨m, hm⟩ : ∃ m, i = m + 1 := ⟨i - 1, by omega⟩
      have hLk : (L⁻¹) ^ i * L ≤ 1 := by
        rw [hm, pow_succ, mul_assoc, inv_mul_cancel₀ hL.ne', mul_one]
        exact pow_le_one₀ (by positivity) (inv_le_one_of_one_le₀ hL1)
      calc (L⁻¹) ^ i * H * ∫ u, |φ u| ≤ (L⁻¹) ^ i * H * L := by gcongr
        _ = ((L⁻¹) ^ i * L) * H := by ring
        _ ≤ 1 * H := by gcongr
        _ ≤ (2 * B + 1) * H := by nlinarith
  calc ∫ u, |iteratedDeriv k (g * φ) u| ≤ ∫ u, G u :=
        integral_mono_of_nonneg (Eventually.of_forall fun u => abs_nonneg _) hGint
          (Eventually.of_forall hpt)
    _ = ∑ i ∈ Finset.range (k + 1),
          ∫ u, (k.choose i : ℝ) * ((L⁻¹) ^ i * H * |iteratedDeriv (k - i) φ u|) := by
        rw [hG, integral_finset_sum _ (fun i hi =>
          ((hφj_int (k - i) (by omega)).const_mul _).const_mul _)]
    _ ≤ ∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ) * ((2 * B + 1) * H) := Finset.sum_le_sum hterm
    _ = (2:ℝ) ^ k * ((2 * B + 1) * H) := by
        rw [← Finset.sum_mul]
        congr 1
        have := Nat.sum_range_choose k
        exact_mod_cast this
    _ ≤ (2:ℝ) ^ 3 * ((2 * B + 1) * H) := by
        gcongr
        · norm_num
    _ = 8 * (2 * B + 1) * H := by ring

end Window

/-! ## §3. FamilyHyps for the profiled families -/

/-- **FamilyHyps for T ↦ P.atV v T**, every valid P with λ < 1 and every WindowProfile v. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda9409e7d4b7818fe8c522c8ddda6ed8180fc54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
