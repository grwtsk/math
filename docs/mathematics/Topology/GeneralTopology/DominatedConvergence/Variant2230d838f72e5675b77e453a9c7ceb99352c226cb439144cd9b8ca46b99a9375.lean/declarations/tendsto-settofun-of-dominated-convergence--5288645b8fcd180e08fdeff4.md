# tendsto_setToFun_of_dominated_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6229e5a7-ceae-9b2b-a4c1-f3dcd2e47c16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c90f41c3-81b2-5c4f-9ac4-148e5474d1b4",
  "kind": "theorem",
  "lexical_name": "tendsto_setToFun_of_dominated_convergence",
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
  "slug": "tendsto-settofun-of-dominated-convergence--5288645b8fcd180e08fdeff4",
  "source": {
    "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5288645b8fcd180e08fdeff4d302cbfde46cd85cfc1e9d0698e758e588f0beb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c90f41c3-81b2-5c4f-9ac4-148e5474d1b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setToFun_of_dominated_convergence (hT : DominatedFinMeasAdditive μ T C)
    {fs : ℕ → α → E} {f : α → E} (bound : α → ℝ)
    (fs_measurable : ∀ n, AEStronglyMeasurable (fs n) μ) (bound_integrable : Integrable bound μ)
    (h_bound : ∀ n, ∀ᵐ a ∂μ, ‖fs n a‖ ≤ bound a)
    (h_lim : ∀ᵐ a ∂μ, Tendsto (fun n => fs n a) atTop (𝓝 (f a))) :
    Tendsto (fun n => setToFun μ T hT (fs n)) atTop (𝓝 <| setToFun μ T hT f) := by
  by_cases hF : CompleteSpace F; swap
  · simp [setToFun, hF]
  -- `f` is a.e.-measurable, since it is the a.e.-pointwise limit of a.e.-measurable functions.
  have f_measurable : AEStronglyMeasurable f μ :=
    aestronglyMeasurable_of_tendsto_ae _ fs_measurable h_lim
  -- all functions we consider are integrable
  have fs_int : ∀ n, Integrable (fs n) μ := fun n =>
    bound_integrable.mono' (fs_measurable n) (h_bound _)
  have f_int : Integrable f μ :=
    ⟨f_measurable,
      hasFiniteIntegral_of_dominated_convergence bound_integrable.hasFiniteIntegral h_bound
        h_lim⟩
  -- it suffices to prove the result for the corresponding L1 functions
  suffices
    Tendsto (fun n => L1.setToL1 hT ((fs_int n).toL1 (fs n))) atTop
      (𝓝 (L1.setToL1 hT (f_int.toL1 f))) by
    convert! this with n
    · exact setToFun_eq hT (fs_int n)
    · exact setToFun_eq hT f_int
  -- the convergence of setToL1 follows from the convergence of the L1 functions
  refine L1.tendsto_setToL1 hT _ _ ?_
  -- up to some rewriting, what we need to prove is `h_lim`
  rw [tendsto_iff_norm_sub_tendsto_zero]
  have lintegral_norm_tendsto_zero :
    Tendsto (fun n => ENNReal.toReal <| ∫⁻ a, ENNReal.ofReal ‖fs n a - f a‖ ∂μ) atTop (𝓝 0) :=
    (tendsto_toReal zero_ne_top).comp
      (tendsto_lintegral_norm_of_dominated_convergence fs_measurable
        bound_integrable.hasFiniteIntegral h_bound h_lim)
  convert! lintegral_norm_tendsto_zero with n
  rw [L1.norm_def]
  congr 1
  refine lintegral_congr_ae ?_
  rw [← Integrable.toL1_sub]
  refine ((fs_int n).sub f_int).coeFn_toL1.mono fun x hx => ?_
  dsimp only
  rw [hx, ofReal_norm, Pi.sub_apply]

/-- Lebesgue dominated convergence theorem for filters with a countable basis -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
