# log_derivative_circleIntegral_of_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cce0b34-6b0f-d604-f934-5560eeb71672",
  "kind": "theorem",
  "lexical_name": "log_derivative_circleIntegral_of_order",
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
  "slug": "log-derivative-circleintegral-of-order--c06a39936de2a2865c245b94",
  "source": {
    "blob": "18b494775954f5ce491cdb66df689187be752499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 144,
    "path": "GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06a39936de2a2865c245b94f7e373604949fa9bc897db7bc96eb3cc37e8ed77",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cce0b34-6b0f-d604-f934-5560eeb71672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_derivative_circleIntegral_of_order (f : ℂ → ℂ) (c root : ℂ) (r : ℝ) (m : ℕ)
    (positiveOrder : 0 < m) (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (inside : root ∈ ball c r) (rootZero : f root = 0)
    (actualOrder : analyticOrderAt f root = (m : ℕ∞))
    (nonzeroAway : ∀ z ∈ closedBall c r, z ≠ root → f z ≠ 0) :
    CircleIntegrable (fun z => deriv f z / f z) c r ∧
      (∮ z in C(c, r), deriv f z / f z) = (m : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
  have positive : 0 < r := lt_of_le_of_lt dist_nonneg inside
  obtain ⟨H, analyticH, agrees⟩ := exists_regular_extension f root m (closedBall c r)
    positiveOrder analytic (ball_subset_closedBall inside) rootZero actualOrder nonzeroAway
  have regular : DiffContOnCl ℂ H (ball c r) :=
    DiffContOnCl.mk_ball
      (fun z hz => (analyticH z (ball_subset_closedBall hz)).differentiableAt.differentiableWithinAt)
      (fun z hz => (analyticH z hz).continuousAt.continuousWithinAt)
  have zeroIntegral : (∮ z in C(c, r), H z) = 0 :=
    DiffContOnCl.circleIntegral_eq_zero positive.le regular
  have regularIntegrable : CircleIntegrable H c r := by
    apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    exact (analyticH z (sphere_subset_closedBall hz)).continuousAt.continuousWithinAt
  have poleIntegrable : CircleIntegrable (fun z : ℂ => (m : ℂ) * (z - root)⁻¹) c r := by
    apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    exact (continuousAt_const.mul ((continuousAt_id.sub continuousAt_const).inv₀
      (sub_ne_zero.mpr (boundary_ne_root c root z r inside hz)))).continuousWithinAt
  constructor
  · apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    have member := sphere_subset_closedBall hz
    exact ((analytic z member).deriv.div (analytic z member)
      (nonzeroAway z member (boundary_ne_root c root z r inside hz))).continuousAt.continuousWithinAt
  · calc
      (∮ z in C(c, r), deriv f z / f z) =
          ∮ z in C(c, r), (m : ℂ) * (z - root)⁻¹ + H z := by
        apply circleIntegral.integral_congr positive.le
        intro z hz
        rw [agrees z (sphere_subset_closedBall hz) (boundary_ne_root c root z r inside hz)]
        simp only [div_eq_mul_inv]
        ring
      _ = (∮ z in C(c, r), (m : ℂ) * (z - root)⁻¹) + ∮ z in C(c, r), H z :=
        circleIntegral.integral_add poleIntegrable regularIntegrable
      _ = (m : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
        rw [circleIntegral.integral_const_mul, circleIntegral.integral_sub_inv_of_mem_ball inside,
          zeroIntegral, add_zero]

/-- One distinct root can have order two and a zero derivative. This is not zeta data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b494775954f5ce491cdb66df689187be752499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
