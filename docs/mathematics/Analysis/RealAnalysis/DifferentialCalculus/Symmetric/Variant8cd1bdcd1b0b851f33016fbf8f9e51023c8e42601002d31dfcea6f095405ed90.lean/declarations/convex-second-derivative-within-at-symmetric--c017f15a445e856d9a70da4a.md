# Convex.second_derivative_within_at_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4ab4652a30b92ccfd172a3911a1eb77cee60984",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec147c1d-7e6a-a998-1834-149e78beb3b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2745f7e-c7c2-932b-c5bf-10fa5c5dd2c1",
  "kind": "theorem",
  "lexical_name": "Convex.second_derivative_within_at_symmetric",
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
  "slug": "convex-second-derivative-within-at-symmetric--c017f15a445e856d9a70da4a",
  "source": {
    "blob": "e4ab4652a30b92ccfd172a3911a1eb77cee60984",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 368,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c017f15a445e856d9a70da4a5d56f2d0d164846b5cb2a00aa06578d6024a74e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2745f7e-c7c2-932b-c5bf-10fa5c5dd2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.second_derivative_within_at_symmetric {s : Set E} (s_conv : Convex ℝ s)
    (hne : (interior s).Nonempty) {f : E → F} {f' : E → E →L[ℝ] F} {f'' : E →L[ℝ] E →L[ℝ] F}
    (hf : ∀ x ∈ interior s, HasFDerivAt f (f' x) x) {x : E} (xs : x ∈ s)
    (hx : HasFDerivWithinAt f' f'' (interior s) x) (v w : E) : f'' v w = f'' w v := by
  /- we work around a point `x + 4 z` in the interior of `s`. For any vector `m`,
    then `x + 4 (z + t m)` also belongs to the interior of `s` for small enough `t`. This means that
    we will be able to apply `second_derivative_within_at_symmetric_of_mem_interior` to show
    that `f''` is symmetric, after cancelling all the contributions due to `z`. -/
  rcases hne with ⟨y, hy⟩
  obtain ⟨z, hz⟩ : ∃ z, z = ((1 : ℝ) / 4) • (y - x) := ⟨((1 : ℝ) / 4) • (y - x), rfl⟩
  have A : ∀ m : E, Filter.Tendsto (fun t : ℝ => x + (4 : ℝ) • (z + t • m)) (𝓝 0) (𝓝 y) := by
    intro m
    have : x + (4 : ℝ) • (z + (0 : ℝ) • m) = y := by simp [hz]
    rw [← this]
    refine tendsto_const_nhds.add <| tendsto_const_nhds.smul <| tendsto_const_nhds.add ?_
    exact continuousAt_id.smul continuousAt_const
  have B : ∀ m : E, ∀ᶠ t in 𝓝[>] (0 : ℝ), x + (4 : ℝ) • (z + t • m) ∈ interior s := by
    intro m
    apply nhdsWithin_le_nhds
    apply A m
    rw [mem_interior_iff_mem_nhds] at hy
    exact interior_mem_nhds.2 hy
  -- we choose `t m > 0` such that `x + 4 (z + (t m) m)` belongs to the interior of `s`, for any
  -- vector `m`.
  choose t ts tpos using fun m => ((B m).and self_mem_nhdsWithin).exists
  -- applying `second_derivative_within_at_symmetric_of_mem_interior` to the vectors `z`
  -- and `z + (t m) m`, we deduce that `f'' m z = f'' z m` for all `m`.
  have C : ∀ m : E, f'' m z = f'' z m := by
    intro m
    have : f'' (z + t m • m) (z + t 0 • (0 : E)) = f'' (z + t 0 • (0 : E)) (z + t m • m) :=
      s_conv.second_derivative_within_at_symmetric_of_mem_interior hf xs hx (ts 0) (ts m)
    simp only [ContinuousLinearMap.map_add, ContinuousLinearMap.map_smul, add_right_inj,
      ContinuousLinearMap.add_apply, Pi.smul_apply, ContinuousLinearMap.coe_smul', add_zero,
      ContinuousLinearMap.zero_apply, smul_zero, ContinuousLinearMap.map_zero] at this
    exact smul_right_injective F (tpos m).ne' this
  -- applying `second_derivative_within_at_symmetric_of_mem_interior` to the vectors `z + (t v) v`
  -- and `z + (t w) w`, we deduce that `f'' v w = f'' w v`. Cross terms involving `z` can be
  -- eliminated thanks to the fact proved above that `f'' m z = f'' z m`.
  have : f'' (z + t v • v) (z + t w • w) = f'' (z + t w • w) (z + t v • v) :=
    s_conv.second_derivative_within_at_symmetric_of_mem_interior hf xs hx (ts w) (ts v)
  simp only [ContinuousLinearMap.map_add, ContinuousLinearMap.map_smul, smul_add, smul_smul,
    ContinuousLinearMap.add_apply, Pi.smul_apply, ContinuousLinearMap.coe_smul', C] at this
  have : (t v * t w) • (f'' v) w = (t v * t w) • (f'' w) v := by
    linear_combination (norm := module) this
  apply smul_right_injective F _ this
  simp [(tpos v).ne', (tpos w).ne']

/-- If a function is differentiable around `x`, and has two derivatives at `x`, then the second
derivative is symmetric. Version over `ℝ`. See `second_derivative_symmetric_of_eventually` for a
version over `ℝ` or `ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ab4652a30b92ccfd172a3911a1eb77cee60984` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
