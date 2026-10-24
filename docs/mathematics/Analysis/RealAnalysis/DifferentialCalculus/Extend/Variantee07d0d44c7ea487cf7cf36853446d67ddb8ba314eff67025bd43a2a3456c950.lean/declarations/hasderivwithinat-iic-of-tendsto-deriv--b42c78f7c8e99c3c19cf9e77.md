# hasDerivWithinAt_Iic_of_tendsto_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30680e258ef5460b622b5929cd1e6ea9c3d99c2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4520fda8-cd67-e859-5a63-056634b0866f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c90853f4-e2b9-e43f-4c88-c04370179beb",
  "kind": "theorem",
  "lexical_name": "hasDerivWithinAt_Iic_of_tendsto_deriv",
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
  "slug": "hasderivwithinat-iic-of-tendsto-deriv--b42c78f7c8e99c3c19cf9e77",
  "source": {
    "blob": "30680e258ef5460b622b5929cd1e6ea9c3d99c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b42c78f7c8e99c3c19cf9e772233bdf3a6d36dc505b18e19e3a941e9e394aab3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c90853f4-e2b9-e43f-4c88-c04370179beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivWithinAt_Iic_of_tendsto_deriv {s : Set ℝ} {e : E} {a : ℝ}
    {f : ℝ → E} (f_diff : DifferentiableOn ℝ f s) (f_lim : ContinuousWithinAt f s a)
    (hs : s ∈ 𝓝[<] a) (f_lim' : Tendsto (fun x => deriv f x) (𝓝[<] a) (𝓝 e)) :
    HasDerivWithinAt f e (Iic a) a := by
  /- This is a specialization of `hasFDerivWithinAt_closure_of_tendsto_fderiv`. To be in the
    setting of this theorem, we need to work on an open interval with closure contained in
    `s ∪ {a}`, that we call `t = (b, a)`. Then, we check all the assumptions of this theorem and we
    apply it. -/
  obtain ⟨b, ba, sab⟩ : ∃ b ∈ Iio a, Ico b a ⊆ s := mem_nhdsLT_iff_exists_Ico_subset.1 hs
  let t := Ioo b a
  have ts : t ⊆ s := Subset.trans Ioo_subset_Ico_self sab
  have t_diff : DifferentiableOn ℝ f t := f_diff.mono ts
  have t_conv : Convex ℝ t := convex_Ioo b a
  have t_open : IsOpen t := isOpen_Ioo
  have t_closure : closure t = Icc b a := closure_Ioo (ne_of_lt ba)
  have t_cont : ∀ y ∈ closure t, ContinuousWithinAt f t y := by
    rw [t_closure]
    intro y hy
    by_cases h : y = a
    · rw [h]; exact f_lim.mono ts
    · have : y ∈ s := sab ⟨hy.1, lt_of_le_of_ne hy.2 h⟩
      exact (f_diff.continuousOn y this).mono ts
  have t_diff' : Tendsto (fun x => fderiv ℝ f x) (𝓝[t] a) (𝓝 (smulRight (1 : ℝ →L[ℝ] ℝ) e)) := by
    simp only [deriv_fderiv.symm]
    exact Tendsto.comp
      (isBoundedBilinearMap_smulRight : IsBoundedBilinearMap ℝ _).continuous_right.continuousAt
      (tendsto_nhdsWithin_mono_left Ioo_subset_Iio_self f_lim')
  -- now we can apply `hasFDerivWithinAt_closure_of_tendsto_fderiv`
  have : HasDerivWithinAt f e (Icc b a) a := by
    rw [hasDerivWithinAt_iff_hasFDerivWithinAt, ← t_closure]
    exact hasFDerivWithinAt_closure_of_tendsto_fderiv t_diff t_conv t_open t_cont t_diff'
  exact this.mono_of_mem_nhdsWithin (Icc_mem_nhdsLE ba)

/-- If a real function `f` has a derivative `g` everywhere but at a point, and `f` and `g` are
continuous at this point, then `g` is also the derivative of `f` at this point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30680e258ef5460b622b5929cd1e6ea9c3d99c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
