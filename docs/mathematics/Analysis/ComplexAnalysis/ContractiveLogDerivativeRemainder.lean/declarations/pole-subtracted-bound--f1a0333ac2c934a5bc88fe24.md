# pole_subtracted_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6350f2b-bd76-1f42-67d8-d0bef98d7960",
  "kind": "theorem",
  "lexical_name": "pole_subtracted_bound",
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
  "slug": "pole-subtracted-bound--f1a0333ac2c934a5bc88fe24",
  "source": {
    "blob": "1024e8b04c7aacb4838ba7cbb5cd9e63c14c484d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 73,
    "path": "GRWTSK/Analysis/Complex/ContractiveLogDerivativeRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a0333ac2c934a5bc88fe24ef21cc217446b925138dfd198ec3e33c3763db72",
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

Occurrence: `result:e6350f2b-bd76-1f42-67d8-d0bef98d7960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_subtracted_bound (f : ℂ → ℂ) (a c z root : ℂ) (r q M : ℝ)
    (rateStrict : q < 1) (curvatureNonnegative : 0 ≤ M)
    (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (derivativeBound : ∀ w ∈ closedBall c r, ‖1 - a * deriv f w‖ ≤ q)
    (curvature : ∀ w ∈ closedBall c r, ‖deriv (deriv f) w‖ ≤ M)
    (rootZero : f root = 0) (rootMember : root ∈ closedBall c r)
    (member : z ∈ closedBall c r) (distinct : z ≠ root) :
    f z ≠ 0 ∧ ‖deriv f z / f z - 1 / (z - root)‖ ≤ ‖a‖ * M / (1 - q) := by
  have gapPositive : 0 < 1 - q := sub_pos.mpr rateStrict
  have deltaNonzero : z - root ≠ 0 := sub_ne_zero.mpr distinct
  have distancePositive : 0 < ‖z - root‖ := norm_pos_iff.mpr deltaNonzero
  have separation := scaled_value_lower_on_disk f a c z root r q rootZero rootMember member
    (fun w hw => (analytic w hw).differentiableAt) derivativeBound
  have productNonzero : a * f z ≠ 0 :=
    norm_pos_iff.mp ((mul_pos gapPositive distancePositive).trans_le separation)
  have multiplierNonzero : a ≠ 0 := (mul_ne_zero_iff.mp productNonzero).1
  have valueNonzero : f z ≠ 0 := (mul_ne_zero_iff.mp productNonzero).2
  have numeratorBound : ‖a * ((z - root) * deriv f z - f z)‖ ≤
      ‖a‖ * M * ‖z - root‖ ^ 2 := by
    rw [norm_mul]
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
      (first_order_remainder_le f c z root r M curvatureNonnegative analytic curvature
        rootZero rootMember member) (norm_nonneg a)
  have denominatorBound : (1 - q) * ‖z - root‖ ^ 2 ≤ ‖a * f z * (z - root)‖ := by
    rw [norm_mul]
    simpa only [pow_two, mul_assoc] using
      mul_le_mul_of_nonneg_right separation (norm_nonneg (z - root))
  have denominatorPositive : 0 < (1 - q) * ‖z - root‖ ^ 2 :=
    mul_pos gapPositive (pow_pos distancePositive 2)
  have numeratorNonnegative : 0 ≤ ‖a‖ * M * ‖z - root‖ ^ 2 :=
    mul_nonneg (mul_nonneg (norm_nonneg a) curvatureNonnegative) (sq_nonneg _)
  have identity : deriv f z / f z - 1 / (z - root) =
      (a * ((z - root) * deriv f z - f z)) / (a * f z * (z - root)) := by
    field_simp [multiplierNonzero, valueNonzero, deltaNonzero] <;> ring
  refine ⟨valueNonzero, ?_⟩
  rw [identity, norm_div]
  calc
    _ ≤ (‖a‖ * M * ‖z - root‖ ^ 2) / ‖a * f z * (z - root)‖ :=
      div_le_div_of_nonneg_right numeratorBound (norm_nonneg _)
    _ ≤ (‖a‖ * M * ‖z - root‖ ^ 2) / ((1 - q) * ‖z - root‖ ^ 2) :=
      div_le_div_of_nonneg_left numeratorNonnegative denominatorPositive denominatorBound
    _ = ‖a‖ * M / (1 - q) := by
      field_simp [ne_of_gt gapPositive, ne_of_gt distancePositive] <;> ring

/-- Replacing the actual root by another center has a real pole-location cost.
Equal labels or nearby displayed heights do not make this difference vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ContractiveLogDerivativeRemainder.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1024e8b04c7aacb4838ba7cbb5cd9e63c14c484d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
