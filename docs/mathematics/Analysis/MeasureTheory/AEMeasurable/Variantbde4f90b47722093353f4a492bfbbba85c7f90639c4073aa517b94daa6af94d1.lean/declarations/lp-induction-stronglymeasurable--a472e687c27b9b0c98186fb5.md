# Lp.induction_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b934ff951637017686cb7a8a3433df8f959ad205",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c556cc8c-5bec-118f-197f-d79b339e0113",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:374c4bba-c3ee-9614-4b73-bedcd7a56e1f",
  "kind": "theorem",
  "lexical_name": "Lp.induction_stronglyMeasurable",
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
  "slug": "lp-induction-stronglymeasurable--a472e687c27b9b0c98186fb5",
  "source": {
    "blob": "b934ff951637017686cb7a8a3433df8f959ad205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 540,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a472e687c27b9b0c98186fb5e7a20d67962739505fbd0d1775bf53507014b67f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:374c4bba-c3ee-9614-4b73-bedcd7a56e1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lp.induction_stronglyMeasurable (hm : m ≤ m0) (hp_ne_top : p ≠ ∞) (P : Lp F p μ → Prop)
    (h_ind : ∀ (c : F) {s : Set α} (hs : MeasurableSet[m] s) (hμs : μ s < ∞),
      P (Lp.simpleFunc.indicatorConst p (hm s hs) hμs.ne c))
    (h_add : ∀ ⦃f g⦄, ∀ hf : MemLp f p μ, ∀ hg : MemLp g p μ, StronglyMeasurable[m] f →
      StronglyMeasurable[m] g → Disjoint (Function.support f) (Function.support g) →
        P (hf.toLp f) → P (hg.toLp g) → P (hf.toLp f + hg.toLp g))
    (h_closed : IsClosed {f : lpMeas F ℝ m p μ | P f}) :
    ∀ f : Lp F p μ, AEStronglyMeasurable[m] f μ → P f := by
  intro f hf
  suffices h_add_ae :
    ∀ ⦃f g⦄, ∀ hf : MemLp f p μ, ∀ hg : MemLp g p μ, AEStronglyMeasurable[m] f μ →
      AEStronglyMeasurable[m] g μ → Disjoint (Function.support f) (Function.support g) →
        P (hf.toLp f) → P (hg.toLp g) → P (hf.toLp f + hg.toLp g) from
    Lp.induction_stronglyMeasurable_aux hm hp_ne_top _ h_ind h_add_ae h_closed f hf
  intro f g hf hg hfm hgm h_disj hPf hPg
  let s_f : Set α := Function.support (hfm.mk f)
  have hs_f : MeasurableSet[m] s_f := hfm.stronglyMeasurable_mk.measurableSet_support
  have hs_f_eq : s_f =ᵐ[μ] Function.support f := hfm.ae_eq_mk.symm.support
  let s_g : Set α := Function.support (hgm.mk g)
  have hs_g : MeasurableSet[m] s_g := hgm.stronglyMeasurable_mk.measurableSet_support
  have hs_g_eq : s_g =ᵐ[μ] Function.support g := hgm.ae_eq_mk.symm.support
  have h_inter_empty : (s_f ∩ s_g : Set α) =ᵐ[μ] (∅ : Set α) := by
    refine (hs_f_eq.inter hs_g_eq).trans ?_
    suffices Function.support f ∩ Function.support g = ∅ by rw [this]
    exact Set.disjoint_iff_inter_eq_empty.mp h_disj
  let f' := (s_f \ s_g).indicator (hfm.mk f)
  have hff' : f =ᵐ[μ] f' := by
    have : s_f \ s_g =ᵐ[μ] s_f := by
      rw [← Set.diff_inter_self_eq_diff, Set.inter_comm]
      refine ((ae_eq_refl s_f).diff h_inter_empty).trans ?_
      rw [Set.diff_empty]
    refine ((indicator_ae_eq_of_ae_eq_set this).trans ?_).symm
    rw [Set.indicator_support]
    exact hfm.ae_eq_mk.symm
  have hf'_meas : StronglyMeasurable[m] f' := hfm.stronglyMeasurable_mk.indicator (hs_f.diff hs_g)
  have hf'_Lp : MemLp f' p μ := hf.ae_eq hff'
  let g' := (s_g \ s_f).indicator (hgm.mk g)
  have hgg' : g =ᵐ[μ] g' := by
    have : s_g \ s_f =ᵐ[μ] s_g := by
      rw [← Set.diff_inter_self_eq_diff]
      refine ((ae_eq_refl s_g).diff h_inter_empty).trans ?_
      rw [Set.diff_empty]
    refine ((indicator_ae_eq_of_ae_eq_set this).trans ?_).symm
    rw [Set.indicator_support]
    exact hgm.ae_eq_mk.symm
  have hg'_meas : StronglyMeasurable[m] g' := hgm.stronglyMeasurable_mk.indicator (hs_g.diff hs_f)
  have hg'_Lp : MemLp g' p μ := hg.ae_eq hgg'
  have h_disj : Disjoint (Function.support f') (Function.support g') :=
    haveI : Disjoint (s_f \ s_g) (s_g \ s_f) := disjoint_sdiff_sdiff
    this.mono Set.support_indicator_subset Set.support_indicator_subset
  rw [← MemLp.toLp_congr hf'_Lp hf hff'.symm] at hPf ⊢
  rw [← MemLp.toLp_congr hg'_Lp hg hgg'.symm] at hPg ⊢
  exact h_add hf'_Lp hg'_Lp hf'_meas hg'_meas h_disj hPf hPg

/-- To prove something for an arbitrary `MemLp` function a.e. strongly measurable with respect
to a sub-σ-algebra `m` in a normed space, it suffices to show that
* the property holds for (multiples of) characteristic functions which are measurable w.r.t. `m`;
* is closed under addition;
* the set of functions in the `Lᵖ` space strongly measurable w.r.t. `m` for which the property
  holds is closed.
* the property is closed under the almost-everywhere equal relation.
-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b934ff951637017686cb7a8a3433df8f959ad205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
