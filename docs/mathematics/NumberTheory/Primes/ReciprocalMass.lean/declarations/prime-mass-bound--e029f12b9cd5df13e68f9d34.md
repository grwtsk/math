# prime_mass_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b78955b-7612-58ab-c695-8584015b0419",
  "kind": "theorem",
  "lexical_name": "prime_mass_bound",
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
  "slug": "prime-mass-bound--e029f12b9cd5df13e68f9d34",
  "source": {
    "blob": "4f20f7dc568798f47a70048e03ffdd4723f2b550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Prime/ReciprocalMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e029f12b9cd5df13e68f9d3441c323950e01a422d3fabef49861539f3d246e4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/ReciprocalMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b78955b-7612-58ab-c695-8584015b0419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prime_mass_bound {x : ℝ} (hx : 2 ≤ x) :
    (∑ p ∈ (Finset.Icc 0 ⌊x⌋₊).filter Nat.Prime, (p : ℝ)⁻¹) ≤
      log 4 * ((log 2)⁻¹ + log (log x) - log (log 2)) := by
  have hx1 : 1 < x := by linarith
  have hcont : ContinuousOn massDensity (Icc 2 x) := by
    unfold massDensity
    intro t ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    have hlt : log t ≠ 0 := (log_pos (by linarith [ht.1])).ne'
    exact ContinuousAt.continuousWithinAt (by fun_prop (disch := aesop))
  have hi : IntervalIntegrable massDensity volume 2 x := by
    rw [intervalIntegrable_iff_integrableOn_Icc_of_le hx]
    exact hcont.integrableOn_Icc
  have hint : (∫ t in (2 : ℝ)..x, massDensity t) = massPrimitive x - massPrimitive 2 :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t ht ↦ massPrimitive_deriv (by rw [uIcc_of_le hx] at ht; linarith [ht.1])) hi
  have hdcont : ContinuousOn (deriv massWeight) (Icc 2 x) := by
    apply ContinuousOn.congr (f := fun t : ℝ ↦ -(log t + 1) / (t * log t)^2)
    · intro t ht
      have ht0 : t ≠ 0 := by linarith [ht.1]
      have hlt : log t ≠ 0 := (log_pos (by linarith [ht.1])).ne'
      exact ContinuousAt.continuousWithinAt (by fun_prop (disch := aesop))
    · intro t ht
      exact (massWeight_deriv (x := t) (by linarith [ht.1])).deriv
  have htheta : IntervalIntegrable Chebyshev.theta volume 2 x :=
    Chebyshev.theta_mono.intervalIntegrable
  have hid : IntervalIntegrable (deriv massWeight) volume 2 x := by
    rw [intervalIntegrable_iff_integrableOn_Icc_of_le hx]
    exact hdcont.integrableOn_Icc
  have hprod : IntervalIntegrable (fun t ↦ -(deriv massWeight t * Chebyshev.theta t)) volume 2 x :=
    (htheta.mul_continuousOn (by simpa [uIcc_of_le hx] using hdcont)).neg.congr
      (fun t _ ↦ by change -(Chebyshev.theta t * deriv massWeight t) = _; ring)
  have hle : (∫ t in (2 : ℝ)..x, -(deriv massWeight t * Chebyshev.theta t)) ≤
      log 4 * (massPrimitive x - massPrimitive 2) := by
    rw [← hint, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_mono_on hx hprod (hi.const_mul _)
    intro t ht
    have ht1 : 1 < t := by linarith [ht.1]
    have ht0 : 0 < t := by linarith
    have hlt : 0 < log t := log_pos ht1
    rw [(massWeight_deriv ht1).deriv]
    have he : -(-(log t + 1) / (t * log t)^2 * Chebyshev.theta t) =
        ((log t + 1) / (t * log t)^2) * Chebyshev.theta t := by ring
    rw [he]
    calc
      _ ≤ ((log t + 1) / (t * log t)^2) * (log 4 * t) :=
        mul_le_mul_of_nonneg_left (Chebyshev.theta_le_log4_mul_x ht0.le) (by positivity)
      _ = log 4 * massDensity t := by unfold massDensity; field_simp
  have hend : massWeight x * Chebyshev.theta x ≤ log 4 * (log x)⁻¹ := by
    calc
      _ ≤ massWeight x * (log 4 * x) :=
        mul_le_mul_of_nonneg_left (Chebyshev.theta_le_log4_mul_x (by linarith)) (by unfold massWeight; have := log_pos hx1; positivity)
      _ = _ := by unfold massWeight; field_simp
  rw [prime_mass_abel hx]
  rw [intervalIntegral.integral_neg] at hle
  unfold massPrimitive at hle
  nlinarith

/-- Explicit coarse constants; the prime harmonic mass costs only log(1+T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/ReciprocalMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Prime/ReciprocalMass.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f20f7dc568798f47a70048e03ffdd4723f2b550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
