# ResidueMult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a607aca3-1340-7180-2ba0-c1bff6ec5316",
  "kind": "theorem",
  "lexical_name": "ResidueMult",
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
  "slug": "residuemult--4bc682d5e5f03037fe2219ed",
  "source": {
    "blob": "09d49757ff63d00301feb0306c7b87bf0440dee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 433,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bc682d5e5f03037fe2219ed404e35a9f2a61fcb0d1fc6d29ad1383f05ddfcab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a607aca3-1340-7180-2ba0-c1bff6ec5316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidueMult {f g : ℂ → ℂ} {p : ℂ} {U : Set ℂ}
    (g_holc : HolomorphicOn g U) (U_in_nhds : U ∈ 𝓝 p) {A : ℂ}
    (f_near_p : (f - (fun s ↦ A * (s - p)⁻¹)) =O[𝓝[≠] p] (1 : ℂ → ℂ)) :
    (f * g - (fun s ↦ A * g p * (s - p)⁻¹)) =O[𝓝[≠] p] (1 : ℂ → ℂ) := by
  -- Add and subtract a term
  have : (f * g - fun s ↦ A * g p * (s - p)⁻¹)
      = (f - A • fun s ↦ (s - p)⁻¹) * g + fun s ↦ (A * (g s - g p) / (s - p)) := by
    ext; simp; ring
  -- Apply to goal
  rw[this]
  have p_in_U : p ∈ U := mem_of_mem_nhds U_in_nhds
  refine Asymptotics.IsBigO.add ?_ ?_
  · rw[← mul_one (1 : ℂ → ℂ)]
    refine Asymptotics.IsBigO.mul f_near_p ?_
    -- Show g is bounded near p
    have g_cont : ContinuousAt g p := by
      -- g is holomorphic on U, p ∈ U, so g is continuous at p
      exact (g_holc.continuousOn.continuousWithinAt p_in_U).continuousAt U_in_nhds
    -- Use continuity to get boundedness
    have := g_cont.norm.isBoundedUnder_le.isBigO_one ℂ
    exact IsBigO.mono this inf_le_left
  · -- Show that (fun s ↦ A * (g s - g p) / (s - p)) =O[𝓝[≠] p] 1

    suffices (fun s ↦ A * ((s - p)⁻¹ * (g s - g p))) =O[𝓝[≠] p] 1 by
      convert! this using 2
      rw[div_eq_mul_inv]
      ring
    apply Asymptotics.IsBigO.const_mul_left

    -- g is differentiable at p since it's holomorphic on U
    have g_diff : HasDerivAt g (deriv g p) p :=
        (DifferentiableOn.differentiableAt g_holc U_in_nhds).hasDerivAt

    rw [hasDerivAt_iff_isLittleO] at g_diff
    apply Asymptotics.IsLittleO.isBigO at g_diff
    have : (fun x' ↦ deriv g p * (x' - p)) =O[𝓝 p] fun x' ↦ x' - p := by
      apply Asymptotics.IsBigO.const_mul_left
      exact Asymptotics.isBigO_refl (fun x ↦ x - p) (𝓝 p)
    have h1 := g_diff.add this
    have h2 : (fun x ↦ g x - g p) =O[𝓝 p] fun x' ↦ x' - p := by
      convert! h1 using 2
      simp
      ring
    refine (Asymptotics.isBigO_mul_iff_isBigO_div ?_).mpr ?_
    · filter_upwards [self_mem_nhdsWithin] with x hx
      simp only [mem_compl_iff, mem_singleton_iff] at hx
      exact inv_ne_zero (sub_ne_zero.mpr hx)
    · simp only [div_inv_eq_mul]
      refine Asymptotics.IsBigO.mono ?_ inf_le_left
      simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d49757ff63d00301feb0306c7b87bf0440dee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
