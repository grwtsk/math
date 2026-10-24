# prop_PP_c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a5d3adc-d907-da2a-6a70-9666d907cf34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65ef1d3e-043c-d55f-3f8e-261ae7c37613",
  "kind": "theorem",
  "lexical_name": "prop_PP_c",
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
  "slug": "prop-pp-c--762de14cdf6e93557dfebefa",
  "source": {
    "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 462,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:762de14cdf6e93557dfebefa81f500ddc5a82759769f146852bca6cc99858def",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65ef1d3e-043c-d55f-3f8e-261ae7c37613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_PP_c (hMV : Zeta23.MVHilbert C) (hC : 0 ≤ C) (hF : LocalHypsCore cϱ p F)
    (hT : 1 ≤ p.T) (c : ℕ → ℂ) (hc1 : c 1 = 0) :
    |Mform F.Phi p.T (Pc p.X c) (Pc p.X c)
        - p.T / π * ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2 / n * F.g (Real.log n)|
      ≤ (1 / (2 * π ^ 2)) * (8 + 8 * cϱ) * p.L * (∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2 / n)
        + (1 / (2 * π ^ 2)) * (32 * π) * C * p.L * (∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ ^ 2)
        + (1 / (2 * π ^ 2)) * (2 * π / Real.log 2) * p.L
            * (∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ / Real.sqrt n) ^ 2 := by
  -- all sums are over primeRange p.X (defeq); rename
  show |Mform F.Phi p.T (Pc p.X c) (Pc p.X c)
        - p.T / π * ∑ n ∈ primeRange p.X, ‖c n‖ ^ 2 / n * F.g (Real.log n)|
      ≤ (1 / (2 * π ^ 2)) * (8 + 8 * cϱ) * p.L * (∑ n ∈ primeRange p.X, ‖c n‖ ^ 2 / n)
        + (1 / (2 * π ^ 2)) * (32 * π) * C * p.L * (∑ n ∈ primeRange p.X, ‖c n‖ ^ 2)
        + (1 / (2 * π ^ 2)) * (2 * π / Real.log 2) * p.L
            * (∑ n ∈ primeRange p.X, ‖c n‖ / Real.sqrt n) ^ 2
  have hπ : (0:ℝ) < π := Real.pi_pos
  have hT0 : 0 ≤ p.T := by linarith
  have hL8 : 8 ≤ p.L := hF.eight_le_L
  have hL1 : 1 ≤ p.L := by linarith
  have hΦc : Continuous F.Phi := hF.Phi_contDiff.continuous
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hcϱ : 4 ≤ cϱ := hF.four_le_cϱ
  set W := ∫ x, F.Phi x ^ 2 with hWdef
  have hW0 : 0 ≤ W := integral_nonneg fun x => sq_nonneg _
  have hWle : W ≤ 2 * π * p.L := hF.integral_Phi_sq_le
  set ΛΦ := ∫ x, F.Phi x ^ 2 * |x| with hΛΦdef
  have hΛΦ0 : 0 ≤ ΛΦ := integral_nonneg fun x => mul_nonneg (sq_nonneg _) (abs_nonneg _)
  have hΛΦle : ΛΦ ≤ (8 + 8 * cϱ) * p.L := by
    have h1 := hF.integral_Phi_sq_mul_abs_le
    have hw : 1 ≤ p.w := hF.one_le_w
    have hcL : 0 ≤ cϱ * p.L := mul_nonneg (by linarith) (by linarith)
    have harg : 0 < cϱ * p.L / (4 * p.w) := by positivity
    have hlog : Real.log (cϱ * p.L / (4 * p.w)) ≤ cϱ * p.L / (4 * p.w) := by
      linarith [Real.log_le_sub_one_of_pos harg]
    have hfrac : cϱ * p.L / (4 * p.w) ≤ cϱ * p.L := by
      rw [div_le_iff₀ (by positivity)]
      nlinarith [mul_nonneg hcL (by linarith : (0:ℝ) ≤ 4 * p.w - 1)]
    calc ΛΦ ≤ 8 + 8 * Real.log (cϱ * p.L / (4 * p.w)) := h1
      _ ≤ 8 + 8 * (cϱ * p.L) := by linarith
      _ ≤ 8 * p.L + 8 * (cϱ * p.L) := by linarith
      _ = (8 + 8 * cϱ) * p.L := by ring
  -- the three coefficient sums
  set A := ∑ n ∈ primeRange p.X, ‖c n‖ ^ 2 / n with hAdef
  set B := ∑ n ∈ primeRange p.X, ‖c n‖ ^ 2 with hBdef
  set S₁ := ∑ n ∈ primeRange p.X, ‖c n‖ / Real.sqrt n with hS₁def
  have hA0 : 0 ≤ A := Finset.sum_nonneg fun n _ => div_nonneg (sq_nonneg _) (Nat.cast_nonneg _)
  have hB0 : 0 ≤ B := Finset.sum_nonneg fun n _ => sq_nonneg _
  -- the weight sums in terms of A, B, S₁
  have hwA : ∑ n ∈ primeRange p.X, wcoef c n ^ 2 = A := by
    rw [hAdef]
    exact Finset.sum_congr rfl fun n _ => wcoef_sq c n
  have hwB : ∑ n ∈ primeRange p.X, wcoef c n ^ 2 * n = B := by
    rw [hBdef]
    exact Finset.sum_congr rfl fun n hn => wcoef_sq_mul (one_le_of_mem_primeRange hn)
  have hwS : ∑ n ∈ primeRange p.X, wcoef c n = S₁ := by
    rw [hS₁def]
    rfl
  have hwg : ∑ n ∈ primeRange p.X, wcoef c n ^ 2 * F.g (Real.log n)
      = ∑ n ∈ primeRange p.X, ‖c n‖ ^ 2 / n * F.g (Real.log n) := by
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [wcoef_sq]
  -- the three estimates
  have hD := diag_estimate_w hT0 hΦc hF.Phi_sq_integrable hF.Phi_sq_mul_abs_integrable
    hF.Phi_sq_fourier p.X (wcoef c)
  have hO1 := O1_bound_w hMV hC hT0 hΦc hF.Phi_sq_integrable p.X (wcoef c) (fun n => (c n).arg)
  have hO2 := O2_estimate_w hΦc hF.Phi_sq_integrable p.X p.T (wcoef_nonneg c) (wcoef_one hc1)
    (fun n => (c n).arg)
  rw [hwA] at hD
  rw [hwB] at hO1
  rw [hwS] at hO2
  rw [Mform_Pc_Pc hT0 hΦc, ← hwg]
  set D := ∑ n ∈ primeRange p.X, wcoef c n ^ 2 * Aminus F.Phi p.T (Real.log n) (Real.log n)
    with hDdef
  set O1 := ∑ n ∈ primeRange p.X, ∑ m ∈ primeRange p.X,
    (if n = m then (0:ℝ) else wcoef c n * wcoef c m
      * AminusPh F.Phi p.T (Real.log n) (Real.log m) (c n).arg (c m).arg) with hO1def
  set O2 := ∑ n ∈ primeRange p.X, ∑ m ∈ primeRange p.X,
    wcoef c n * wcoef c m
      * AplusPh F.Phi p.T (Real.log n) (Real.log m) (c n).arg (c m).arg with hO2def
  set G := ∑ n ∈ primeRange p.X, wcoef c n ^ 2 * F.g (Real.log n) with hGdef
  have hk : (0:ℝ) < 1 / (2 * π ^ 2) := by positivity
  -- 𝒟: rescale diag_estimate_w by 1/π²
  have bD : |1 / (2 * π ^ 2) * D - p.T / π * G| ≤ 1 / (2 * π ^ 2) * (8 + 8 * cϱ) * p.L * A := by
    have e : 1 / (2 * π ^ 2) * D - p.T / π * G = (1 / π ^ 2) * ((1 / 2) * D - π * p.T * G) := by
      field_simp
    rw [e, abs_mul, abs_of_pos (by positivity)]
    calc 1 / π ^ 2 * |1 / 2 * D - π * p.T * G|
        ≤ 1 / π ^ 2 * ((1 / 2) * A * ΛΦ) := mul_le_mul_of_nonneg_left hD (by positivity)
      _ ≤ 1 / π ^ 2 * ((1 / 2) * A * ((8 + 8 * cϱ) * p.L)) := by
          apply mul_le_mul_of_nonneg_left _ (by positivity)
          exact mul_le_mul_of_nonneg_left hΛΦle (by positivity)
      _ = 1 / (2 * π ^ 2) * (8 + 8 * cϱ) * p.L * A := by
          field_simp
  have bO1 : |1 / (2 * π ^ 2) * O1| ≤ 1 / (2 * π ^ 2) * (32 * π) * C * p.L * B := by
    rw [abs_mul, abs_of_pos hk]
    calc 1 / (2 * π ^ 2) * |O1|
        ≤ 1 / (2 * π ^ 2) * (16 * C * W * B) := mul_le_mul_of_nonneg_left hO1 hk.le
      _ ≤ 1 / (2 * π ^ 2) * (16 * C * (2 * π * p.L) * B) := by
          apply mul_le_mul_of_nonneg_left _ hk.le
          apply mul_le_mul_of_nonneg_right _ hB0
          exact mul_le_mul_of_nonneg_left hWle (by positivity)
      _ = 1 / (2 * π ^ 2) * (32 * π) * C * p.L * B := by ring
  have bO2 : |1 / (2 * π ^ 2) * O2| ≤ 1 / (2 * π ^ 2) * (2 * π / Real.log 2) * p.L * S₁ ^ 2 := by
    rw [abs_mul, abs_of_pos hk]
    calc 1 / (2 * π ^ 2) * |O2|
        ≤ 1 / (2 * π ^ 2) * (W / Real.log 2 * S₁ ^ 2) := mul_le_mul_of_nonneg_left hO2 hk.le
      _ ≤ 1 / (2 * π ^ 2) * ((2 * π * p.L) / Real.log 2 * S₁ ^ 2) := by
          apply mul_le_mul_of_nonneg_left _ hk.le
          apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
          exact div_le_div_of_nonneg_right hWle hlog2.le
      _ = 1 / (2 * π ^ 2) * (2 * π / Real.log 2) * p.L * S₁ ^ 2 := by ring
  have split : 1 / (2 * π ^ 2) * (D + O1 + O2) - p.T / π * G
      = (1 / (2 * π ^ 2) * D - p.T / π * G) + 1 / (2 * π ^ 2) * O1 + 1 / (2 * π ^ 2) * O2 := by ring
  rw [split]
  calc |(1 / (2 * π ^ 2) * D - p.T / π * G) + 1 / (2 * π ^ 2) * O1 + 1 / (2 * π ^ 2) * O2|
      ≤ |1 / (2 * π ^ 2) * D - p.T / π * G| + |1 / (2 * π ^ 2) * O1| + |1 / (2 * π ^ 2) * O2| :=
        abs_add_three _ _ _
    _ ≤ 1 / (2 * π ^ 2) * (8 + 8 * cϱ) * p.L * A
        + 1 / (2 * π ^ 2) * (32 * π) * C * p.L * B
        + 1 / (2 * π ^ 2) * (2 * π / Real.log 2) * p.L * S₁ ^ 2 :=
        add_le_add (add_le_add bD bO1) bO2

/-- **[prop:PP] for P_c — PPInput-shaped form** (one constant KPP C cϱ; literally the body of
Zeta23.XiPrime.PPInput in Zeta23/XiPrime/PrimeSide/Concrete.lean with K := KPP C cϱ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f44380c7a4ec8099d45d329c081f43824d4a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
