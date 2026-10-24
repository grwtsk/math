# omegaWeight_strip_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e12a688f-9560-166b-e91d-87e7eacd603f",
  "kind": "theorem",
  "lexical_name": "omegaWeight_strip_lower",
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
  "slug": "omegaweight-strip-lower--51b35d0463a180a34d95b2fa",
  "source": {
    "blob": "ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51b35d0463a180a34d95b2facb2531af5615a78620d98ac31c0d285c1df1833f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e12a688f-9560-166b-e91d-87e7eacd603f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omegaWeight_strip_lower (T u : ℝ) (m d : ℕ) (hT : 2 ≤ T)
    (hu : 0 < u) (hu1 : u ≤ 1 / 2) (hm : T ^ 2 ≤ (m : ℝ)) (hd : T ^ 2 ≤ (d : ℝ))
    (hlog : Real.log ((m * d : ℕ) : ℝ) = 2 * T - u) :
    T ^ 8 * u ^ 6 / 5760 ≤ omegaWeight T m d 1 := by
  have hT0 : 0 ≤ T := by linarith
  have hl : lowerScale (Real.log ((m * d * 1 : ℕ) : ℝ)) = T - u / 2 := by
    rw [Nat.mul_one, hlog]
    unfold lowerScale
    rw [max_eq_right (by linarith)]
    ring
  have hup : upperScale T m d = T := by
    unfold upperScale
    exact min_eq_left (le_min ((Real.le_sqrt hT0 (Nat.cast_nonneg m)).2 hm)
      ((Real.le_sqrt hT0 (Nat.cast_nonneg d)).2 hd))
  have hl1 : 1 ≤ T - u / 2 := by linarith
  have hlT : T - u / 2 ≤ T := by linarith
  have hsrc := integral_weighted_correlation (2 * T - u) (T - u / 2) T hl1 hlT
    (by linarith) (by linarith)
  have homega : omegaWeight T m d 1 =
      ∫ A in (T - u / 2)..T,
        scaleWeight A * sourceCorrelation explicitSecondDerivative A (2 * T - u) := by
    rw [omegaWeight, hl, hup, if_pos (by linarith), Nat.mul_one, hlog]
    exact hsrc.symm
  rw [homega]
  have hpoly : Continuous (fun A ↦ scalePolynomial A (2 * T - u)) := by
    unfold scalePolynomial; fun_prop
  have hsource : IntervalIntegrable (fun A ↦
      scaleWeight A * sourceCorrelation explicitSecondDerivative A (2 * T - u))
      volume (T - u / 2) T := by
    apply (hpoly.intervalIntegrable _ _).congr
    intro A hA
    rw [uIoc_of_le hlT] at hA
    exact scalePolynomial_eq_source A _ (by linarith [hA.1]) (by linarith) (by linarith [hA.1])
  have hi := intervalIntegral.integral_mono_on (μ := volume) hlT
    ((by fun_prop : Continuous (fun A : ℝ ↦
      (8 / 15) * (T / 2) ^ 8 * (2 * A - (2 * T - u)) ^ 5)).intervalIntegrable _ _) hsource
    (fun A hA ↦ by
      have hv0 : 0 ≤ 2 * A - (2 * T - u) := by linarith [hA.1]
      have hv1 : 2 * A - (2 * T - u) ≤ 1 / 2 := by linarith [hA.2]
      have hh := weighted_endpoint_lower A (2 * A - (2 * T - u)) (by linarith [hA.1]) hv0 hv1
      have he : 2 * A - (2 * A - (2 * T - u)) = 2 * T - u := by ring
      rw [he] at hh
      have hp : (T / 2) ^ 8 ≤ A ^ 8 := pow_le_pow_left₀ (by positivity) (by linarith [hA.1, hA.2]) _
      exact (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hp (by norm_num))
        (pow_nonneg hv0 _)).trans hh)
  have hint : (∫ A in (T - u / 2)..T, (2 * A - (2 * T - u)) ^ 5) = u ^ 6 / 12 := by
    have hc : Continuous (fun A : ℝ ↦ (2 * A - (2 * T - u)) ^ 5) := by fun_prop
    have hh := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (a := T - u / 2) (b := T) (f := fun A ↦ (2 * A - (2 * T - u)) ^ 6 / 12)
      (fun A _ ↦ by
        have hd := ((((hasDerivAt_id A).const_mul 2).sub_const (2 * T - u)).pow 6).div_const 12
        exact hd.congr_deriv (by dsimp; ring))
      (hc.intervalIntegrable _ _)
    convert hh using 1
    ring
  rw [intervalIntegral.integral_const_mul, hint] at hi
  convert hi using 1
  ring


/-- The complete plain-factor sum, with the unchanged finite scale windows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
