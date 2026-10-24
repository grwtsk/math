# integral_tent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f0f3983-311a-26d4-ccae-b02b5c1969a5",
  "kind": "theorem",
  "lexical_name": "integral_tent",
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
  "slug": "integral-tent--5cefa7955f4f9c9af4f835f1",
  "source": {
    "blob": "a3debc7101743b93b2dec8d9f013aa0e950f4d2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/Analysis/Real/TentRationalCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cefa7955f4f9c9af4f835f118b852a41b1dcf1f12ca90326f615158dc83eafc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f0f3983-311a-26d4-ccae-b02b5c1969a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_tent (x h : ℝ) (hh : 0 < h) :
    (∫ t in (x - h)..(x + h), tent x h t) = h := by
  have hl := (continuous_tent x h).intervalIntegrable (μ := MeasureTheory.volume) (x - h) x
  have hr := (continuous_tent x h).intervalIntegrable (μ := MeasureTheory.volume) x (x + h)
  have dl : ∀ t ∈ uIcc (x - h) x,
      HasDerivAt (fun u : ℝ => (u - (x - h)) ^ 2 / (2 * h)) (tent x h t) t := by
    intro t ht
    have ht' : t ∈ Icc (x - h) x := (uIcc_of_le (show x - h ≤ x by linarith)) ▸ ht
    rw [tent_on_left x h t hh ht'.1 ht'.2]
    convert (((hasDerivAt_id t).sub_const (x - h)).pow 2).div_const (2 * h) using 1 <;>
      first | rfl | (field_simp [ne_of_gt hh]; simp only [id_eq]; ring)
  have dr : ∀ t ∈ uIcc x (x + h),
      HasDerivAt (fun u : ℝ => -((x + h - u) ^ 2 / (2 * h))) (tent x h t) t := by
    intro t ht
    have ht' : t ∈ Icc x (x + h) := (uIcc_of_le (show x ≤ x + h by linarith)) ▸ ht
    rw [tent_on_right x h t hh ht'.1 ht'.2]
    convert ((((hasDerivAt_id t).const_sub (x + h)).pow 2).div_const (2 * h)).neg
      using 1 <;> first | rfl | (field_simp [ne_of_gt hh]; simp only [id_eq]; ring)
  have il := intervalIntegral.integral_eq_sub_of_hasDerivAt dl hl
  have ir := intervalIntegral.integral_eq_sub_of_hasDerivAt dr hr
  rw [← intervalIntegral.integral_add_adjacent_intervals hl hr, il, ir]
  field_simp [ne_of_gt hh]; ring

/-- Bounds on a continuous density are averaged against the same normalized tent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/TentRationalCorrection.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3debc7101743b93b2dec8d9f013aa0e950f4d2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
