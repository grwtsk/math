# difference_tail_eq_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5779af2e-7581-c419-ec90-9650bff848c0",
  "kind": "theorem",
  "lexical_name": "difference_tail_eq_primitive",
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
  "slug": "difference-tail-eq-primitive--751d1bc1cdffec6feaafd1ba",
  "source": {
    "blob": "7e1969d3c754b4c2f1c3205b90c2a61e25240308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:751d1bc1cdffec6feaafd1baee30197560faa4e6d0a2d7b24c47f122a98653fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5779af2e-7581-c419-ec90-9650bff848c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem difference_tail_eq_primitive (A s : ℝ) (hA : 1 ≤ A) :
    (∫ r in Set.Ioi (0 : ℝ), Real.exp (r / 2) * correlationDifference A (s + r)) =
      correlationPrimitive A s - sourceCorrelation explicitSecondDerivative A s := by
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) * correlationDifference A t
  have hi : Integrable f := by
    simpa only [f, one_div_mul_eq_div] using (difference_moments_integrable A (1 / 2) hA).1
  have hz : (∫ t, f t) = 0 := (difference_two_moments_zero A hA).1
  have hl : (∫ t in Set.Ioi (-2 * A), f t) = 0 := by
    rw [setIntegral_eq_integral_of_forall_compl_eq_zero, hz]
    intro t ht
    have ht' : t ≤ -2 * A := le_of_not_gt ht
    have hd : deriv (sourceCorrelation explicitSecondDerivative A) t = 0 := by
      apply HasDerivWithinAt.deriv_eq_zero (s := Set.Iic t)
        ((hasDerivWithinAt_const t (Set.Iic t) (0 : ℝ)).congr_of_mem ?_ (le_refl t))
        (uniqueDiffWithinAt_Iic t)
      intro u hu
      have hu' : u ≤ t := hu
      exact CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A u
        (by linarith) (by have := neg_le_abs u; linarith)
    dsimp only [f, correlationDifference]
    rw [hd, CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A t
      (by linarith) (by have := neg_le_abs t; linarith)]
    ring
  have hsplit := intervalIntegral.integral_interval_add_Ioi
    (a := -2 * A) (b := s) hi.integrableOn hi.integrableOn
  rw [hl] at hsplit
  have he (r : ℝ) : Real.exp (r / 2) * correlationDifference A (s + r) =
      Real.exp (-s / 2) * f (s + r) := by
    dsimp only [f]
    rw [← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  simp_rw [he]
  rw [integral_const_mul, integral_shift_Ioi f s]
  have hp := difference_primitive_eq A s hA
  change Real.exp (-s / 2) * (∫ t in (-2 * A)..s, f t) = _ at hp
  linear_combination Real.exp (-s / 2) * hsplit - hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e1969d3c754b4c2f1c3205b90c2a61e25240308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
