# contracted_lower_of_actual_primitive_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5615e07e-3be6-3399-1e00-b9d3cfb2e192",
  "kind": "theorem",
  "lexical_name": "contracted_lower_of_actual_primitive_bound",
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
  "slug": "contracted-lower-of-actual-primitive-bound--86b359ddd36205438e0abf93",
  "source": {
    "blob": "6819a889507352e97925539764c6cbd73e2a5f77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransportAttempt05/Variant2a78651711df4654922d9bc4c86f2f1768e461087a3f2cd9b5bad038491dbc87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b359ddd36205438e0abf931423f936ca1ac836d059b60f184b34f104c02da0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransportAttempt05/Variant2a78651711df4654922d9bc4c86f2f1768e461087a3f2cd9b5bad038491dbc87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5615e07e-3be6-3399-1e00-b9d3cfb2e192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contracted_lower_of_actual_primitive_bound (H A : ℝ) (hH : 0 ≤ H) (hA : 91 ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    -((11 / 2 : ℝ) * H) ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hp : 0 < A := by linarith
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hd : IntervalIntegrable (deriv (fullXiLogWeight A)) volume (Real.log 2) (2 * A) :=
    (actual_fullXiLogWeight_deriv_continuous hp).intervalIntegrable (Real.log 2) (2 * A)
  have hf := (actualXiLogPrimitive_absolutelyContinuous (2 * A)).continuousOn
  have hprod := hd.continuousOn_mul hf
  have hb : (∫ t in Real.log 2..2 * A,
      |actualXiLogPrimitive t * deriv (fullXiLogWeight A) t|) ≤
      ∫ t in Real.log 2..2 * A, H * |deriv (fullXiLogWeight A) t| := by
    apply intervalIntegral.integral_mono_on hL hprod.abs (hd.abs.const_mul H)
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right (hF t ht.1) (abs_nonneg _)
  rw [intervalIntegral.integral_const_mul] at hb
  have hn := intervalIntegral.abs_integral_le_integral_abs
    (f := fun t => actualXiLogPrimitive t * deriv (fullXiLogWeight A) t) hL
  have hc := actual_fullXi_signed_primitive_derivative_cost hA
  rw [actual_contracted_pairing_eq_primitive_IBP A (by linarith)]
  nlinarith [abs_le.mp hn]

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransportAttempt05/Variant2a78651711df4654922d9bc4c86f2f1768e461087a3f2cd9b5bad038491dbc87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransportAttempt05/Variant2a78651711df4654922d9bc4c86f2f1768e461087a3f2cd9b5bad038491dbc87.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6819a889507352e97925539764c6cbd73e2a5f77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
