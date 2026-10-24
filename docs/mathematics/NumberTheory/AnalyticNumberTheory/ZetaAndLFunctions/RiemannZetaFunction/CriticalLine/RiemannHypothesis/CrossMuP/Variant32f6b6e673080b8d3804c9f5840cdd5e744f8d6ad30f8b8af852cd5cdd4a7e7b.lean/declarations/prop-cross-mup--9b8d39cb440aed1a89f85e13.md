# prop_cross_muP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b91d8da0f439e5f83a78f1470e7f57f02cb779c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ca4eb75-9410-d015-e1a3-5ab7a2366d3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b004a560-c05b-9eb1-dc6a-9823cc88f4dc",
  "kind": "theorem",
  "lexical_name": "prop_cross_muP",
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
  "slug": "prop-cross-mup--9b8d39cb440aed1a89f85e13",
  "source": {
    "blob": "b91d8da0f439e5f83a78f1470e7f57f02cb779c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b8d39cb440aed1a89f85e13f5c6350c0a799cbeb483962d6b4e5c52c7db9530",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b004a560-c05b-9eb1-dc6a-9823cc88f4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_cross_muP (hΓ : Zeta23.GammaFacts) (hcheb : Zeta23.ChebyshevMertens)
    (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |Mform F.Phi p.T Zeta23.mu (Zeta23.PX p.X)| ≤ C * (p.l * Real.sqrt p.X)) := by
  obtain ⟨T₁, hT₁⟩ := mu_abs_le_l hΓ
  obtain ⟨Cd, hCd⟩ := hΓ.deriv_bound
  obtain ⟨Cc, hCc⟩ := hcheb.cheb1c
  have hμ : ContDiff ℝ 1 Zeta23.mu := hΓ.smooth.of_le (by exact_mod_cast le_top)
  refine ⟨2 * (4 + |Cd|) * |Cc|, max T₁ (2 * π * Real.exp (|(2:ℝ)| / lam)), ?_⟩
  intro p F hplam hT hF
  have hT₁' : T₁ ≤ p.T := (le_max_left _ _).trans hT
  have hT2 : 2 * π * Real.exp (|(2:ℝ)| / p.lam) ≤ p.T := by rw [hplam]; exact (le_max_right _ _).trans hT
  have hlam0 : 0 < p.lam := hplam ▸ hlam.1
  have hT1 : 1 ≤ p.T := Setting.one_le_T (div_nonneg (abs_nonneg _) hlam0.le) hT2
  have hT0 : 0 ≤ p.T := by linarith
  have hl1 : 1 ≤ p.l := hF.one_le_l
  have hL := hF.L_pos
  have hX2 : 2 ≤ p.X := Setting.le_X_of_T hlam0 hT2
  have hlogX : Real.log p.X = p.L := by simp [Setting.X]
  -- sup bounds for μ, μ' on I
  have hB : ∀ τ ∈ Icc p.T (2 * p.T), |Zeta23.mu τ| ≤ p.l := hT₁ p hT₁'
  have hD : ∀ τ ∈ Icc p.T (2 * p.T), |deriv Zeta23.mu τ| ≤ |Cd| / p.T := by
    intro τ hτ
    have hτ1 : 1 ≤ |τ| := by rw [abs_of_nonneg (by linarith [hτ.1])]; linarith [hτ.1]
    refine (hCd τ hτ1).trans ?_
    rw [abs_of_nonneg (by linarith [hτ.1])]
    calc Cd / τ ≤ |Cd| / τ := div_le_div_of_nonneg_right (le_abs_self _) (by linarith [hτ.1])
      _ ≤ |Cd| / p.T := div_le_div_of_nonneg_left (abs_nonneg _) (by linarith) hτ.1
  -- the oscillatory bound at each frequency y_n, n ≥ 2
  set S : ℝ := ∫ x, F.Phi x ^ 2 with hSdef
  have hS : S ≤ 2 * π * p.L := hF.integral_Phi_sq_le
  have hS0 : 0 ≤ S := integral_nonneg fun x => sq_nonneg _
  set K : ℝ := (4 * p.l + |Cd| / p.T * p.T) * S with hKdef
  have hKeq : K = (4 * p.l + |Cd|) * S := by
    have hTne : p.T ≠ 0 := by linarith
    rw [hKdef, div_mul_cancel₀ _ hTne]
  have hK0 : 0 ≤ K := by rw [hKeq]; positivity
  have hosc : ∀ n ∈ primeRange p.X,
      |(-(1 / Real.pi) * acoef n) * Mform F.Phi p.T Zeta23.mu (fun t => Real.cos (t * ycoef n))|
        ≤ (1 / Real.pi) * K * (acoef n / ycoef n) := by
    intro n hn
    have ha0 : 0 ≤ acoef n := div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)
    rcases Nat.lt_or_ge n 2 with h2 | h2
    · -- n = 1: a_1 = 0
      have hn1 : n = 1 := by
        have : 0 < n := (Finset.mem_Ioc.mp hn).1
        omega
      subst hn1
      simp [acoef]
    · have hy : 0 < ycoef n := Real.log_pos (by exact_mod_cast h2)
      have hM := abs_Mform_cos_le hT0 hF.Phi_contDiff hF.Phi_sq_integrable hμ hB hD hy.ne'
      rw [abs_of_pos hy] at hM
      rw [abs_mul, abs_mul, abs_neg, abs_of_pos (by positivity : (0:ℝ) < 1 / Real.pi),
        abs_of_nonneg ha0]
      calc 1 / Real.pi * acoef n * |Mform F.Phi p.T Zeta23.mu fun t => Real.cos (t * ycoef n)|
          ≤ 1 / Real.pi * acoef n * (K / ycoef n) := by gcongr
        _ = 1 / Real.pi * K * (acoef n / ycoef n) := by ring
  -- sum over n
  rw [Mform_mu_PX_eq hF.Phi_contDiff.continuous hμ.continuous]
  refine (Finset.abs_sum_le_sum_abs _ _).trans ((Finset.sum_le_sum hosc).trans ?_)
  rw [← Finset.mul_sum]
  -- Σ a_n / y_n ≤ Cc √X / log X = Cc √X / L
  have hsum : ∑ n ∈ primeRange p.X, acoef n / ycoef n ≤ |Cc| * Real.sqrt p.X / p.L := by
    have h := hCc p.X hX2
    rw [hlogX] at h
    have e : ∑ n ∈ primeRange p.X, acoef n / ycoef n
        = ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Λ n : ℝ) / (Real.sqrt n * Real.log n) := by
      refine Finset.sum_congr rfl fun n _ => ?_
      simp only [acoef, ycoef, div_div]
    rw [e]
    refine h.trans ?_
    gcongr; exact le_abs_self _
  have hsum0 : 0 ≤ ∑ n ∈ primeRange p.X, acoef n / ycoef n :=
    Finset.sum_nonneg fun n _ => div_nonneg
      (div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _))
      (Real.log_natCast_nonneg _)
  calc 1 / Real.pi * K * ∑ n ∈ primeRange p.X, acoef n / ycoef n
      ≤ 1 / Real.pi * ((4 * p.l + |Cd|) * (2 * π * p.L)) * (|Cc| * Real.sqrt p.X / p.L) := by
        rw [hKeq]; gcongr
    _ = 2 * (4 * p.l + |Cd|) * |Cc| * Real.sqrt p.X := by field_simp
    _ ≤ 2 * ((4 + |Cd|) * p.l) * |Cc| * Real.sqrt p.X := by
        gcongr
        nlinarith [abs_nonneg Cd]
    _ = 2 * (4 + |Cd|) * |Cc| * (p.l * Real.sqrt p.X) := by ring

end CrossMuP

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CrossMuP/Variant32f6b6e673080b8d3804c9f5840cdd5e744f8d6ad30f8b8af852cd5cdd4a7e7b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91d8da0f439e5f83a78f1470e7f57f02cb779c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
