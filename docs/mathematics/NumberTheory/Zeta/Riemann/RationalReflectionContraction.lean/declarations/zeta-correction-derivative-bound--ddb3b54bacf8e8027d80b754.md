# zeta_correction_derivative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba9cfe69-0566-1399-7c81-0c6932a0952e",
  "kind": "theorem",
  "lexical_name": "zeta_correction_derivative_bound",
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
  "slug": "zeta-correction-derivative-bound--ddb3b54bacf8e8027d80b754",
  "source": {
    "blob": "65e16f4c55e4fdc381decf03352928a062579794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddb3b54bacf8e8027d80b7546d82a1ce122396553d1db235f0695ead55f1c9f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba9cfe69-0566-1399-7c81-0c6932a0952e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_correction_derivative_bound (c : ℂ) (ar ai : ℚ) (slope : Disk)
    (curvature radius : ℚ) (radiusNonnegative : 0 ≤ radius)
    (curvatureNonnegative : 0 ≤ curvature)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c (radius : ℝ)))
    (slopeEnclosure : Contains slope (deriv riemannZeta c))
    (curvatureBound : ∀ z ∈ closedBall c (radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature : ℝ))
    (z : ℂ) (member : z ∈ closedBall c (radius : ℝ)) :
    ‖1 - center (point ar ai) * deriv riemannZeta z‖ ≤
      (rateBound ar ai slope curvature radius : ℝ) := by
  have hr : (0 : ℝ) ≤ (radius : ℝ) := by exact_mod_cast radiusNonnegative
  have hM : (0 : ℝ) ≤ (curvature : ℝ) := by exact_mod_cast curvatureNonnegative
  have centerMember : c ∈ closedBall c (radius : ℝ) := mem_closedBall_self hr
  have derivative (w : ℂ) (hw : w ∈ closedBall c (radius : ℝ)) :
      HasDerivWithinAt (deriv riemannZeta) (deriv (deriv riemannZeta) w)
        (closedBall c (radius : ℝ)) w :=
    (analytic w hw).deriv.differentiableAt.hasDerivAt.hasDerivWithinAt
  have variation : ‖deriv riemannZeta z - deriv riemannZeta c‖ ≤
      (curvature : ℝ) * ‖z - c‖ :=
    (convex_closedBall c (radius : ℝ)).norm_image_sub_le_of_norm_hasDerivWithin_le
      derivative curvatureBound centerMember member
  have distanceBound : ‖z - c‖ ≤ (radius : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using member
  have variationBound := variation.trans (mul_le_mul_of_nonneg_left distanceBound hM)
  have centerBound := contains_norm_le (slopeDefectDisk_contains ar ai slope
    (deriv riemannZeta c) slopeEnclosure)
  have multiplierNonnegative : (0 : ℝ) ≤ (centerSize (point ar ai) : ℝ) := by
    exact_mod_cast centerSize_nonnegative (point ar ai)
  have identity : 1 - center (point ar ai) * deriv riemannZeta z =
      (1 - center (point ar ai) * deriv riemannZeta c) -
        center (point ar ai) * (deriv riemannZeta z - deriv riemannZeta c) := by ring
  rw [identity]
  calc
    _ ≤ ‖1 - center (point ar ai) * deriv riemannZeta c‖ +
        ‖center (point ar ai) * (deriv riemannZeta z - deriv riemannZeta c)‖ := norm_sub_le _ _
    _ = ‖1 - center (point ar ai) * deriv riemannZeta c‖ +
        ‖center (point ar ai)‖ * ‖deriv riemannZeta z - deriv riemannZeta c‖ := by rw [norm_mul]
    _ ≤ (normMajorant (slopeDefectDisk ar ai slope) : ℝ) +
        (centerSize (point ar ai) : ℝ) * ((curvature : ℝ) * (radius : ℝ)) :=
      add_le_add centerBound (mul_le_mul (center_norm_le (point ar ai)) variationBound
        (norm_nonneg _) multiplierNonnegative)
    _ = _ := by simp [rateBound, mul_assoc]

/-- Boolean success supplies strictness only AFTER the actual analytic inputs are justified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e16f4c55e4fdc381decf03352928a062579794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
