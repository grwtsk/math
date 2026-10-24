# horizontal_vanish_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fd8503d-f989-7fb0-11f9-b5236834e6a5",
  "kind": "theorem",
  "lexical_name": "horizontal_vanish_of",
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
  "slug": "horizontal-vanish-of--0f657fdb1a570b8fb2681a12",
  "source": {
    "blob": "133d738d698b7cf16c2b9024a42b278b900a3a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f657fdb1a570b8fb2681a126d1393221dcec53f9fc9729eeaac5c8249978d7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fd8503d-f989-7fb0-11f9-b5236834e6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_vanish_of (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    (hc : 1 - c ≤ c) (hc2 : c ≤ 2) {K : ℝ} (hK : 0 ≤ K) {j₀ : ℕ} (hj₀ : 1 ≤ j₀) {R : ℕ → ℝ}
    (hR : ∀ j : ℕ, (j : ℝ) + j₀ ≤ R j ∧
      ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1 - c ≤ s.re → s.re ≤ c →
        ‖logDeriv f s‖ ≤ K * (Real.log ((j : ℝ) + j₀ + 3)) ^ 2) :
    Tendsto (fun j : ℕ => HIntegral (fun s => Hfn k s * logDeriv f s) (1 - c) c (R j))
        atTop (𝓝 0)
    ∧ Tendsto (fun j : ℕ => HIntegral (fun s => Hfn k s * logDeriv f s) (1 - c) c (-(R j)))
        atTop (𝓝 0) := by
  obtain ⟨CH, hCH0, hH⟩ := norm_Hfn_le hk hkc
  set n : ℕ → ℝ := fun j => (j : ℝ) + j₀ with hndef
  have hn1 : ∀ j, 1 ≤ n j := fun j => by
    have : (1 : ℝ) ≤ (j₀ : ℝ) := by exact_mod_cast hj₀
    have : (0 : ℝ) ≤ (j : ℝ) := Nat.cast_nonneg j
    simp only [hndef]; linarith
  set Lg : ℕ → ℝ := fun j => Real.log (n j + 3) with hLgdef
  have hLg_eq : ∀ j : ℕ, Real.log ((j : ℝ) + j₀ + 3) = Lg j := fun j => by simp only [hLgdef, hndef]
  -- integral bound along either horizontal
  have hint : ∀ (j : ℕ) (y : ℝ), (y = R j ∨ y = -R j) →
      ‖HIntegral (fun s => Hfn k s * logDeriv f s) (1 - c) c y‖
        ≤ CH / (1 + (R j) ^ 2) * (K * Lg j ^ 2) * |c - (1 - c)| := by
    intro j y hy
    unfold HIntegral
    refine intervalIntegral.norm_integral_le_of_norm_le_const fun x hx => ?_
    rw [Set.uIoc_of_le hc] at hx
    have hy2 : y ^ 2 = (R j) ^ 2 := by rcases hy with h | h <;> simp [h]
    dsimp only
    rw [norm_mul, ← hy2]
    refine mul_le_mul (hH x y (by linarith [hx.1]) (by linarith [hx.2])) ?_ (norm_nonneg _)
      (by positivity)
    rw [← hLg_eq]
    have hxre : ((x : ℂ) + y * I).re = x := by simp
    exact (hR j).2 ((x : ℂ) + y * I) (by rcases hy with h | h <;> simp [h]) (by rw [hxre]; exact hx.1.le)
      (by rw [hxre]; exact hx.2)
  -- the majorant tends to 0
  set b : ℕ → ℝ := fun j => CH / (1 + (R j) ^ 2) * (K * Lg j ^ 2) * |c - (1 - c)| with hbdef
  have hb0 : ∀ j, 0 ≤ b j := fun j => by rw [hbdef]; positivity
  have hb_le : ∀ j : ℕ, b j ≤ (CH * K * |c - (1 - c)|) * (Lg j ^ 2 / (1 * (n j + 3) + (-3))) := by
    intro j
    have hnR : n j ≤ R j := (hR j).1
    have hn0 : 0 < n j := by linarith [hn1 j]
    have hden : n j ≤ 1 + R j ^ 2 := by nlinarith [hnR, hn1 j]
    have e1 : (1 : ℝ) * (n j + 3) + (-3) = n j := by ring
    rw [e1]
    have h1 : Lg j ^ 2 / (1 + R j ^ 2) ≤ Lg j ^ 2 / n j :=
      div_le_div_of_nonneg_left (sq_nonneg _) hn0 hden
    have e : b j = CH * K * |c - (1 - c)| * (Lg j ^ 2 / (1 + R j ^ 2)) := by rw [hbdef]; ring
    rw [e]
    exact mul_le_mul_of_nonneg_left h1 (by positivity)
  have hntop : Tendsto (fun j : ℕ => n j + 3) atTop atTop := by
    simp only [hndef]
    exact tendsto_atTop_add_const_right _ _
      (tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop)
  have hlim0 : Tendsto (fun j : ℕ => Lg j ^ 2 / (1 * (n j + 3) + (-3))) atTop (𝓝 0) := by
    have h := (Real.tendsto_pow_log_div_mul_add_atTop 1 (-3) 2 one_ne_zero).comp hntop
    exact h
  have hb : Tendsto b atTop (𝓝 0) := by
    have hlim := hlim0.const_mul (CH * K * |c - (1 - c)|)
    rw [mul_zero] at hlim
    exact squeeze_zero hb0 hb_le hlim
  exact ⟨squeeze_zero_norm (fun j => hint j (R j) (Or.inl rfl)) hb,
    squeeze_zero_norm (fun j => hint j (-(R j)) (Or.inr rfl)) hb⟩

/-! ## The zero side -/

/-- **Zero-sum limit**: finite sums over the windows {|Im ρ| < R_j} ∩ Zset (R increasing to ∞)
converge to the tsum of an absolutely convergent g over Zset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133d738d698b7cf16c2b9024a42b278b900a3a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
