# HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f3837fe9cdb6aa4c99722f4a2bf0ffbccf20a29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:441d4bb0-ba9b-61f3-746a-fd3bc4a1cf13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:070aa6ca-5c93-93eb-787b-789cf85c20e3",
  "kind": "theorem",
  "lexical_name": "HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul",
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
  "slug": "harmoniconnhd-circleaverage-re-herglotzrieszkernel-smul--18cee1485b640b984a2a79ea",
  "source": {
    "blob": "9f3837fe9cdb6aa4c99722f4a2bf0ffbccf20a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Poisson/Varianta5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18cee1485b640b984a2a79ea5091e107a110a2fe621ab1c25f2cdffd15c7e5f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poisson/Varianta5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:070aa6ca-5c93-93eb-787b-789cf85c20e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul
    (hf : HarmonicOnNhd f (closedBall c R)) (hw : w ∈ ball c R) :
    Real.circleAverage ((re ∘ herglotzRieszKernel c w) • f) c R = f w := by
  obtain ⟨e, h₁e, h₂e⟩ := (isCompact_closedBall c R).exists_thickening_subset_open
    (isOpen_setOfPred_harmonicAt f) (by aesop)
  rw [thickening_closedBall h₁e (pos_of_mem_ball hw).le] at h₂e
  obtain ⟨F, h₁F, h₂F⟩ := HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq h₂e
  have h₃F : DifferentiableOn ℂ F (closure (ball c R)) := by
    intro x hx
    apply (h₁F x _).differentiableWithinAt
    grind [mem_ball, mem_closedBall.1 (closure_ball_subset_closedBall hx)]
  have h₄F : Set.EqOn (re ∘ herglotzRieszKernel c w • f)
      (reCLM ∘ (fun z ↦ ((z - c + (w - c)) / (z - c - (w - c))).re • F z))
      (sphere c R) := by
    intro x hx
    simp [h₂F (sphere_subset_ball (lt_add_of_pos_left R h₁e) hx), herglotzRieszKernel_def]
  rw [← abs_of_pos (pos_of_mem_ball hw)] at h₄F
  rw [circleAverage_congr_sphere h₄F, reCLM.circleAverage_comp_comm,
    h₃F.diffContOnCl.circleAverage_re_herglotzRieszKernel_smul' hw]
  · apply h₂F
    grind [mem_ball]
  -- CircleIntegrable (fun z ↦ ((z - c + (w - c)) / (z - c - (w - c))).re • F z) c R
  apply (ContinuousOn.fun_smul _ _).circleIntegrable'
  · apply (continuousOn_herglotz_riesz hw).mono
    grind [mem_ball, dist_eq_norm, mem_sphere_iff_norm, (pos_of_mem_ball hw)]
  · apply (h₁F.mono _).continuousOn (𝕜 := ℂ)
    grind [mem_sphere, mem_ball, (pos_of_mem_ball hw)]

/--
**Poisson integral formula** for harmonic functions on arbitrary disks in the complex plane,
formulated with the real part of the Herglotz–Riesz kernel of integration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poisson/Varianta5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poisson/Varianta5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3837fe9cdb6aa4c99722f4a2bf0ffbccf20a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
