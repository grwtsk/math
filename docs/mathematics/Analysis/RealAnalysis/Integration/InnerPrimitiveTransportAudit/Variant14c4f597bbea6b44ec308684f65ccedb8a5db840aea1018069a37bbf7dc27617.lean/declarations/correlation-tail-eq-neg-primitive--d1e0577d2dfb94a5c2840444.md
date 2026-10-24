# correlation_tail_eq_neg_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7813608c-b348-edf8-afa8-0694f5df1ce6",
  "kind": "theorem",
  "lexical_name": "correlation_tail_eq_neg_primitive",
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
  "slug": "correlation-tail-eq-neg-primitive--d1e0577d2dfb94a5c2840444",
  "source": {
    "blob": "ac0030c693ce7a8ceba91bc5df60aa3795bd08e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variant14c4f597bbea6b44ec308684f65ccedb8a5db840aea1018069a37bbf7dc27617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1e0577d2dfb94a5c284044455c992d96623bce858af867e6db72afa867093ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variant14c4f597bbea6b44ec308684f65ccedb8a5db840aea1018069a37bbf7dc27617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7813608c-b348-edf8-afa8-0694f5df1ce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_tail_eq_neg_primitive (A s : ℝ) (hA : 1 ≤ A) :
    (∫ r in Ioi (0 : ℝ), Real.exp (r / 2) *
      sourceCorrelation explicitSecondDerivative A (s + r)) = -correlationPrimitive A s := by
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  have hi : Integrable f :=
    ((Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      (sourceCorrelation_contDiff A (by linarith)).continuous).integrable_of_hasCompactSupport
      (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left
  have hz : (∫ t, f t) = 0 := by
    simpa only [f, one_div_mul_eq_div] using full_correlation_moment_zero A hA
  have hl : (∫ t in Ioi (-2 * A), f t) = 0 := by
    rw [setIntegral_eq_integral_of_forall_compl_eq_zero, hz]
    intro t ht
    have ht' : t ≤ -2 * A := le_of_not_gt ht
    dsimp only [f]
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
      (by have := neg_le_abs t; linarith), mul_zero]
  have hsplit := intervalIntegral.integral_interval_add_Ioi
    (a := -2 * A) (b := s) hi.integrableOn hi.integrableOn
  rw [hl] at hsplit
  have he (r : ℝ) : Real.exp (r / 2) *
      sourceCorrelation explicitSecondDerivative A (s + r) =
      Real.exp (-s / 2) * f (s + r) := by
    dsimp only [f]
    rw [← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  simp_rw [he]
  rw [integral_const_mul, integral_shift_Ioi f s]
  dsimp only [correlationPrimitive]
  change Real.exp (-s / 2) * (∫ t in Ioi s, f t) =
    -(Real.exp (-s / 2) * ∫ t in (-2 * A)..s, f t)
  linear_combination Real.exp (-s / 2) * hsplit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variant14c4f597bbea6b44ec308684f65ccedb8a5db840aea1018069a37bbf7dc27617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variant14c4f597bbea6b44ec308684f65ccedb8a5db840aea1018069a37bbf7dc27617.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac0030c693ce7a8ceba91bc5df60aa3795bd08e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
