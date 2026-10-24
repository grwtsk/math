# has_deriv_at_interval_left_endpoint_of_tendsto_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e5f93ec-3334-7f66-28ce-afb117c01e2a",
  "kind": "theorem",
  "lexical_name": "has_deriv_at_interval_left_endpoint_of_tendsto_deriv",
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
  "slug": "has-deriv-at-interval-left-endpoint-of-tendsto-deriv--2fea847880dd7b110b3c7071",
  "source": {
    "blob": "fea0ff4b1f3355ba83a22ce345632276832b9c1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fea847880dd7b110b3c7071e3390ba7aacf8f36aedfae3375a681b73540715e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e5f93ec-3334-7f66-28ce-afb117c01e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_deriv_at_interval_left_endpoint_of_tendsto_deriv {s : Set ℝ} {e : E} {a : ℝ} {f : ℝ → E}
    (f_diff : DifferentiableOn ℝ f s) (f_lim : ContinuousWithinAt f s a) (hs : s ∈ 𝓝[>] a)
    (f_lim' : Tendsto (fun x => deriv f x) (𝓝[>] a) (𝓝 e)) : HasDerivWithinAt f e (Ici a) a := by
  /- This is a specialization of `has_fderiv_at_boundary_of_tendsto_fderiv`. To be in the setting of
    this theorem, we need to work on an open interval with closure contained in `s ∪ {a}`, that we
    call `t = (a, b)`. Then, we check all the assumptions of this theorem and we apply it. -/
  obtain ⟨b, ab : a < b, sab : Ioc a b ⊆ s⟩ := mem_nhdsWithin_Ioi_iff_exists_Ioc_subset.1 hs
  let t := Ioo a b
  have ts : t ⊆ s := Subset.trans Ioo_subset_Ioc_self sab
  have t_diff : DifferentiableOn ℝ f t := f_diff.mono ts
  have t_conv : Convex ℝ t := convex_Ioo a b
  have t_open : IsOpen t := isOpen_Ioo
  have t_closure : closure t = Icc a b := closure_Ioo ab.ne
  have t_cont : ∀ y ∈ closure t, ContinuousWithinAt f t y := by
    rw [t_closure]
    intro y hy
    by_cases h : y = a
    · rw [h]; exact f_lim.mono ts
    · have : y ∈ s := sab ⟨lt_of_le_of_ne hy.1 (Ne.symm h), hy.2⟩
      exact (f_diff.continuousOn y this).mono ts
  have t_diff' : Tendsto (fun x => fderiv ℝ f x) (𝓝[t] a) (𝓝 (smulRight 1 e)) := by
    simp only [deriv_fderiv.symm]
    exact Tendsto.comp
      (isBoundedBilinearMap_smulRight : IsBoundedBilinearMap ℝ _).continuous_right.continuousAt
      (tendsto_nhdsWithin_mono_left Ioo_subset_Ioi_self f_lim')
  -- now we can apply `has_fderiv_at_boundary_of_differentiable`
  have : HasDerivWithinAt f e (Icc a b) a := by
    rw [hasDerivWithinAt_iff_hasFDerivWithinAt, ← t_closure]
    exact has_fderiv_at_boundary_of_tendsto_fderiv t_diff t_conv t_open t_cont t_diff'
  exact this.mono_of_mem (Icc_mem_nhdsWithin_Ici <| left_mem_Ico.2 ab)
#align has_deriv_at_interval_left_endpoint_of_tendsto_deriv has_deriv_at_interval_left_endpoint_of_tendsto_deriv

/-- If a function is differentiable on the left of a point `a : ℝ`, continuous at `a`, and
its derivative also converges at `a`, then `f` is differentiable on the left at `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fea0ff4b1f3355ba83a22ce345632276832b9c1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
