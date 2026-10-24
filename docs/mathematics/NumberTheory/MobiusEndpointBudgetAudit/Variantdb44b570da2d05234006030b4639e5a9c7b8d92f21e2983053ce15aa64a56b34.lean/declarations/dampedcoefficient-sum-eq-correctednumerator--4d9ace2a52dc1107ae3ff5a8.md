# dampedCoefficient_sum_eq_correctedNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2cc0814-f50e-3808-0f0b-4c301733f03a",
  "kind": "theorem",
  "lexical_name": "dampedCoefficient_sum_eq_correctedNumerator",
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
  "slug": "dampedcoefficient-sum-eq-correctednumerator--4d9ace2a52dc1107ae3ff5a8",
  "source": {
    "blob": "f40c7d85b89cd94b87f10a0b45baf21ef90c8ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 160,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variantdb44b570da2d05234006030b4639e5a9c7b8d92f21e2983053ce15aa64a56b34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d9ace2a52dc1107ae3ff5a83928c81dd119173c95bfbbf179b703038771277e",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudgetAudit/Variantdb44b570da2d05234006030b4639e5a9c7b8d92f21e2983053ce15aa64a56b34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2cc0814-f50e-3808-0f0b-4c301733f03a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedCoefficient_sum_eq_correctedNumerator (X : ℕ) (ε : ℝ) (z : ℂ)
    (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      correctedNumerator X (z + (ε : ℂ)) := by
  have hX0 : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have ha : (∑ d ∈ Finset.Icc 1 X,
      ((ArithmeticFunction.moebius d : ℂ) * (Real.exp (-ε * Real.log (d : ℝ)) : ℂ)) *
        Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      dirichletNumerator X (z + (ε : ℂ)) := by
    apply Finset.sum_congr rfl
    intro d _
    rw [mul_assoc, damping_exp]
  have hb : (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
      (mobiusReciprocalSum X : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)) =
      (mobiusReciprocalSum X : ℂ) *
        Complex.exp ((1 / 2 - (z + (ε : ℂ))) * (Real.log (X : ℝ) : ℂ)) := by
    have hxexp : (X : ℂ) = Complex.exp (Real.log (X : ℝ) : ℂ) := by
      rw [← Complex.ofReal_exp, Real.exp_log hX0]
      simp
    calc
      _ = (mobiusReciprocalSum X : ℂ) * ((X : ℂ) *
          ((Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
            Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)))) := by ring
      _ = _ := by
        rw [damping_exp, hxexp, ← Complex.exp_add]
        congr 2
        ring
  have hform : (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      ∑ d ∈ Finset.Icc 1 X,
        (((ArithmeticFunction.moebius d : ℂ) * (Real.exp (-ε * Real.log (d : ℝ)) : ℂ)) *
          Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) -
        (if d = X then (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
          (mobiusReciprocalSum X : ℂ) *
            Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) else 0)) := by
    apply Finset.sum_congr rfl
    intro d _
    by_cases hd : d = X
    · simp [dampedCoefficient, hd, sub_mul]
    · simp [dampedCoefficient, hd]
  rw [hform, Finset.sum_sub_distrib, ha]
  have hsum : (∑ d ∈ Finset.Icc 1 X,
      if d = X then (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
        (mobiusReciprocalSum X : ℂ) *
          Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) else 0) =
      (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
        (mobiusReciprocalSum X : ℂ) *
          Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)) := by simp [hX]
  rw [hsum, hb]
  rfl

end
end MobiusEndpointBudgetScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print MobiusEndpointBudgetScratch.reciprocal_abs_le_one_add_log
#print axioms MobiusEndpointBudgetScratch.reciprocal_abs_le_one_add_log
#print MobiusEndpointBudgetScratch.correctedNumerator_half_add_norm_le
#print axioms MobiusEndpointBudgetScratch.correctedNumerator_half_add_norm_le
#print MobiusEndpointBudgetScratch.dampedCoefficient
#print axioms MobiusEndpointBudgetScratch.dampedCoefficient
#print MobiusEndpointBudgetScratch.dampedCoefficient_abs_sum_le
#print axioms MobiusEndpointBudgetScratch.dampedCoefficient_abs_sum_le
#print MobiusEndpointBudgetScratch.dampedCoefficient_sum_eq_correctedNumerator
#print axioms MobiusEndpointBudgetScratch.dampedCoefficient_sum_eq_correctedNumerator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudgetAudit/Variantdb44b570da2d05234006030b4639e5a9c7b8d92f21e2983053ce15aa64a56b34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variantdb44b570da2d05234006030b4639e5a9c7b8d92f21e2983053ce15aa64a56b34.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40c7d85b89cd94b87f10a0b45baf21ef90c8ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
