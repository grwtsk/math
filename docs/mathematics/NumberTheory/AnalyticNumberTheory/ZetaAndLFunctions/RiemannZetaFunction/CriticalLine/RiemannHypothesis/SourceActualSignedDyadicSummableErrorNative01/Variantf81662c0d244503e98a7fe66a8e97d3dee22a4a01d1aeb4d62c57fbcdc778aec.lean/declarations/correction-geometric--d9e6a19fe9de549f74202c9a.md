# correction_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83e26d3d-28f3-5249-636d-ed7d8d7ed183",
  "kind": "theorem",
  "lexical_name": "correction_geometric",
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
  "slug": "correction-geometric--d9e6a19fe9de549f74202c9a",
  "source": {
    "blob": "318209ded6891c78d6011ef82e84ed1990805184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 137,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative01/Variantf81662c0d244503e98a7fe66a8e97d3dee22a4a01d1aeb4d62c57fbcdc778aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9e6a19fe9de549f74202c9ab8ffca526a3d374db224134ae6c25d002e31cbaf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative01/Variantf81662c0d244503e98a7fe66a8e97d3dee22a4a01d1aeb4d62c57fbcdc778aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83e26d3d-28f3-5249-636d-ed7d8d7ed183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem correction_geometric {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0<K ∧ ∀ (A c R : ℝ) (k : ℕ),
      1 ≤ A → 1<c → c≤3/2 →
      (actualDyadicGoodHeightIndex A c k : ℝ) ≤ R →
      R ≤ (actualDyadicGoodHeightIndex A c k : ℝ)+1 →
      (∀ s : ℂ, (s.im=R ∨ s.im= -R) → 1/2≤s.re → s.re≤2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg*(Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3))^2) →
      ‖actualFiniteHorizontalCorrection A c R‖ ≤
        actualDyadicHorizontalCoefficient K c/A^7 *
          Real.exp (-((2*c-1)*A)/5) * (1/16 : ℝ)^k := by
  obtain ⟨K,hK,hb⟩ := actual_horizontal_completed_norm_le hCg
  refine ⟨K,hK,?_⟩
  intro A c R k hA hc hc2 hjR hRj hg
  have hi := actualDyadicGoodHeightIndex_bounds A c hA hc hc2 k
  have hRp : 0<R := by have hj7 : (7 : ℝ) ≤ actualDyadicGoodHeightIndex A c k := by
                        exact_mod_cast hi.1
                      linarith
  have hZ := source_normalization_pos A hA
  have hzl := ActualBumpHorizontalStripBudget.actualBumpNormalization_lower A hA
  have hzinv : 1/sourceNormalization A ≤ (109395/4096 : ℝ) := by
    rw [div_le_iff₀ hZ]
    nlinarith
  let B : ℝ := Real.log 11+Real.log 2+2/5
  let v : ℝ := (2*c-1)*A/5
  have hlog0 : 0 ≤ Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3) :=
    Real.log_nonneg (by have hj7 : (7 : ℝ) ≤ actualDyadicGoodHeightIndex A c k := by
                           exact_mod_cast hi.1
                       linarith)
  have hlogsq := pow_le_pow_left₀ hlog0 hi.2.2 2
  have hrad : (2 : ℝ)^k*Real.exp v ≤ R := by
    simpa only [actualBumpMovingHeight] using hi.2.1.trans hjR
  have hrad6 := pow_le_pow_left₀ (by positivity : 0 ≤ (2 : ℝ)^k*Real.exp v) hrad 6
  have hquot : Real.exp ((2*c-1)*A) / R^6 ≤
      Real.exp (-v) / ((2 : ℝ)^k)^6 := by
    have he : Real.exp ((2*c-1)*A) / ((2 : ℝ)^k*Real.exp v)^6 =
        Real.exp (-v) / ((2 : ℝ)^k)^6 := by
      rw [mul_pow, ← Real.exp_nat_mul]
      dsimp [v]
      rw [div_mul_eq_div_div, ← Real.exp_sub]
      congr 1
      ring
    exact (div_le_div_of_nonneg_left (Real.exp_pos _).le (by positivity) hrad6).trans_eq he
  have hpow : ((2 : ℝ)^k)^2 / ((2 : ℝ)^k)^6 = (1/16 : ℝ)^k := by
    rw [← pow_mul, ← pow_mul, show k*6=k*2+k*4 by omega, pow_add]
    field_simp
    rw [← mul_pow]
    norm_num
  have hcst : 0 ≤ (2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*K/A^9 := by positivity
  let D := actualHorizontalSourceConstant K c * B^2/A^7 *
    Real.exp (-v) * (1/16 : ℝ)^k
  have hline (y : ℝ) (hy : y=R ∨ y= -R) :
      ‖actualCompletedHorizontalIntegral A c y‖ ≤ D := by
    calc
      _ ≤ _ := hb A c R y (actualDyadicGoodHeightIndex A c k) hA hc hc2
        hi.1 hjR hRj hg hy
      _ = ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*K/A^9) *
        (1/sourceNormalization A) *
        (Real.log ((actualDyadicGoodHeightIndex A c k : ℝ)+3))^2 *
        (Real.exp ((2*c-1)*A)/R^6) := by ring
      _ ≤ ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*K/A^9) *
        (109395/4096) * (A*B*(2 : ℝ)^k)^2 *
        (Real.exp (-v)/((2 : ℝ)^k)^6) := by
          exact mul_le_mul (mul_le_mul
            (mul_le_mul_of_nonneg_left hzinv hcst) hlogsq
            (by positivity) (by positivity)) hquot (by positivity) (by positivity)
      _ = D := by
        dsimp [D]
        unfold actualHorizontalSourceConstant
        rw [mul_pow, mul_pow]
        have hAp : A ≠ 0 := by linarith
        have hpp : ((2 : ℝ)^k)^6 ≠ 0 := by positivity
        have hh := hpow
        field_simp at hh ⊢
        nlinarith [hh]
  have hh := correction_bound A c R D hA hline
  convert hh using 1
  dsimp [D,actualDyadicHorizontalCoefficient,B,v]
  ring

/-- Each genuine selected horizontal error has geometric decay with an explicit A⁻⁷ factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative01/Variantf81662c0d244503e98a7fe66a8e97d3dee22a4a01d1aeb4d62c57fbcdc778aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative01/Variantf81662c0d244503e98a7fe66a8e97d3dee22a4a01d1aeb4d62c57fbcdc778aec.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318209ded6891c78d6011ef82e84ed1990805184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
