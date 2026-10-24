# criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0d8669751a390466de32c317c48a92b32a33435",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd0b10c0-92a7-a2f4-1069-ab18cf53786f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28b80805-1457-4004-3901-5dabee14b35b",
  "kind": "theorem",
  "lexical_name": "criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy",
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
  "slug": "criticalsignedchebyshevintegral-eq-polereduceddiscrepancy--115303804a11e92b9a78fe89",
  "source": {
    "blob": "c0d8669751a390466de32c317c48a92b32a33435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115303804a11e92b9a78fe89569693a77eebc3e4769666c1ca08b85e2819dbf6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b80805-1457-4004-3901-5dabee14b35b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * poleReducedPrimitive A lowerEndpoint -
        ∑ n ∈ primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * poleReducedPrimitive A (Real.log n) +
      ∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t := by
  have hA0 : 0 < A := by linarith
  have hF := poleReducedPrimitive_contDiff A hA0
  have he : Continuous (fun t ↦ Real.exp t * poleReducedPrimitive A t) :=
    Real.continuous_exp.mul hF.continuous
  have he' : Continuous (fun t ↦ Real.exp t * deriv (poleReducedPrimitive A) t) :=
    Real.continuous_exp.mul hF.continuous_deriv_one
  have hi' : IntervalIntegrable
      (fun t ↦ chebyshevError (Real.exp t) * deriv (poleReducedPrimitive A) t)
      volume lowerEndpoint (2 * A) := by
    simpa only [chebyshevError, sub_mul] using
      (chebyshev_mul_deriv_intervalIntegrable (2 * A) (source_interval_order A hA)
        (poleReducedPrimitive A) hF).sub (he'.intervalIntegrable _ _)
  have hi : (∫ t in lowerEndpoint..2 * A,
      chebyshevError (Real.exp t) * poleReducedPrimitive A t) =
      (∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t) -
      ∫ t in lowerEndpoint..2 * A, Real.exp t * poleReducedPrimitive A t := by
    simp_rw [chebyshevError, sub_mul]
    rw [intervalIntegral.integral_sub (poleReduced_count_intervalIntegrable A hA)
      (he.intervalIntegrable _ _)]
  calc
    _ = ∫ t in lowerEndpoint..2 * A, chebyshevError (Real.exp t) *
        (deriv (poleReducedPrimitive A) t + poleReducedPrimitive A t) := by
      unfold criticalSignedChebyshevIntegral
      rw [← chebyshev_log_integral_eq_weight_integral A hA]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      rw [← sourceWeight_eq_criticalLogDerivative A t hA0,
        sourceWeight_eq_poleReducedPrimitive A t hA0]
    _ = _ := by
      simp_rw [mul_add]
      rw [intervalIntegral.integral_add hi' (poleReduced_error_intervalIntegrable A hA),
        chebyshev_prime_power_ibp (2 * A) (source_interval_order A hA)
          (poleReducedPrimitive A) hF,
        (poleReduced_upper_endpoints A hA0).2.2, mul_zero, hi]
      ring

/-- The finite step integral retains the upper G' boundary before it is removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d8669751a390466de32c317c48a92b32a33435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
