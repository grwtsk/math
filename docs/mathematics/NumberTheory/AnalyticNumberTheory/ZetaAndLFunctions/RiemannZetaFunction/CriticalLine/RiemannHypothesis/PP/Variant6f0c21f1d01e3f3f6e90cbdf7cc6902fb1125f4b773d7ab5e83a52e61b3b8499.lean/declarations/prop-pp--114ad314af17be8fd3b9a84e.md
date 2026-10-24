# prop_PP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f20051c-4dfe-9d25-e899-b0bda58bb828",
  "kind": "theorem",
  "lexical_name": "prop_PP",
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
  "slug": "prop-pp--114ad314af17be8fd3b9a84e",
  "source": {
    "blob": "47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 340,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114ad314af17be8fd3b9a84e13ab80d51c61ed62f1157ecd6a8ebecd33798394",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f20051c-4dfe-9d25-e899-b0bda58bb828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_PP (hcheb : Zeta23.ChebyshevMertens) (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C)
    (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |Mform F.Phi p.T (Zeta23.PX p.X) (Zeta23.PX p.X) - p.T / π * sumA2g p.X F.g|
        ≤ C * (p.L ^ 2 * p.X)) := by
  obtain ⟨CMV, hCMV, hMV⟩ := hMV
  obtain ⟨x₀, h1b⟩ := hcheb.cheb1b
  obtain ⟨C1d, h1d⟩ := hcheb.cheb1d
  obtain ⟨C2a, h2a⟩ := hcheb.cheb2a
  -- the constant (depends on cϱ, the H-constants, λ only through T₀)
  refine ⟨(1 / (2 * π ^ 2)) * ((1 / 2 + |C2a|) * (8 + 8 * |cϱ|) + 16 * CMV * (2 * π) * |C1d|
      + 2 * π / Real.log 2 * 9),
    max (2 * π * Real.exp (|x₀| / lam)) 1, fun p F hplam hT hF => ?_⟩
  beta_reduce
  -- regime facts
  have hT1 : 1 ≤ p.T := le_trans (le_max_right _ _) hT
  have hT0 : 0 ≤ p.T := by linarith
  have hX0 : x₀ ≤ p.X := Setting.le_X_of_T (hplam ▸ hlam.1)
    (by rw [hplam]; exact (le_max_left _ _).trans hT)
  have hX2 : 2 ≤ p.X := hF.two_le_X
  have hL8 : 8 ≤ p.L := hF.eight_le_L
  have hL1 : 1 ≤ p.L := by linarith
  have hLX : p.L ≤ p.X := hF.L_le_X
  have hlogX : Real.log p.X = p.L := p.log_X
  have hΦc : Continuous F.Phi := hF.Phi_contDiff.continuous
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  set W := ∫ x, F.Phi x ^ 2 with hWdef
  have hW0 : 0 ≤ W := integral_nonneg fun x => sq_nonneg _
  have hWle : W ≤ 2 * π * p.L := hF.integral_Phi_sq_le
  set ΛΦ := ∫ x, F.Phi x ^ 2 * |x| with hΛΦdef
  have hΛΦ0 : 0 ≤ ΛΦ := integral_nonneg fun x => mul_nonneg (sq_nonneg _) (abs_nonneg _)
  -- ∫Φ²|x| ≤ 8 + 8 log(cϱL/4w) ≤ (8 + 8|cϱ|) L
  have hΛΦle : ΛΦ ≤ (8 + 8 * |cϱ|) * p.L := by
    have h1 := hF.integral_Phi_sq_mul_abs_le
    have hc : 4 ≤ cϱ := hF.four_le_cϱ
    have hw : 1 ≤ p.w := hF.one_le_w
    have harg : 0 < cϱ * p.L / (4 * p.w) := by positivity
    have hlog : Real.log (cϱ * p.L / (4 * p.w)) ≤ cϱ * p.L / (4 * p.w) := by
      linarith [Real.log_le_sub_one_of_pos harg]
    have hfrac : cϱ * p.L / (4 * p.w) ≤ |cϱ| * p.L := by
      rw [div_le_iff₀ (by positivity), abs_of_nonneg (by linarith)]
      have hcL : 0 ≤ cϱ * p.L := mul_nonneg (by linarith) (by linarith)
      nlinarith [mul_nonneg hcL (by linarith : (0:ℝ) ≤ 4 * p.w - 1)]
    calc ΛΦ ≤ 8 + 8 * Real.log (cϱ * p.L / (4 * p.w)) := h1
      _ ≤ 8 + 8 * (|cϱ| * p.L) := by linarith
      _ ≤ 8 * p.L + 8 * (|cϱ| * p.L) := by linarith
      _ = (8 + 8 * |cϱ|) * p.L := by ring
  -- Chebyshev inputs at x = X (log X = L)
  have hsuma : ∑ n ∈ primeRange p.X, acoef n ≤ 3 * Real.sqrt p.X := h1b p.X hX0
  have hsuma0 : 0 ≤ ∑ n ∈ primeRange p.X, acoef n := Finset.sum_nonneg fun n _ => acoef_nonneg n
  have hsumΛ2 : ∑ n ∈ primeRange p.X, (Λ n : ℝ) ^ 2 ≤ |C1d| * p.X * p.L := by
    have := h1d p.X hX2
    rw [hlogX] at this
    refine this.trans ?_
    have hXL : 0 ≤ p.X * p.L := mul_nonneg (by linarith) (by linarith)
    calc C1d * p.X * p.L = C1d * (p.X * p.L) := by ring
      _ ≤ |C1d| * (p.X * p.L) := mul_le_mul_of_nonneg_right (le_abs_self _) hXL
      _ = |C1d| * p.X * p.L := by ring
  have hsuma2 : ∑ n ∈ primeRange p.X, acoef n ^ 2 ≤ (1 / 2 + |C2a|) * p.L ^ 2 := by
    have := h2a p.X hX2
    rw [hlogX] at this
    simp_rw [acoef_sq]
    have h3 := (abs_le.mp this).2
    unfold primeRange
    calc ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Λ n : ℝ) ^ 2 / n ≤ p.L ^ 2 / 2 + C2a * p.L := by linarith
      _ ≤ p.L ^ 2 / 2 + |C2a| * p.L ^ 2 := by
          have : C2a * p.L ≤ |C2a| * p.L := mul_le_mul_of_nonneg_right (le_abs_self _) (by linarith)
          have : |C2a| * p.L ≤ |C2a| * p.L ^ 2 := by
            apply mul_le_mul_of_nonneg_left _ (abs_nonneg _); nlinarith
          linarith
      _ = (1 / 2 + |C2a|) * p.L ^ 2 := by ring
  -- the three pieces
  have hD := diag_estimate hT0 hΦc hF.Phi_sq_integrable hF.Phi_sq_mul_abs_integrable
    hF.Phi_sq_fourier p.X
  have hO1 := O1_bound hMV hCMV.le hT0 hΦc hF.Phi_sq_integrable p.X
  have hO2 := O2_estimate hΦc hF.Phi_sq_integrable p.X p.T
  rw [Mform_PX_PX hT0 hΦc]
  set D := ∑ n ∈ primeRange p.X, acoef n ^ 2 * Aminus F.Phi p.T (Real.log n) (Real.log n)
  set O1 := ∑ n ∈ primeRange p.X, ∑ m ∈ primeRange p.X,
    (if n = m then (0:ℝ) else acoef n * acoef m * Aminus F.Phi p.T (Real.log n) (Real.log m))
  set O2 := ∑ n ∈ primeRange p.X, ∑ m ∈ primeRange p.X,
    acoef n * acoef m * Aplus F.Phi p.T (Real.log n) (Real.log m)
  have hk : (0:ℝ) < 1 / (2 * π ^ 2) := by positivity
  -- piece bounds in the form  ≤ const · L²X
  have bD : |1 / (2 * π ^ 2) * D - p.T / π * sumA2g p.X F.g|
      ≤ 1 / (2 * π ^ 2) * ((1 / 2 + |C2a|) * (8 + 8 * |cϱ|)) * (p.L ^ 2 * p.X) := by
    refine hD.trans ?_
    rw [mul_assoc, mul_assoc]
    refine mul_le_mul_of_nonneg_left ?_ hk.le
    calc (∑ n ∈ primeRange p.X, acoef n ^ 2) * ΛΦ
        ≤ ((1 / 2 + |C2a|) * p.L ^ 2) * ((8 + 8 * |cϱ|) * p.L) := by
          apply mul_le_mul hsuma2 hΛΦle hΛΦ0 (by positivity)
      _ ≤ ((1 / 2 + |C2a|) * p.L ^ 2) * ((8 + 8 * |cϱ|) * p.X) := by gcongr
      _ = (1 / 2 + |C2a|) * (8 + 8 * |cϱ|) * (p.L ^ 2 * p.X) := by ring
  have bO1 : |1 / (2 * π ^ 2) * O1| ≤ 1 / (2 * π ^ 2) * (16 * CMV * (2 * π) * |C1d|) * (p.L ^ 2 * p.X) := by
    rw [abs_mul, abs_of_pos hk, mul_assoc]
    refine mul_le_mul_of_nonneg_left ?_ hk.le
    calc |O1| ≤ 16 * CMV * W * ∑ n ∈ primeRange p.X, (Λ n : ℝ) ^ 2 := hO1
      _ ≤ 16 * CMV * (2 * π * p.L) * (|C1d| * p.X * p.L) := by
          apply mul_le_mul _ hsumΛ2 (Finset.sum_nonneg fun n _ => sq_nonneg _) (by positivity)
          exact mul_le_mul_of_nonneg_left hWle (by positivity)
      _ = 16 * CMV * (2 * π) * |C1d| * (p.L ^ 2 * p.X) := by ring
  have bO2 : |1 / (2 * π ^ 2) * O2| ≤ 1 / (2 * π ^ 2) * (2 * π / Real.log 2 * 9) * (p.L ^ 2 * p.X) := by
    rw [abs_mul, abs_of_pos hk, mul_assoc]
    refine mul_le_mul_of_nonneg_left ?_ hk.le
    calc |O2| ≤ W / Real.log 2 * (∑ n ∈ primeRange p.X, acoef n) ^ 2 := hO2
      _ ≤ (2 * π * p.L) / Real.log 2 * (3 * Real.sqrt p.X) ^ 2 := by
          apply mul_le_mul _ _ (sq_nonneg _) (by positivity)
          · exact div_le_div_of_nonneg_right hWle hlog2.le
          · exact pow_le_pow_left₀ hsuma0 hsuma 2
      _ = 2 * π / Real.log 2 * 9 * (p.L * p.X) := by
          rw [mul_pow, Real.sq_sqrt (by linarith)]; ring
      _ ≤ 2 * π / Real.log 2 * 9 * (p.L ^ 2 * p.X) := by
          apply mul_le_mul_of_nonneg_left _ (by positivity)
          have hLL : p.L ≤ p.L ^ 2 := by nlinarith
          exact mul_le_mul_of_nonneg_right hLL (by linarith)
  -- combine
  have split : 1 / (2 * π ^ 2) * (D + O1 + O2) - p.T / π * sumA2g p.X F.g
      = (1 / (2 * π ^ 2) * D - p.T / π * sumA2g p.X F.g) + 1 / (2 * π ^ 2) * O1
        + 1 / (2 * π ^ 2) * O2 := by ring
  rw [split]
  calc |(1 / (2 * π ^ 2) * D - p.T / π * sumA2g p.X F.g) + 1 / (2 * π ^ 2) * O1 + 1 / (2 * π ^ 2) * O2|
      ≤ |1 / (2 * π ^ 2) * D - p.T / π * sumA2g p.X F.g| + |1 / (2 * π ^ 2) * O1|
        + |1 / (2 * π ^ 2) * O2| := abs_add_three _ _ _
    _ ≤ 1 / (2 * π ^ 2) * ((1 / 2 + |C2a|) * (8 + 8 * |cϱ|)) * (p.L ^ 2 * p.X)
        + 1 / (2 * π ^ 2) * (16 * CMV * (2 * π) * |C1d|) * (p.L ^ 2 * p.X)
        + 1 / (2 * π ^ 2) * (2 * π / Real.log 2 * 9) * (p.L ^ 2 * p.X) := by gcongr
    _ = (1 / (2 * π ^ 2)) * ((1 / 2 + |C2a|) * (8 + 8 * |cϱ|) + 16 * CMV * (2 * π) * |C1d|
      + 2 * π / Real.log 2 * 9) * (p.L ^ 2 * p.X) := by ring

/-- **[prop:PP], the g-sandwich, lower half** (§5.4, verbatim):
"(L−2w)³/6 + O(L²) = Σ_{n≤Xe^{−2w}} a_n²(L−2w−y_n) ≤ Σ_{n≤X} a_n² g(y_n)",
"by [eq:gbounds] and [eq:cheb2] (note a_n² = Λ(n)²/n)".  One-sided, explicit-slack form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
