# strict_reflected_one_eq_prefix_and_fractional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29d593d7-b90b-4f94-cb37-c11bdf0da448",
  "kind": "theorem",
  "lexical_name": "strict_reflected_one_eq_prefix_and_fractional",
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
  "slug": "strict-reflected-one-eq-prefix-and-fractional--06596a243fd8a4b8176f9814",
  "source": {
    "blob": "c1e6de0944c3a0cd834a7dba52347e2559e54acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 373,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06596a243fd8a4b8176f9814335ce731aa861aec17a26f86a7d19442e2acc87b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29d593d7-b90b-4f94-cb37-c11bdf0da448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_reflected_one_eq_prefix_and_fractional (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 - A ≤ x) :
    strictReflectedOne A x = -polePrefix A x + fractionalAboveOne A x := by
  have hp : 0 < A := by linarith
  have hN := actual_cutoff_one_le A hA
  have hc := finite_quadrature_of_endpoint_zero (reflectedSample A x)
    (reflectedSample_contDiff hp x) (sourceKernelCutoff A)
    (reflectedSample_actual_upper_tail A x hA hx _ (by
      simp only [Nat.cast_add, Nat.cast_one]; exact le_rfl))
  simp only [Nat.cast_add, Nat.cast_one] at hc
  have hi := reflectedSample_actual_finite_integral_zero A x hA hx
  simp only [Nat.cast_add, Nat.cast_one] at hi
  rw [hi, sub_zero] at hc
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (fract_deriv_intervalIntegrable (reflectedSample A x) (reflectedSample_contDiff hp x) 0 1)
    (fract_deriv_intervalIntegrable (reflectedSample A x) (reflectedSample_contDiff hp x)
      1 ((sourceKernelCutoff A + 1 : ℕ) : ℝ))
  rw [reflected_below_one_fractional_identity A x hA, above_one_fractional_eq A x hA] at hsplit
  simp only [Nat.cast_add, Nat.cast_one] at hsplit
  have hsum := Finset.add_sum_Ioc_eq_sum_Icc
    (f := fun n : ℕ => reflectedSample A x (n : ℝ)) hN
  rw [Nat.cast_one, reflectedSample_at_one] at hsum
  unfold strictReflectedOne
  linarith

/-- Strict samples vanish when every shifted q lies at or beyond its true upper seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e6de0944c3a0cd834a7dba52347e2559e54acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
