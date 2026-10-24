# integral_closedBall_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6db10c5e3ed380aec8646252e3d6c855f420b61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1699fec7-a6df-35ff-08c9-f50d76449a9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:571ebdc6-60e2-806d-0f08-1fe65de0d811",
  "kind": "theorem",
  "lexical_name": "integral_closedBall_zero",
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
  "slug": "integral-closedball-zero--37ea6f47655c692272e89b85",
  "source": {
    "blob": "f6db10c5e3ed380aec8646252e3d6c855f420b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 110,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ea6f47655c692272e89b85a4693dfa2158fb33df2b6ce370a214287510d999",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:571ebdc6-60e2-806d-0f08-1fe65de0d811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_closedBall_zero {f : ℂ → ℂ} {R : ℝ} (hR : 0 < R)
    (hf : DifferentiableOn ℂ f (closedBall (0 : ℂ) R)) :
    (∫ z in closedBall (0 : ℂ) R, f z) = (Real.pi * R ^ 2) • f 0 := by
  have hmean (r : ℝ) (hr : r ∈ Ioc 0 R) : Real.circleAverage f 0 r = f 0 := by
    apply circleAverage_of_differentiable_on_off_countable (s := ∅) countable_empty
    · simpa only [abs_of_pos hr.1] using
        hf.continuousOn.mono (closedBall_subset_closedBall hr.2)
    · intro z hz
      have hz' : z ∈ ball (0 : ℂ) r := by
        simpa only [sdiff_empty, abs_of_pos hr.1] using hz
      exact hf.differentiableAt (Filter.mem_of_superset (isOpen_ball.mem_nhds hz')
        (ball_subset_closedBall.trans (closedBall_subset_closedBall hr.2)))
  have hint := polarIntegrable hf.continuousOn
  rw [Measure.volume_eq_prod] at hint
  rw [integral_closedBall_zero_polar, Measure.volume_eq_prod, setIntegral_prod _ hint]
  calc
    _ = ∫ r in Ioc 0 R, r • ((2 * Real.pi) • f 0) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro r hr
      rw [integral_smul, angularIntegral_eq_circleAverage, hmean r hr]
    _ = (∫ r in Ioc 0 R, r) • ((2 * Real.pi) • f 0) := integral_smul_const _ _
    _ = (R ^ 2 / 2) • ((2 * Real.pi) • f 0) := by
      congr 1
      rw [← intervalIntegral.integral_of_le hR.le]
      simp [integral_id]
    _ = _ := by rw [smul_smul]; congr 1; ring

/-- Translation uses Lebesgue invariance; no pushforward is mistaken for a new measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6db10c5e3ed380aec8646252e3d6c855f420b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
