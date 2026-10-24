# chebyshev_prime_power_step_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32a3c483-bd7a-40f9-ab60-a5b1ac9d3a2c",
  "kind": "theorem",
  "lexical_name": "chebyshev_prime_power_step_integral",
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
  "slug": "chebyshev-prime-power-step-integral--d8b99499d2641cd92bbf13ae",
  "source": {
    "blob": "3a91d1da973c2c5f8d4fcac7ee8fee07fad01995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8b99499d2641cd92bbf13aeeeafb5548f7590b408604d067bcc0ce6caf74801",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a3c483-bd7a-40f9-ab60-a5b1ac9d3a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_prime_power_step_integral (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in lowerEndpoint..b, chebyshevPrimePower (Real.exp t) * deriv F t) =
      chebyshevPrimePower (Real.exp b) * F b -
        ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n * F (Real.log n) := by
  calc
    _ = ∫ t in lowerEndpoint..b, ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ t then deriv F t else 0) := by
      apply intervalIntegral.integral_congr
      intro t ht
      exact chebyshev_mul_eq_steps b t (deriv F t) ((uIcc_of_le hb ▸ ht).2)
    _ = ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (F b - F (Real.log n)) :=
      integral_finite_steps_deriv lowerEndpoint b (primePowerInventory b)
        (fun n ↦ Real.log n) ArithmeticFunction.vonMangoldt
        (fun n hn ↦ inventory_log_bounds b n hn) F hF
    _ = _ := by
      simp_rw [mul_sub]
      rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
      rfl

/-- Finite integration by parts for the source arithmetic error. Both interval
boundaries are retained, and the complete inventory includes the prime-two atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a91d1da973c2c5f8d4fcac7ee8fee07fad01995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
