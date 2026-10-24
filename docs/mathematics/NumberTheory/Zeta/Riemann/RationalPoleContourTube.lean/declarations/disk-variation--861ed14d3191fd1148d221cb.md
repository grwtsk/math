# disk_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:782beea2-fc75-f24b-a23b-1089a039d371",
  "kind": "theorem",
  "lexical_name": "disk_variation",
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
  "slug": "disk-variation--861ed14d3191fd1148d221cb",
  "source": {
    "blob": "ad9099397ecd96329db007f67ec1f3e5d58eddf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:861ed14d3191fd1148d221cb01ea553399913a0f0a31780683199c6bdac4eee5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:782beea2-fc75-f24b-a23b-1089a039d371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disk_variation {d : EdgeData}
    (hg : RationalPolePatch.check d.center d.inner d.outer d.value = true)
    {z : ℂ} (hz : z ∈ closedBall (toComplex d.center) (d.inner : ℝ)) :
    ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex d.center)‖ ≤
      (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) * (d.inner : ℝ) := by
  obtain ⟨hR, hRS, hl, _, _⟩ := (RationalPolePatch.check_iff_valid _ _ _ _).mp hg
  have hS : 0 < d.outer := lt_of_le_of_lt hR hRS
  have hleft : (RationalPolePatch.leftMargin d.center d.outer : ℝ) ≤
      (toComplex d.center).re - (d.outer : ℝ) := by simp [RationalPolePatch.leftMargin, toComplex]
  have hB : ‖toComplex d.center‖ + (d.outer : ℝ) ≤
      (RationalPolePatch.sizeBound d.center d.outer : ℝ) := by
    simpa only [RationalPolePatch.sizeBound, Rat.cast_add] using
      add_le_add_right (norm_le_magnitude d.center) (d.outer : ℝ)
  have hD : ‖toComplex d.center - 1‖ + (d.outer : ℝ) ≤
      (RationalPolePatch.factorBound d.center d.outer : ℝ) := by
    simpa only [RationalPolePatch.factorBound, Rat.cast_add, toComplex_sub, toComplex_one] using
      add_le_add_right (norm_le_magnitude (sub d.center one)) (d.outer : ℝ)
  have hderiv : ∀ w ∈ closedBall (toComplex d.center) (d.inner : ℝ),
      ‖deriv poleNormalizedZeta w‖ ≤ (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) := by
    intro w hw
    have hb := PoleNormalizedContourBounds.derivative_bound
      (by exact_mod_cast hRS) (by exact_mod_cast hl) hleft hB hD hw
    simpa only [RationalPolePatch.slopeBound, RationalPolePatch.sourceBound,
      Rat.cast_div, Rat.cast_sub, Rat.cast_add, Rat.cast_mul] using hb
  have hc : toComplex d.center ∈ closedBall (toComplex d.center) (d.inner : ℝ) :=
    mem_closedBall_self (by exact_mod_cast hR)
  have hM : 0 ≤ (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) :=
    (norm_nonneg _).trans (hderiv _ hc)
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le
    (fun w _ => differentiable_poleNormalizedZeta w) hderiv
    (convex_closedBall (toComplex d.center) (d.inner : ℝ)) hc hz
  exact hv.trans (mul_le_mul_of_nonneg_left
    (by simpa only [mem_closedBall, dist_eq_norm] using hz) hM)

/-- Actual source containment in the rational image tube. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9099397ecd96329db007f67ec1f3e5d58eddf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
