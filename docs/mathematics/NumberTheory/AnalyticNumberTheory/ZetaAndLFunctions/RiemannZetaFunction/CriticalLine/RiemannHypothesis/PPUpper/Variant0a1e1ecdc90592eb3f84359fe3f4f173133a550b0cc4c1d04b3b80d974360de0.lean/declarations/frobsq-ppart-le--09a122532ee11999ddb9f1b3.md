# frobSq_Ppart_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04992dae-b912-e913-f170-02e770fa4fba",
  "kind": "theorem",
  "lexical_name": "frobSq_Ppart_le",
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
  "slug": "frobsq-ppart-le--09a122532ee11999ddb9f1b3",
  "source": {
    "blob": "4e1f897bff9dc67770acc56558e22f32d6ce3b7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPUpper/Variant0a1e1ecdc90592eb3f84359fe3f4f173133a550b0cc4c1d04b3b80d974360de0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a122532ee11999ddb9f1b37c27c5a89722583864623ebec7f481d97480f154",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPUpper/Variant0a1e1ecdc90592eb3f84359fe3f4f173133a550b0cc4c1d04b3b80d974360de0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04992dae-b912-e913-f170-02e770fa4fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobSq_Ppart_le (hPP : PPInput) {C : ℝ} (hMV : Zeta23.MVHilbert C) (hC : 0 < C)
    (cϱ lam : ℝ) (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ K T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (e : ℕ → ℂ), p.lam = lam → T₀ ≤ p.T →
      LocalHypsCore cϱ p F → e 1 = 0 →
      ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Pc p.X e) p F k l ^ 2
        ≤ K * p.L ^ 2 * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X
            + p.L * S1 e p.X ^ 2 + p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2) := by
  obtain ⟨Kpp, hK⟩ := hPP C cϱ hMV hC
  obtain ⟨Ce, T₁, hCe⟩ := lem_ends_nu cϱ lam
  refine ⟨max (1 / π + max Kpp 0) (max Ce 0) + 1, max T₁ 1, fun p F e hplam hT hF he1 => ?_⟩
  have hT1 : 1 ≤ p.T := (le_max_right _ _).trans hT
  have hT₁ : T₁ ≤ p.T := (le_max_left _ _).trans hT
  have hL := hF.L_pos
  have hl1 := hF.one_le_l
  have hl0 : 0 ≤ p.l := by linarith
  have hS := S1_nonneg e p.X
  have hπ := Real.pi_pos
  have hπ3 := Real.pi_gt_three
  -- ends for ν = P_e
  set B := p.l + (1 / π) * S1 e p.X with hB
  have hlB : p.l ≤ B := by
    have : 0 ≤ (1 / π) * S1 e p.X := by positivity
    rw [hB]; linarith
  have hends := hCe p F B (Pc p.X e) hplam hT₁ hF (Pc_continuous p.X e) (nuBound_Pc' hl0 e) hlB
  -- PP for P_e
  have hpp := hK p F e hF hT1 he1
  have hg := sumW2g_le hF e
  -- sizes
  have h1 : 0 ≤ sumSqDivW e p.X := sumSqDivW_nonneg _ _
  have h2 : 0 ≤ sumSqW e p.X := sumSqW_nonneg _ _
  have hlog : 0 ≤ Real.log p.l := Real.log_nonneg hl1
  -- the abstract inequality: L² · (M + E) with M ≤ (T/π) L S + Kpp L (...), |E| ≤ Ce L l log l B²
  have hB2 : B ^ 2 ≤ (p.l + S1 e p.X) ^ 2 := by
    apply pow_le_pow_left₀ (by rw [hB]; positivity)
    rw [hB]
    have : (1 / π) * S1 e p.X ≤ S1 e p.X := by
      rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ hπ]; nlinarith
    linarith
  have key : (p.L)⁻¹ ^ 2 * ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Pc p.X e) p F k l ^ 2
      ≤ (1 / π + max Kpp 0) * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X
          + p.L * S1 e p.X ^ 2) + max Ce 0 * (p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2) := by
    have e1 := (abs_le.1 hends).2
    have e2 := (abs_le.1 hpp).2
    -- MtotalNu (Pc) p F = Mform F.Phi p.T Pc Pc
    have hM : MtotalNu (Pc p.X e) p F = Mform F.Phi p.T (Pc p.X e) (Pc p.X e) := rfl
    rw [hM] at e1
    have hx1 : 0 ≤ p.L * p.l * Real.log p.l * B ^ 2 := by positivity
    have hx2 : 0 ≤ p.L * (sumSqDivW e p.X + sumSqW e p.X + S1 e p.X ^ 2) := by positivity
    have hCe' : Ce * (p.L * p.l * Real.log p.l * B ^ 2)
        ≤ max Ce 0 * (p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2) := by
      calc Ce * (p.L * p.l * Real.log p.l * B ^ 2) ≤ max Ce 0 * (p.L * p.l * Real.log p.l * B ^ 2) :=
            mul_le_mul_of_nonneg_right (le_max_left _ _) hx1
        _ ≤ max Ce 0 * (p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2) := by
            gcongr
    have hK' : Kpp * p.L * (sumSqDivW e p.X + sumSqW e p.X + S1 e p.X ^ 2)
        ≤ max Kpp 0 * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X + p.L * S1 e p.X ^ 2) := by
      calc Kpp * p.L * (sumSqDivW e p.X + sumSqW e p.X + S1 e p.X ^ 2)
          ≤ max Kpp 0 * (p.L * (sumSqDivW e p.X + sumSqW e p.X + S1 e p.X ^ 2)) := by
            rw [mul_assoc]; exact mul_le_mul_of_nonneg_right (le_max_left _ _) hx2
        _ ≤ max Kpp 0 * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X + p.L * S1 e p.X ^ 2) := by
            apply mul_le_mul_of_nonneg_left _ (le_max_right _ _)
            nlinarith [mul_nonneg hL.le h1]
    have hmain : p.T / π * sumW2g e p.X F.g ≤ (1 / π) * (p.T * p.L * sumSqDivW e p.X) := by
      have : p.T / π * sumW2g e p.X F.g ≤ p.T / π * (p.L * sumSqDivW e p.X) :=
        mul_le_mul_of_nonneg_left hg (by positivity)
      refine this.trans (le_of_eq ?_); ring
    have hmain' : (1 / π) * (p.T * p.L * sumSqDivW e p.X)
        ≤ (1 / π) * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X + p.L * S1 e p.X ^ 2) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      nlinarith [mul_nonneg hL.le h2, mul_nonneg hL.le (sq_nonneg (S1 e p.X))]
    linarith [e1, e2, hmain, hmain', hK', hCe']
  have hfin : ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Pc p.X e) p F k l ^ 2
      = p.L ^ 2 * ((p.L)⁻¹ ^ 2 * ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Pc p.X e) p F k l ^ 2) := by
    field_simp
  rw [hfin]
  have hbr : 0 ≤ p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X
      + p.L * S1 e p.X ^ 2 + p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2 := by positivity
  have hm1 : 0 ≤ 1 / π + max Kpp 0 := by positivity
  have hm2 : 0 ≤ max Ce 0 := le_max_right _ _
  calc p.L ^ 2 * ((p.L)⁻¹ ^ 2 * ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Pc p.X e) p F k l ^ 2)
      ≤ p.L ^ 2 * ((1 / π + max Kpp 0) * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X
          + p.L * S1 e p.X ^ 2) + max Ce 0 * (p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2)) :=
        mul_le_mul_of_nonneg_left key (sq_nonneg _)
    _ ≤ (max (1 / π + max Kpp 0) (max Ce 0) + 1) * p.L ^ 2 * (p.T * p.L * sumSqDivW e p.X
          + p.L * sumSqW e p.X + p.L * S1 e p.X ^ 2
          + p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2) := by
        have hA : 0 ≤ p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X + p.L * S1 e p.X ^ 2 := by
          positivity
        have hE : 0 ≤ p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2 := by positivity
        have hmax1 : 1 / π + max Kpp 0 ≤ max (1 / π + max Kpp 0) (max Ce 0) + 1 := by
          linarith [le_max_left (1 / π + max Kpp 0) (max Ce 0)]
        have hmax2 : max Ce 0 ≤ max (1 / π + max Kpp 0) (max Ce 0) + 1 := by
          linarith [le_max_right (1 / π + max Kpp 0) (max Ce 0)]
        have hL2 : 0 ≤ p.L ^ 2 := sq_nonneg _
        nlinarith [mul_le_mul_of_nonneg_right hmax1 hA, mul_le_mul_of_nonneg_right hmax2 hE,
          mul_nonneg hL2 hA, mul_nonneg hL2 hE]

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPUpper/Variant0a1e1ecdc90592eb3f84359fe3f4f173133a550b0cc4c1d04b3b80d974360de0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPUpper/Variant0a1e1ecdc90592eb3f84359fe3f4f173133a550b0cc4c1d04b3b80d974360de0.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1f897bff9dc67770acc56558e22f32d6ce3b7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
