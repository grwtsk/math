# HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c613612-0c0c-6ce2-1a9e-a9b46ddb82e1",
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
  "slug": "harmoniconnhd-circleaverage-re-herglotzrieszkernel-smul--ae4b87c675a071cafa6918f5",
  "source": {
    "blob": "adafd9c56f6ed43efd5d54bdac30205c00e490e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae4b87c675a071cafa6918f5157cd175b5ab360d44ad287f32e49a9d03170c54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c613612-0c0c-6ce2-1a9e-a9b46ddb82e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–81.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adafd9c56f6ed43efd5d54bdac30205c00e490e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
