# forwardHalfKernel_interval_eq_tail_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0beb0c08-a4cf-c6e1-a54d-26ee314fa117",
  "kind": "theorem",
  "lexical_name": "forwardHalfKernel_interval_eq_tail_pairing",
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
  "slug": "forwardhalfkernel-interval-eq-tail-pairing--8e212d55c4fc85af393a630f",
  "source": {
    "blob": "1882ecf6755e0f8fbd42e48a4c4d2fb75705848c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e212d55c4fc85af393a630f8fb61c22dd2f62c9dd61ea7434f3d6af1d6040f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0beb0c08-a4cf-c6e1-a54d-26ee314fa117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardHalfKernel_interval_eq_tail_pairing {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ t in 0..2*A, forwardHalfKernel A (t,x)) =
      normalizedTest explicitSecondDerivative A x * (Real.exp (x/2) *
        ∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) := by
  by_cases hx : normalizedTest explicitSecondDerivative A x = 0
  · simp [forwardHalfKernel, hx]
  have hxx : |x| < A := by
    by_contra h
    exact hx (normalizedTest_zero_of_le_abs A x hA (le_of_not_gt h))
  have hcut : (∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) =
      ∫ u in Ioc x (x+2*A), Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u := by
    rw [integral_Ici_eq_integral_Ioi]
    apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (fun _ hu ↦ hu.1)
    intro u hu
    have hup : x + 2*A < u := lt_of_not_ge (fun hh ↦ hu.2 ⟨hu.1, hh⟩)
    have hux := (abs_lt.mp hxx).1
    rw [normalizedTest_zero_of_le_abs A u hA
      ((show A ≤ u by linarith).trans (le_abs_self u)), mul_zero]
  have hfactor : (fun t : ℝ ↦ forwardHalfKernel A (t,x)) =
      fun t : ℝ ↦ (normalizedTest explicitSecondDerivative A x * Real.exp (x/2)) *
        (Real.exp (-(x+t)/2) * normalizedTest explicitSecondDerivative A (x+t)) := by
    funext t
    have he : Real.exp (-t/2) = Real.exp (x/2) * Real.exp (-(x+t)/2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp only [forwardHalfKernel]
    rw [he]
    ring
  rw [hfactor, intervalIntegral.integral_const_mul]
  have htranslate := intervalIntegral.integral_comp_add_left
    (fun u : ℝ ↦ Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) x
    (a := (0 : ℝ)) (b := 2*A)
  rw [htranslate, add_zero, intervalIntegral.integral_of_le (by linarith : x ≤ x+2*A), ← hcut]
  ring

/-- Exact double-integral factorization of the actual negative half moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1882ecf6755e0f8fbd42e48a4c4d2fb75705848c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
