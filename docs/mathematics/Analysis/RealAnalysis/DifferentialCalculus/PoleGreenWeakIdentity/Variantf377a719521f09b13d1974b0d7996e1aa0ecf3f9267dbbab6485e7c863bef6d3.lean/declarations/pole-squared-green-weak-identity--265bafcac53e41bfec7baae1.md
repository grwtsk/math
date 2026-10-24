# pole_squared_green_weak_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97042ddf-7f98-04f9-a626-af77e8ea7791",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:630f71d2-b44b-0272-51f8-39f6d5a2a373",
  "kind": "theorem",
  "lexical_name": "pole_squared_green_weak_identity",
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
  "slug": "pole-squared-green-weak-identity--265bafcac53e41bfec7baae1",
  "source": {
    "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:265bafcac53e41bfec7baae14d1654a971d4e932c4dbea11a2ead37b4980bbde",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:630f71d2-b44b-0272-51f8-39f6d5a2a373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_squared_green_weak_identity (B : ℝ) (hB : 0 < B)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f)
    (hleft : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f (-B) = 0)
    (hright : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f B = 0) :
    (∫ t in -B..B, poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) = f 0 := by
  have hp : ContDiff ℝ 4 positiveGreenBranch := by
    unfold positiveGreenBranch poleMode
    fun_prop
  have hn : ContDiff ℝ 4 negativeGreenBranch := by
    unfold negativeGreenBranch poleMode
    fun_prop
  have hpos := homogeneous_branch_green_identity positiveGreenBranch f hp hf
    (fun t ↦ (green_branches_homogeneous t).1) 0 B
  have hneg := homogeneous_branch_green_identity negativeGreenBranch f hn hf
    (fun t ↦ (green_branches_homogeneous t).2) (-B) 0
  rw [boundary_flux_eq_zero_of_jets positiveGreenBranch f B hright] at hpos
  rw [boundary_flux_eq_zero_of_jets negativeGreenBranch f (-B) hleft] at hneg
  have hic : Continuous (fun t ↦ poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) := by
    apply Continuous.mul _ (pole_squared_operator_continuous f hf)
    unfold poleSquaredGreenKernel
    fun_prop
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (μ := volume) (a := -B) (b := 0) (c := B)
    (hic.intervalIntegrable _ _) (hic.intervalIntegrable _ _)
  have hplus : (∫ t in 0..B, poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) =
      ∫ t in 0..B, positiveGreenBranch t * poleSquaredDifferentialOperator f t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [pole_squared_green_positive_branch t ((uIcc_of_le hB.le ▸ ht).1)]
  have hminus : (∫ t in -B..0, poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) =
      ∫ t in -B..0, negativeGreenBranch t * poleSquaredDifferentialOperator f t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [pole_squared_green_negative_branch t ((uIcc_of_le (by linarith : -B ≤ 0) ▸ ht).2)]
  rw [hplus, hminus, hpos, hneg] at hsplit
  have hj : boundaryFluxFunction negativeGreenBranch f 0 -
      boundaryFluxFunction positiveGreenBranch f 0 = f 0 := by
    rcases green_branch_jets_at_zero with ⟨hp0, hn0, hp1, hn1, hp2, hn2, hp3, hn3⟩
    unfold boundaryFluxFunction
    simp only [iteratedDeriv_one, hp0, hn0, hp1, hn1, hp2, hn2, hp3, hn3]
    exact green_boundary_flux_jump _ _ _ _
  linarith

/-- Ordinary iterated derivatives cannot enlarge the topological support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8982e1d065f016d8bc6fce4c1b64951e21661e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
