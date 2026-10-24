# tangentConeAt_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99c74a90-8477-e9ac-4083-00f386652231",
  "kind": "theorem",
  "lexical_name": "tangentConeAt_eq_univ",
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
  "slug": "tangentconeat-eq-univ--13310c25e95ad3a1e4a8d750",
  "source": {
    "blob": "aeb23b20849a86a880f5b34cb2fc21550fcb7893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 378,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13310c25e95ad3a1e4a8d750e5047a1c2435cb0a67879391db6ede527af34390",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99c74a90-8477-e9ac-4083-00f386652231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentConeAt_eq_univ {s : Set 𝕜} {x : 𝕜} (hx : AccPt x (𝓟 s)) :
    tangentConeAt 𝕜 s x = univ := by
  apply eq_univ_iff_forall.2 (fun y ↦ ?_)
  -- first deal with the case of `0`, which has to be handled separately.
  rcases eq_or_ne y 0 with rfl | hy
  · exact zero_mem_tangentCone (mem_closure_iff_clusterPt.mpr hx.clusterPt)
  /- Assume now `y` is a fixed nonzero scalar. Take a sequence `d n` tending to `0` such
  that `x + d n ∈ s`. Let `c n = y / d n`. Then `‖c n‖` tends to infinity, and `c n • d n`
  converges to `y` (as it is equal to `y`). By definition, this shows that `y` belongs to the
  tangent cone. -/
  obtain ⟨u, -, u_pos, u_lim⟩ :
      ∃ u, StrictAnti u ∧ (∀ (n : ℕ), 0 < u n) ∧ Tendsto u atTop (𝓝 (0 : ℝ)) :=
    exists_seq_strictAnti_tendsto (0 : ℝ)
  have A n : ∃ y ∈ closedBall x (u n) ∩ s, y ≠ x :=
    accPt_iff_nhds.mp hx _ (closedBall_mem_nhds _ (u_pos n))
  choose v hv hvx using A
  choose hvu hvs using hv
  let d := fun n ↦ v n - x
  have d_ne n : d n ≠ 0 := by simpa [d, sub_eq_zero] using hvx n
  refine ⟨fun n ↦ y * (d n)⁻¹, d, .of_forall ?_, ?_, ?_⟩
  · simpa [d] using hvs
  · simp only [norm_mul, norm_inv]
    apply (tendsto_const_mul_atTop_of_pos (by simpa using hy)).2
    apply tendsto_inv_nhdsGT_zero.comp
    simp only [nhdsWithin, tendsto_inf, tendsto_principal, mem_Ioi, norm_pos_iff, ne_eq,
      eventually_atTop, ge_iff_le]
    have B (n : ℕ) : ‖d n‖ ≤ u n := by simpa [dist_eq_norm] using hvu n
    refine ⟨?_, 0, fun n hn ↦ by simpa using d_ne n⟩
    exact squeeze_zero (fun n ↦ by positivity) B u_lim
  · convert tendsto_const_nhds (α := ℕ) (x := y) with n
    simp [mul_assoc, inv_mul_cancel₀ (d_ne n)]

@[deprecated (since := "2025-04-27")] alias tangentCone_eq_univ := tangentConeAt_eq_univ

end Normed

end TangentCone

section UniqueDiff

/-!
### Properties of `UniqueDiffWithinAt` and `UniqueDiffOn`

This section is devoted to properties of the predicates `UniqueDiffWithinAt` and `UniqueDiffOn`. -/

section TVS
variable [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E]
variable {x y : E} {s t : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb23b20849a86a880f5b34cb2fc21550fcb7893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
