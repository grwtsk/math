# weighted_deriv_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c646f157-45e6-a502-8546-74634350c9b9",
  "kind": "theorem",
  "lexical_name": "weighted_deriv_integral",
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
  "slug": "weighted-deriv-integral--a287a16d2f9dd64987c4620f",
  "source": {
    "blob": "6d8dee70d9ad79b5930ab83c75820a082f4b907b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 32,
    "path": "GRWTSK/Analysis/Integration/CompactWeightedDerivativeMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a287a16d2f9dd64987c4620f75513a995c5be79fe0dca3ee43d3feb8d964960d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c646f157-45e6-a502-8546-74634350c9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_deriv_integral {f : ℝ → ℝ} (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (c : ℝ) :
    (∫ x : ℝ, Real.exp (c * x) * deriv f x) =
      -c * ∫ x : ℝ, Real.exp (c * x) * f x := by
  have he : Continuous (fun x : ℝ ↦ Real.exp (c * x)) := by fun_prop
  have h0 := compact_weight_integrable hf.continuous hs he
  have h1 := compact_weight_integrable hf.continuous_deriv_one hs.deriv he
  have hc : Integrable (fun x : ℝ ↦ (c * Real.exp (c * x)) * f x) := by
    simpa only [mul_assoc] using h0.const_mul c
  have hexp (x : ℝ) : HasDerivAt (fun y : ℝ ↦ Real.exp (c * y))
      (c * Real.exp (c * x)) x := by
    simpa only [id_eq, mul_one, mul_comm] using ((hasDerivAt_id x).const_mul c).exp
  have parts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x ↦ Real.exp (c * x)) (u' := fun x ↦ c * Real.exp (c * x))
    (v := f) (v' := deriv f)
    (fun x _ ↦ hexp x)
    (fun x _ ↦ ((hf.differentiable one_ne_zero) x).hasDerivAt) h1 hc h0
  simp only [mul_assoc, integral_const_mul] at parts
  simpa only [neg_mul] using parts

/-- The first weighted derivative moment keeps the zeroth-moment correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/CompactWeightedDerivativeMoments.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8dee70d9ad79b5930ab83c75820a082f4b907b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
