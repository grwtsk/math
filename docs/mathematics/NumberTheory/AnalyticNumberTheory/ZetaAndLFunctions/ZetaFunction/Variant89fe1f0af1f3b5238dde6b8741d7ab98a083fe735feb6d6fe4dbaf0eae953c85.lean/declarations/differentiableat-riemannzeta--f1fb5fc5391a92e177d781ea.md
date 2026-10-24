# differentiableAt_riemannZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd7c40fe-0ea5-e8f1-aa47-4dbddf33b234",
  "kind": "theorem",
  "lexical_name": "differentiableAt_riemannZeta",
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
  "slug": "differentiableat-riemannzeta--f1fb5fc5391a92e177d781ea",
  "source": {
    "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 341,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1fb5fc5391a92e177d781ea6f5ef18cb406bf5765efd681495128e49ce14f0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd7c40fe-0ea5-e8f1-aa47-4dbddf33b234`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_riemannZeta {s : ℂ} (hs' : s ≠ 1) : DifferentiableAt ℂ riemannZeta s := by
  /- First claim: the result holds at `t` for `t ≠ 0`. Note we will need to use this for the case
    `s = 0` also, as a hypothesis for the removable-singularity criterion. -/
  have c1 : ∀ (t : ℂ) (_ : t ≠ 0) (_ : t ≠ 1),
      DifferentiableAt ℂ
        (fun u : ℂ => (π : ℂ) ^ (u / 2) * riemannCompletedZeta u / Gamma (u / 2)) t := by
    intro t ht ht'
    apply DifferentiableAt.mul
    · refine (DifferentiableAt.const_cpow ?_ ?_).mul (differentiableAt_completed_zeta ht ht')
      · exact DifferentiableAt.div_const differentiableAt_id _
      · exact Or.inl (ofReal_ne_zero.mpr pi_pos.ne')
    · refine differentiable_one_div_Gamma.differentiableAt.comp t ?_
      exact DifferentiableAt.div_const differentiableAt_id _
  -- Second claim: the limit at `s = 0` exists and is equal to `-1 / 2`.
  have c2 : Tendsto (fun s : ℂ => (π : ℂ) ^ (s / 2) * riemannCompletedZeta s / Gamma (s / 2))
      (𝓝[≠] 0) (𝓝 <| -1 / 2) := by
    have h1 : Tendsto (fun z : ℂ => (π : ℂ) ^ (z / 2)) (𝓝 0) (𝓝 1) := by
      convert (ContinuousAt.comp (f := fun z => z/2)
        (continuousAt_const_cpow (ofReal_ne_zero.mpr pi_pos.ne')) ?_).tendsto using 2
      · simp_rw [Function.comp_apply, zero_div, cpow_zero]
      · exact continuousAt_id.div continuousAt_const two_ne_zero
    suffices h2 : Tendsto (fun z => riemannCompletedZeta z / Gamma (z / 2)) (𝓝[≠] 0) (𝓝 <| -1 / 2)
    · convert (h1.mono_left nhdsWithin_le_nhds).mul h2 using 1
      · ext1 x; rw [mul_div]
      · simp only [one_mul]
    suffices h3 :
      Tendsto (fun z => riemannCompletedZeta z * (z / 2) / (z / 2 * Gamma (z / 2))) (𝓝[≠] 0)
        (𝓝 <| -1 / 2)
    · refine Tendsto.congr' (eventuallyEq_of_mem self_mem_nhdsWithin fun z hz => ?_) h3
      rw [← div_div, mul_div_cancel _ (div_ne_zero hz two_ne_zero)]
    have h4 : Tendsto (fun z : ℂ => z / 2 * Gamma (z / 2)) (𝓝[≠] 0) (𝓝 1) := by
      refine tendsto_self_mul_Gamma_nhds_zero.comp ?_
      rw [tendsto_nhdsWithin_iff, (by simp : 𝓝 (0 : ℂ) = 𝓝 (0 / 2))]
      exact
        ⟨(tendsto_id.div_const _).mono_left nhdsWithin_le_nhds,
          eventually_of_mem self_mem_nhdsWithin fun x hx => div_ne_zero hx two_ne_zero⟩
    suffices Tendsto (fun z => riemannCompletedZeta z * z / 2) (𝓝[≠] 0) (𝓝 (-1 / 2 : ℂ)) by
      have := this.div h4 one_ne_zero
      simp_rw [div_one, mul_div_assoc] at this
      exact this
    refine Tendsto.div ?_ tendsto_const_nhds two_ne_zero
    simp_rw [riemannCompletedZeta, add_mul, sub_mul]
    rw [show 𝓝 (-1 : ℂ) = 𝓝 (0 - 1 + 0) by rw [zero_sub, add_zero]]
    refine (Tendsto.sub ?_ ?_).add ?_
    · refine Tendsto.mono_left ?_ nhdsWithin_le_nhds
      have : ContinuousAt riemannCompletedZeta₀ 0 :=
        differentiable_completed_zeta₀.continuous.continuousAt
      simpa only [id.def, mul_zero] using Tendsto.mul this tendsto_id
    · refine tendsto_const_nhds.congr' (eventuallyEq_of_mem self_mem_nhdsWithin fun t ht => ?_)
      simp_rw [one_div_mul_cancel ht]
    · refine Tendsto.mono_left ?_ nhdsWithin_le_nhds
      suffices ContinuousAt (fun z : ℂ => 1 / (z - 1)) 0 by
        simpa only [id.def, mul_zero] using Tendsto.mul this tendsto_id
      refine continuousAt_const.div (continuousAt_id.sub continuousAt_const) ?_
      simpa only [zero_sub] using neg_ne_zero.mpr one_ne_zero
  -- Now the main proof.
  rcases ne_or_eq s 0 with (hs | rfl)
  · -- The easy case: `s ≠ 0`
    have : {(0 : ℂ)}ᶜ ∈ 𝓝 s := isOpen_compl_singleton.mem_nhds hs
    refine (c1 s hs hs').congr_of_eventuallyEq (eventuallyEq_of_mem this fun x hx => ?_)
    rw [riemannZeta_def]
    apply Function.update_noteq hx
  · -- The hard case: `s = 0`.
    rw [riemannZeta, ← (lim_eq_iff ⟨-1 / 2, c2⟩).mpr c2]
    have S_nhds : {(1 : ℂ)}ᶜ ∈ 𝓝 (0 : ℂ) := isOpen_compl_singleton.mem_nhds hs'
    refine ((Complex.differentiableOn_update_limUnder_of_isLittleO S_nhds
        (fun t ht => (c1 t ht.2 ht.1).differentiableWithinAt) ?_) 0 hs').differentiableAt S_nhds
    simp only [zero_div, div_zero, Complex.Gamma_zero, mul_zero, cpow_zero, sub_zero]
    -- Remains to show completed zeta is `o (s ^ (-1))` near 0.
    refine (isBigO_const_of_tendsto c2 <| one_ne_zero' ℂ).trans_isLittleO ?_
    rw [isLittleO_iff_tendsto']
    · exact Tendsto.congr (fun x => by rw [← one_div, one_div_one_div]) nhdsWithin_le_nhds
    · exact eventually_of_mem self_mem_nhdsWithin fun x hx hx' => (hx <| inv_eq_zero.mp hx').elim
#align differentiable_at_riemann_zeta differentiableAt_riemannZeta

/-- The trivial zeroes of the zeta function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
