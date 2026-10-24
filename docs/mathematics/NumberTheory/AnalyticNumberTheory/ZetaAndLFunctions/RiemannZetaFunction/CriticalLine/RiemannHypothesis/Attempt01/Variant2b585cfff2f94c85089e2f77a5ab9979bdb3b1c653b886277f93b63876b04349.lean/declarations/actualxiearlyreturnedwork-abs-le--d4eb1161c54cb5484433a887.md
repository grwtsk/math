# actualXiEarlyReturnedWork_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b488c6a8-9fdc-73ed-5f50-73c113181c0a",
  "kind": "theorem",
  "lexical_name": "actualXiEarlyReturnedWork_abs_le",
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
  "slug": "actualxiearlyreturnedwork-abs-le--d4eb1161c54cb5484433a887",
  "source": {
    "blob": "a2b808ed3ff2ee7164389dde4bcd9d0e3e9c91d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2b585cfff2f94c85089e2f77a5ab9979bdb3b1c653b886277f93b63876b04349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4eb1161c54cb5484433a8872e278188a7a6e964301d1f383b3bfaf6e77f3bbe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2b585cfff2f94c85089e2f77a5ab9979bdb3b1c653b886277f93b63876b04349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b488c6a8-9fdc-73ed-5f50-73c113181c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiEarlyReturnedWork_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualXiEarlyReturnedWork A| ≤ actualXiEarlyReturnedBudget A := by
  have hp : 0 < A := by linarith
  have hord := actualXiEarlyReturned_split_orders hA
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  let c : ℝ := actualDampedXiFiniteBudget *
    (67 / A ^ 4 + 5 / A ^ 2) * (2 * Real.log A)
  have hc : 0 ≤ c := by
    unfold c actualDampedXiFiniteBudget
      RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
    positivity
  have hi := actualXiReturnedWork_intervalIntegrable hA hord.1
  have hie : IntervalIntegrable (fun t : ℝ => c * Real.exp (t / 2)) volume
      (Real.log 7) (2 * Real.log A) :=
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _).const_mul c
  have hmono : (∫ t in Real.log 7..2 * Real.log A,
      |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t|) ≤
      ∫ t in Real.log 7..2 * Real.log A, c * Real.exp (t / 2) := by
    apply intervalIntegral.integral_mono_on hord.1 hi.abs hie
    intro t ht
    have ht0 : 0 ≤ t := ha.trans ht.1
    have hJ := actualDampedXiFinitePrimitive_abs_le_budget ht.1
    have hD := actualXiReturnDensity_origin_abs_le (t := t) hA
    rw [abs_of_nonneg ht0] at hD
    rw [abs_mul]
    calc
      _ ≤ actualDampedXiFiniteBudget *
          (Real.exp (t / 2) * (67 / A ^ 4 + 5 / A ^ 2) * t) :=
        mul_le_mul hJ hD (abs_nonneg _) (by
          unfold actualDampedXiFiniteBudget
            RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
          positivity)
      _ ≤ actualDampedXiFiniteBudget *
          (Real.exp (t / 2) * (67 / A ^ 4 + 5 / A ^ 2) * (2 * Real.log A)) := by
        gcongr
        exact ht.2
      _ = c * Real.exp (t / 2) := by dsimp only [c]; ring
  have hex : Real.exp ((2 * Real.log A) / 2) = A := by
    rw [show (2 * Real.log A) / 2 = Real.log A by ring, Real.exp_log hp]
  calc
    |actualXiEarlyReturnedWork A| ≤ ∫ t in Real.log 7..2 * Real.log A,
        |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t| :=
      intervalIntegral.abs_integral_le_integral_abs hord.1
    _ ≤ _ := hmono
    _ = c * (2 * (A - Real.exp (Real.log 7 / 2))) := by
      rw [intervalIntegral.integral_const_mul, integral_half_exp, hex]
    _ ≤ c * (2 * A) := mul_le_mul_of_nonneg_left (by
      linarith [Real.exp_pos (Real.log 7 / 2)]) hc
    _ = actualXiEarlyReturnedBudget A := by
      unfold c actualXiEarlyReturnedBudget
      field_simp
      ring

/-- This is a genuine full-tail partition, retaining the signed later integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2b585cfff2f94c85089e2f77a5ab9979bdb3b1c653b886277f93b63876b04349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2b585cfff2f94c85089e2f77a5ab9979bdb3b1c653b886277f93b63876b04349.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b808ed3ff2ee7164389dde4bcd9d0e3e9c91d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
