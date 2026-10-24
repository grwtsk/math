# triangle_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:632797aa-852f-c9b4-07eb-b53af916418a",
  "kind": "theorem",
  "lexical_name": "triangle_integral_eq",
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
  "slug": "triangle-integral-eq--f3a1838eef83b410a4a9993f",
  "source": {
    "blob": "3d3d5c771615f9cfceb65cfbc430a58bf4ece4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant3f4356d129291f1be7c1654e86019d747d1ec6c885d5a03b262d2f1511b8f93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3a1838eef83b410a4a9993fc41898d50691ee02d23cdd63a3eea41a95ff2312",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant3f4356d129291f1be7c1654e86019d747d1ec6c885d5a03b262d2f1511b8f93e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:632797aa-852f-c9b4-07eb-b53af916418a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangle_integral_eq (f : ℝ → ℝ) (hf : Continuous f) (A : ℝ) (hA : 0 ≤ A) :
    (∫ t in 0..2*A, f t * min t (2*A-t)) =
      (∫ t in A..2*A, cumulative f t) - (∫ t in 0..A, cumulative f t) := by
  have hH := cumulative_continuous f hf
  have hleft := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (u := cumulative f) (u' := f) (v := fun t : ℝ => t) (v' := fun _ => (1 : ℝ))
    (a := 0) (b := A) hH.continuousOn continuous_id.continuousOn
    (fun t _ => cumulative_hasDerivAt f hf t) (fun t _ => hasDerivAt_id t)
    (hf.intervalIntegrable _ _) (continuous_const.intervalIntegrable _ _)
  have hright := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (u := cumulative f) (u' := f) (v := fun t : ℝ => 2*A-t) (v' := fun _ => (-1 : ℝ))
    (a := A) (b := 2*A) hH.continuousOn
    (continuous_const.sub continuous_id).continuousOn
    (fun t _ => cumulative_hasDerivAt f hf t)
    (fun t _ => by simpa only [Pi.sub_apply, id_eq, zero_sub] using!
      (hasDerivAt_const t (2*A)).sub (hasDerivAt_id t))
    (hf.intervalIntegrable _ _) (continuous_const.intervalIntegrable _ _)
  have hl : (∫ t in 0..A, f t * t + cumulative f t * 1) =
      (∫ t in 0..A, f t * t) + (∫ t in 0..A, cumulative f t) := by
    simp only [mul_one]
    exact intervalIntegral.integral_add ((hf.mul continuous_id).intervalIntegrable _ _)
      (hH.intervalIntegrable _ _)
  have hr : (∫ t in A..2*A, f t * (2*A-t) + cumulative f t * (-1)) =
      (∫ t in A..2*A, f t * (2*A-t)) - (∫ t in A..2*A, cumulative f t) := by
    simp only [mul_neg_one]
    exact intervalIntegral.integral_sub
      ((hf.mul (continuous_const.sub continuous_id)).intervalIntegrable _ _)
      (hH.intervalIntegrable _ _)
  rw [hl] at hleft
  rw [hr] at hright
  have hcont : Continuous (fun t => f t * min t (2*A-t)) :=
    hf.mul (continuous_id.min (continuous_const.sub continuous_id))
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hcont.intervalIntegrable 0 A) (hcont.intervalIntegrable A (2*A))
  have hsmall : (∫ t in 0..A, f t * min t (2*A-t)) = ∫ t in 0..A, f t * t := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le hA] at ht
    rw [min_eq_left (by linarith [ht.2])]
  have hlarge : (∫ t in A..2*A, f t * min t (2*A-t)) =
      ∫ t in A..2*A, f t * (2*A-t) := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : A ≤ 2*A)] at ht
    rw [min_eq_right (by linarith [ht.1])]
  rw [hsmall, hlarge] at hsplit
  simp only [mul_zero, sub_self, zero_sub, sub_zero, zero_mul] at hleft hright
  have he : 2*A-A = A := by ring
  rw [he] at hright
  linarith

/-- Only the cumulative mean on [A,2A] is needed; an early prefix is subtracted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant3f4356d129291f1be7c1654e86019d747d1ec6c885d5a03b262d2f1511b8f93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant3f4356d129291f1be7c1654e86019d747d1ec6c885d5a03b262d2f1511b8f93e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d3d5c771615f9cfceb65cfbc430a58bf4ece4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
