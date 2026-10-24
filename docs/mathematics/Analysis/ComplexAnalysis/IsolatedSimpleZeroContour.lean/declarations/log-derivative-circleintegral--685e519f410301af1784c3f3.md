# log_derivative_circleIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaff8e47-457c-c4ca-1492-73edac0bccd3",
  "kind": "theorem",
  "lexical_name": "log_derivative_circleIntegral",
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
  "slug": "log-derivative-circleintegral--685e519f410301af1784c3f3",
  "source": {
    "blob": "f325456531fdcfd2a8619f8d8b8ef67d4bea91da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 148,
    "path": "GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685e519f410301af1784c3f341527e2ee505d14fde4112afc2da9b335b0d1b00",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaff8e47-457c-c4ca-1492-73edac0bccd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_derivative_circleIntegral (f : ℂ → ℂ) (c root : ℂ) (r : ℝ)
    (analytic : AnalyticOnNhd ℂ f (closedBall c r)) (inside : root ∈ ball c r)
    (rootZero : f root = 0) (simple : deriv f root ≠ 0)
    (nonzeroAway : ∀ z ∈ closedBall c r, z ≠ root → f z ≠ 0) :
    CircleIntegrable (fun z => deriv f z / f z) c r ∧
      (∮ z in C(c, r), deriv f z / f z) = 2 * (Real.pi : ℂ) * Complex.I := by
  have positive : 0 < r := lt_of_le_of_lt dist_nonneg inside
  have rootMember := ball_subset_closedBall inside
  have factorAnalytic := factor_analytic f root (closedBall c r) analytic rootMember
  have extension := regularPart_analytic f root (closedBall c r)
    analytic rootMember rootZero simple nonzeroAway
  have poleIntegrable := pole_circleIntegrable c root r inside
  have regularIntegrable : CircleIntegrable (regularPart f root) c r := by
    apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    exact (extension z (sphere_subset_closedBall hz)).continuousAt.continuousWithinAt
  constructor
  · apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    have member := sphere_subset_closedBall hz
    exact ((analytic z member).deriv.div (analytic z member)
      (nonzeroAway z member (boundary_ne_root c root z r inside hz))).continuousAt.continuousWithinAt
  · calc
      (∮ z in C(c, r), deriv f z / f z) =
          ∮ z in C(c, r), (z - root)⁻¹ + regularPart f root z := by
        apply circleIntegral.integral_congr positive.le
        intro z hz
        have member := sphere_subset_closedBall hz
        simpa only [one_div] using log_derivative_split f root z rootZero
          (factorAnalytic z member)
          (factor_nonzero f root (closedBall c r) rootZero simple nonzeroAway z member)
          (boundary_ne_root c root z r inside hz)
      _ = (∮ z in C(c, r), (z - root)⁻¹) +
          ∮ z in C(c, r), regularPart f root z :=
        circleIntegral.integral_add poleIntegrable regularIntegrable
      _ = 2 * (Real.pi : ℂ) * Complex.I := by
        rw [circleIntegral.integral_sub_inv_of_mem_ball inside,
          regularPart_circleIntegral_zero f c root r positive analytic rootMember
            rootZero simple nonzeroAway, add_zero]

/-- Moving an interior pole has a nonzero pointwise cost but ZERO integrated difference.
Neither pole is assumed to equal the other or to equal the circle center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f325456531fdcfd2a8619f8d8b8ef67d4bea91da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
