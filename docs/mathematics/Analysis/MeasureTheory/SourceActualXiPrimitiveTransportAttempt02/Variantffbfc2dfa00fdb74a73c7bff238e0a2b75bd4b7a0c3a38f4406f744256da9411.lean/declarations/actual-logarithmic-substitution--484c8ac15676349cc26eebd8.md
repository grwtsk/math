# actual_logarithmic_substitution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43f24b86-b6e8-a8bd-5d68-dcd693dd3d73",
  "kind": "theorem",
  "lexical_name": "actual_logarithmic_substitution",
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
  "slug": "actual-logarithmic-substitution--484c8ac15676349cc26eebd8",
  "source": {
    "blob": "5af0e439c9c36f80eaf5e4f50b88ea03a0480d04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 67,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484c8ac15676349cc26eebd8893c5849497d4f1d851e7667fea70a1eccc5794b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43f24b86-b6e8-a8bd-5d68-dcd693dd3d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logarithmic_substitution (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
      ∫ t in Real.log 2..2 * A, actualXiLogDensity t * fullXiLogWeight A t := by
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun y => shiftedActualChebyshev y * deriv (plainProfile A 1) y)
    (a := Real.log 2) (b := 2 * A) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at hs
  rw [← hs]
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only [Function.comp_apply]
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 (Real.exp_pos t)).deriv]
  simp only [Real.log_one, zero_add, Real.log_exp]
  unfold actualXiLogDensity fullXiLogWeight
  field_simp

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af0e439c9c36f80eaf5e4f50b88ea03a0480d04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
