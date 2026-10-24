# integral_closedBall_zero_polar

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
      "line": 36,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:509f278e-6ddc-7658-405a-c3deab6ee4d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6cce16d-4193-2bcf-5b4f-026d98aa4710",
  "kind": "theorem",
  "lexical_name": "integral_closedBall_zero_polar",
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
  "slug": "integral-closedball-zero-polar--642ed4853e86f9ea2d649278",
  "source": {
    "blob": "f6db10c5e3ed380aec8646252e3d6c855f420b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 36,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:642ed4853e86f9ea2d649278a3212ba4f957880f9083f9f7de8378cf35aa7006",
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

Occurrence: `result:a6cce16d-4193-2bcf-5b4f-026d98aa4710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_closedBall_zero_polar (f : ℂ → ℂ) (R : ℝ) :
    (∫ z in closedBall (0 : ℂ) R, f z) =
      ∫ p : ℝ × ℝ in Ioc 0 R ×ˢ Ioo (-Real.pi) Real.pi,
        p.1 • f (Complex.polarCoord.symm p) := by
  classical
  let G : ℝ × ℝ → ℂ := fun p => p.1 • f (Complex.polarCoord.symm p)
  let H : Set (ℝ × ℝ) := Iic R ×ˢ univ
  have hH : MeasurableSet H := measurableSet_Iic.prod MeasurableSet.univ
  have hEq : Set.EqOn
      (fun p : ℝ × ℝ => p.1 • (closedBall (0 : ℂ) R).indicator f
        (Complex.polarCoord.symm p)) (H.indicator G) polarCoord.target := by
    intro p hp
    have hp0 : 0 < p.1 := hp.1
    have hmem : Complex.polarCoord.symm p ∈ closedBall (0 : ℂ) R ↔ p ∈ H := by
      simp only [mem_closedBall, dist_zero_right, Complex.norm_polarCoord_symm,
        abs_of_pos hp0, H, mem_prod, mem_Iic, mem_univ, and_true]
    by_cases hpH : p ∈ H
    · simp only [indicator_of_mem (hmem.mpr hpH), indicator_of_mem hpH, G]
    · simp only [indicator_of_notMem (fun h => hpH (hmem.mp h)),
        indicator_of_notMem hpH, smul_zero]
  have hSet : H ∩ polarCoord.target = Ioc 0 R ×ˢ Ioo (-Real.pi) Real.pi := by
    ext p
    simp only [H, polarCoord_target, mem_inter_iff, mem_prod, mem_Iic,
      mem_univ, and_true, mem_Ioi, mem_Ioc, mem_Ioo]
    tauto
  calc
    _ = ∫ z, (closedBall (0 : ℂ) R).indicator f z :=
      (integral_indicator measurableSet_closedBall).symm
    _ = ∫ p in polarCoord.target,
        p.1 • (closedBall (0 : ℂ) R).indicator f (Complex.polarCoord.symm p) :=
      (Complex.integral_comp_polarCoord_symm _).symm
    _ = ∫ p in polarCoord.target, H.indicator G p :=
      setIntegral_congr_fun polarCoord.open_target.measurableSet hEq
    _ = ∫ p in H ∩ polarCoord.target, G p := by
      rw [integral_indicator hH, Measure.restrict_restrict hH]
    _ = _ := by rw [hSet]

/-- The angular interval used by polar coordinates has the same circle average. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6db10c5e3ed380aec8646252e3d6c855f420b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
