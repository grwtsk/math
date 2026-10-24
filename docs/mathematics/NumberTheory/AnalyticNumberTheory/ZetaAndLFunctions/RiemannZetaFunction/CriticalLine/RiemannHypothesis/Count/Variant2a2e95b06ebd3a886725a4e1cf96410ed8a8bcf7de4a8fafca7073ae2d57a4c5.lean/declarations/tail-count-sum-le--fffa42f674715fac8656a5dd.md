# tail_count_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:515a6253-22b5-fa3f-f2b4-3e63a6705e8a",
  "kind": "theorem",
  "lexical_name": "tail_count_sum_le",
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
  "slug": "tail-count-sum-le--fffa42f674715fac8656a5dd",
  "source": {
    "blob": "19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 302,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fffa42f674715fac8656a5dd8fcb7d8ce423fd9dbb86c90b308e42f33b92988c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:515a6253-22b5-fa3f-f2b4-3e63a6705e8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_count_sum_le {ι : Type*} {γ : ι → ℝ} {m : ι → ℕ} {A₀ T : ℝ}
    (hN : LocalCount γ m A₀) (hT : T₀ ≤ T) (s : Finset ι) (hs : ∀ ρ ∈ s, InTail T (γ ρ)) :
    ∑ ρ ∈ s, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹ ≤ 4 * A₀ * Real.log (4 * T) / T := by
  classical
  have hT' : (300 : ℝ) ≤ T := hT
  have hT0 : (0 : ℝ) ≤ T := by linarith
  have hA₀ : 0 ≤ A₀ := hN.A₀_pos.le
  set D₀ := Real.sqrt T with hD₀def
  have hD₀ : 17 ≤ D₀ := by
    rw [hD₀def, Real.le_sqrt (by norm_num) (by linarith)]; linarith
  have hD₀2 : (2 : ℝ) ≤ D₀ := by linarith
  have hD₀T : D₀ ≤ T := by
    have : D₀ ^ 2 = T := Real.sq_sqrt hT0
    nlinarith
  set B : ℝ := 2 * T + 4 with hBdef
  have hB : (1 : ℝ) ≤ B := by linarith
  -- the common per-side bound
  set W : ℝ := (2 * (D₀ ^ 3)⁻¹ + (D₀ ^ 2)⁻¹ / 2) * Real.log B + (2 * (D₀ ^ 2)⁻¹ + D₀⁻¹) / B
  -- split s into the lower side (γ ≤ T − D₀, includes all γ ≤ 0) and the upper side.
  set slo := s.filter (fun ρ => γ ρ ≤ T - D₀) with hslo
  set shi := s.filter (fun ρ => ¬ γ ρ ≤ T - D₀) with hshi
  have hshi_mem : ∀ ρ ∈ shi, 2 * T + D₀ < γ ρ := by
    intro ρ hρ
    rw [hshi, mem_filter] at hρ
    rcases hs ρ hρ.1 with h | h
    · exact absurd h hρ.2
    · exact h
  have hsplit : ∑ ρ ∈ s, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹
      = ∑ ρ ∈ slo, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹
        + ∑ ρ ∈ shi, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹ :=
    (sum_filter_add_sum_filter_not s _ _).symm
  -- log monotonicity helper: A₀ log(|t|+3) ≤ A₀ log(B + j) when |t| + 3 ≤ B + j
  have hlogmono : ∀ (t : ℝ) (j : ℕ), |t| + 3 ≤ B + j →
      A₀ * Real.log (|t| + 3) ≤ A₀ * Real.log (B + j) := fun t j h =>
    mul_le_mul_of_nonneg_left (Real.log_le_log (by positivity) h) hA₀
  ---------------- lower side: x = T − γ, key = ⌊T − γ⌋₊ ----------------
  have hlo : ∑ ρ ∈ slo, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹ ≤ A₀ * W := by
    have hmem : ∀ ρ ∈ slo, γ ρ ≤ T - D₀ := fun ρ hρ => (mem_filter.mp hρ).2
    have e : ∀ ρ ∈ slo, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹
        = (m ρ : ℝ) * ((T - γ ρ) ^ 3)⁻¹ := fun ρ hρ => by
      rw [distI_of_le hT0 (by linarith [hmem ρ hρ])]
    rw [sum_congr rfl e]
    apply one_side_sum_le slo (fun ρ => T - γ ρ) m (fun ρ => ⌊T - γ ρ⌋₊) hA₀ hB hD₀2
    · intro ρ hρ; linarith [hmem ρ hρ]
    · intro ρ hρ; exact Nat.floor_le (by linarith [hmem ρ hρ])
    · intro ρ hρ; exact (Nat.lt_floor_add_one _).le
    · intro j
      refine (hN.window (T - j - 1) _ ?_).trans (hlogmono _ _ ?_)
      · intro ρ hρ
        rw [mem_filter] at hρ
        obtain ⟨hρs, hρj⟩ := hρ
        have hnn : 0 ≤ T - γ ρ := by linarith [hmem ρ hρs]
        have := (Nat.floor_eq_iff hnn).mp hρj
        constructor <;> linarith [this.1, this.2]
      · have : |T - j - 1| ≤ T + j + 1 := by
          rw [abs_le]; constructor <;> nlinarith [(Nat.cast_nonneg j : (0:ℝ) ≤ j)]
        rw [hBdef]; linarith
  ---------------- upper side: x = γ − 2T, key = ⌈γ − 2T⌉₊ − 1 ----------------
  have hhi : ∑ ρ ∈ shi, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹ ≤ A₀ * W := by
    have hmem := hshi_mem
    have e : ∀ ρ ∈ shi, (m ρ : ℝ) * ((distI T (γ ρ)) ^ 3)⁻¹
        = (m ρ : ℝ) * ((γ ρ - 2 * T) ^ 3)⁻¹ := fun ρ hρ => by
      rw [distI_of_ge hT0 (by linarith [hmem ρ hρ])]
    rw [sum_congr rfl e]
    have hceil1 : ∀ ρ ∈ shi, 1 ≤ ⌈γ ρ - 2 * T⌉₊ := fun ρ hρ =>
      Nat.one_le_ceil_iff.mpr (by linarith [hmem ρ hρ])
    have hcast : ∀ ρ ∈ shi, (((⌈γ ρ - 2 * T⌉₊ - 1 : ℕ) : ℝ)) = ⌈γ ρ - 2 * T⌉₊ - 1 :=
      fun ρ hρ => by rw [Nat.cast_sub (hceil1 ρ hρ)]; simp
    apply one_side_sum_le shi (fun ρ => γ ρ - 2 * T) m (fun ρ => ⌈γ ρ - 2 * T⌉₊ - 1)
      hA₀ hB hD₀2
    · intro ρ hρ; linarith [hmem ρ hρ]
    · intro ρ hρ
      rw [hcast ρ hρ]
      have := Nat.ceil_lt_add_one (show 0 ≤ γ ρ - 2 * T by linarith [hmem ρ hρ])
      linarith
    · intro ρ hρ
      rw [hcast ρ hρ]
      have := Nat.le_ceil (γ ρ - 2 * T)
      linarith
    · intro j
      refine (hN.window (2 * T + j) _ ?_).trans (hlogmono _ _ ?_)
      · intro ρ hρ
        rw [mem_filter] at hρ
        obtain ⟨hρs, hρj⟩ := hρ
        have hc : ⌈γ ρ - 2 * T⌉₊ = j + 1 := by have := hceil1 ρ hρs; omega
        have := (Nat.ceil_eq_iff (Nat.succ_ne_zero j)).mp hc
        push_cast at this
        constructor <;> linarith [this.1, this.2]
      · rw [abs_of_nonneg (by positivity), hBdef]; linarith
  ---------------- combine ----------------
  rw [hsplit]
  have hnum := two_sides_numeric hT
  calc _ ≤ A₀ * W + A₀ * W := add_le_add hlo hhi
    _ = A₀ * (2 * W) := by ring
    _ ≤ A₀ * (4 * Real.log (4 * T) / T) := mul_le_mul_of_nonneg_left hnum hA₀
    _ = _ := by ring

/-! #### The boundary count N(I' ∖ I) -/

/-- Counting by unit windows: if every zero of s falls in one of K windows (key < K) and each
window holds total multiplicity ≤ C, then ∑_s m ≤ K·C. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
