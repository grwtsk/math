# first_order_remainder_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f3efae5-559a-cac5-b257-448991cbe422",
  "kind": "theorem",
  "lexical_name": "first_order_remainder_le",
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
  "slug": "first-order-remainder-le--c276db9c535079374616a314",
  "source": {
    "blob": "1024e8b04c7aacb4838ba7cbb5cd9e63c14c484d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 36,
    "path": "GRWTSK/Analysis/Complex/ContractiveLogDerivativeRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c276db9c535079374616a314ae122e15c606cbd584bb786c7f90cbce5b101ed8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3efae5-559a-cac5-b257-448991cbe422`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_order_remainder_le (f : ℂ → ℂ) (c z root : ℂ) (r M : ℝ)
    (curvatureNonnegative : 0 ≤ M)
    (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (curvature : ∀ w ∈ closedBall c r, ‖deriv (deriv f) w‖ ≤ M)
    (rootZero : f root = 0) (rootMember : root ∈ closedBall c r)
    (member : z ∈ closedBall c r) :
    ‖(z - root) * deriv f z - f z‖ ≤ M * ‖z - root‖ ^ 2 := by
  have pathSubset : segment ℝ z root ⊆ closedBall c r :=
    (convex_closedBall c r).segment_subset member rootMember
  have slopeVariation (w : ℂ) (hw : w ∈ segment ℝ z root) :
      ‖deriv f w - deriv f z‖ ≤ M * ‖root - z‖ := by
    have variation : ‖deriv f w - deriv f z‖ ≤ M * ‖w - z‖ :=
      (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
        (fun u hu => (analytic u hu).deriv.differentiableAt.hasDerivAt.hasDerivWithinAt)
        curvature member (pathSubset hw)
    exact variation.trans
      (mul_le_mul_of_nonneg_left (norm_sub_le_of_mem_segment hw) curvatureNonnegative)
  let g : ℂ → ℂ := fun w => f w - f z - deriv f z * (w - z)
  have derivative (w : ℂ) (hw : w ∈ segment ℝ z root) :
      HasDerivWithinAt g (deriv f w - deriv f z) (segment ℝ z root) w := by
    have linear : HasDerivAt (fun u : ℂ => deriv f z * (u - z)) (deriv f z) w := by
      convert ((hasDerivAt_id w).sub_const z).const_mul (deriv f z) using 1 <;> first | rfl | simp
    exact (((analytic w (pathSubset hw)).differentiableAt.hasDerivAt.sub_const (f z)).sub
      linear).hasDerivWithinAt
  have remainder := (convex_segment z root).norm_image_sub_le_of_norm_hasDerivWithin_le
    derivative slopeVariation (left_mem_segment ℝ z root) (right_mem_segment ℝ z root)
  have identity : g root - g z = (z - root) * deriv f z - f z := by
    dsimp [g]
    rw [rootZero]
    ring
  rw [identity] at remainder
  have reverse : ‖root - z‖ = ‖z - root‖ := norm_sub_rev _ _
  rw [reverse] at remainder
  simpa only [pow_two, mul_assoc] using remainder

/-- The pole is subtracted at the same actual root. Positive separation proves
all denominators nonzero before the rational identity or norm division is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ContractiveLogDerivativeRemainder.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1024e8b04c7aacb4838ba7cbb5cd9e63c14c484d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
