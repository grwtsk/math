# actualMertensResidual_stretched_scaled_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68a10e80-9dc7-2e6e-8632-bc4a6fdf30c1",
  "kind": "theorem",
  "lexical_name": "actualMertensResidual_stretched_scaled_bound",
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
  "slug": "actualmertensresidual-stretched-scaled-bound--338ae7b98439c9c30bf7c3f8",
  "source": {
    "blob": "f1a4f042161474ae5aec655a368e334ea0cf1aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 398,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:338ae7b98439c9c30bf7c3f8fe04ff7a3b0c704611cb2dc16d8441d78e29d323",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68a10e80-9dc7-2e6e-8632-bc4a6fdf30c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMertensResidual_stretched_scaled_bound :
    ∃ C c R0 : ℝ, 0 ≤ C ∧ 0 < c ∧ 1 ≤ R0 ∧ ∀ A : ℝ, R0 ≤ A →
      |A ^ 9 * Real.exp (-A) * mertensResidual A| ≤
        C * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨C,c,Rq,hC,hc,hRq,hq⟩ := actualSourceQuadraticValue_stretched_scaled_bound
  have hp : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2)) atTop (𝓝 0) := by
    convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (9 : ℕ) (1 / 2)
      (by norm_num) using 1
    funext A
    rw [Real.rpow_natCast]
    congr 2
    ring
  obtain ⟨Rp,hRp⟩ := eventually_atTop.mp
    ((tendsto_order.mp hp).2 1 (by norm_num : (0 : ℝ) < 1))
  let c1 : ℝ := min c (1 / 2)
  have hc1 : 0 < c1 := lt_min hc (by norm_num)
  have hc1c : c1 ≤ c := min_le_left _ _
  have hc1h : c1 ≤ 1 / 2 := min_le_right _ _
  let M : ℝ := |archimedeanMultiplier 0| + 18 * (162826 / 7623 : ℝ)
  have hM : 0 ≤ M := by dsimp [M]; positivity
  refine ⟨(M + C) / 2,c1,max Rq Rp,by positivity,hc1,hRq.trans (le_max_left _ _),?_⟩
  intro A hA
  have hAq : Rq ≤ A := (le_max_left _ _).trans hA
  have hA1 : 1 ≤ A := hRq.trans hAq
  have hAp : 0 < A := by linarith
  let x : ℝ := A ^ (1 / 10 : ℝ)
  have hx : 0 ≤ x := Real.rpow_nonneg hAp.le _
  have hxA : x ≤ A := Real.rpow_le_self_of_one_le hA1 (by norm_num)
  have hpoly : A ^ 9 * Real.exp (-A / 2) ≤ 1 :=
    (hRp A ((le_max_right _ _).trans hA)).le
  have hscale : A ^ 9 * Real.exp (-A) ≤ Real.exp (-A / 2) := by
    calc
      _ = (A ^ 9 * Real.exp (-A / 2)) * Real.exp (-A / 2) := by
        rw [mul_assoc,← Real.exp_add]
        congr 1
        ring
      _ ≤ 1 * Real.exp (-A / 2) :=
        mul_le_mul_of_nonneg_right hpoly (Real.exp_pos _).le
      _ = _ := one_mul _
  have hearch : Real.exp (-A / 2) ≤ Real.exp (-c1 * x) := by
    apply Real.exp_le_exp.mpr
    have hb : c1 * x ≤ A / 2 :=
      (mul_le_mul_of_nonneg_left hxA hc1.le).trans
        (by nlinarith [mul_le_mul_of_nonneg_right hc1h hAp.le])
    linarith
  have heq : Real.exp (-c * x) ≤ Real.exp (-c1 * x) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  have harch : |archimedeanValue explicitSecondDerivative A| ≤ M := by
    have hlo := (actual_archimedean_two_sided hA1).1
    have hhi := actual_archimedean_uniform_upper hA1
    have hlm := neg_abs_le (archimedeanMultiplier 0)
    have hum := le_abs_self (archimedeanMultiplier 0)
    apply abs_le.mpr
    dsimp [M]
    constructor <;> linarith
  have has : |A ^ 9 * Real.exp (-A) * archimedeanValue explicitSecondDerivative A| ≤
      M * Real.exp (-c1 * x) := by
    rw [abs_mul,abs_of_nonneg (by positivity : 0 ≤ A ^ 9 * Real.exp (-A))]
    calc
      _ ≤ (A ^ 9 * Real.exp (-A)) * M :=
        mul_le_mul_of_nonneg_left harch (by positivity)
      _ ≤ Real.exp (-A / 2) * M := mul_le_mul_of_nonneg_right hscale hM
      _ ≤ Real.exp (-c1 * x) * M := mul_le_mul_of_nonneg_right hearch hM
      _ = _ := mul_comm _ _
  have hqs : |A ^ 9 * Real.exp (-A) * sourceQuadraticValue explicitSecondDerivative A| ≤
      C * Real.exp (-c1 * x) :=
    (hq A hAq).trans (mul_le_mul_of_nonneg_left heq hC)
  have hid : A ^ 9 * Real.exp (-A) * mertensResidual A =
      (A ^ 9 * Real.exp (-A) * archimedeanValue explicitSecondDerivative A -
        A ^ 9 * Real.exp (-A) * sourceQuadraticValue explicitSecondDerivative A) / 2 := by
    rw [sourceQuadraticValue,
      EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA1,
      ← mertensResidual_eq_closedPrimeMoment A hA1]
    ring
  rw [hid,abs_div,abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ (|A ^ 9 * Real.exp (-A) * archimedeanValue explicitSecondDerivative A| +
        |A ^ 9 * Real.exp (-A) * sourceQuadraticValue explicitSecondDerivative A|) / 2 :=
      div_le_div_of_nonneg_right (abs_sub _ _) (by norm_num)
    _ ≤ (M * Real.exp (-c1 * x) + C * Real.exp (-c1 * x)) / 2 := by gcongr
    _ = _ := by ring

/-- This is an unconditional estimate for every sufficiently large real
scale. Its growing envelope is not a uniform residual cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1a4f042161474ae5aec655a368e334ea0cf1aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
