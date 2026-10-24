# residueTheorem_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db30df619c414827f45a20b95fd173edd3600ee1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f18c6359-25e7-e687-78e6-76e33e249ce4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:261deace-930f-00ab-65d4-476a0f9377d4",
  "kind": "theorem",
  "lexical_name": "residueTheorem_finset",
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
  "slug": "residuetheorem-finset--11606f3a3507867c213ca6b6",
  "source": {
    "blob": "db30df619c414827f45a20b95fd173edd3600ee1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11606f3a3507867c213ca6b60610748b284917248f83607718f4285de28ab9f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:261deace-930f-00ab-65d4-476a0f9377d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residueTheorem_finset {f : ℂ → ℂ} {z w : ℂ} (hre : z.re ≤ w.re) (him : z.im ≤ w.im)
    (S : Finset ℂ) (A : ℂ → ℂ)
    (hS : ∀ p ∈ S, Rectangle z w ∈ 𝓝 p)
    (fHolo : HolomorphicOn f (Rectangle z w \ (S : Set ℂ)))
    (near : ∀ p ∈ S, (f - fun s => A p / (s - p)) =O[𝓝[≠] p] (1 : ℂ → ℂ)) :
    RectangleIntegral' f z w = ∑ p ∈ S, A p := by
  classical
  induction S using Finset.induction_on generalizing f with
  | empty =>
    simp only [Finset.coe_empty, sdiff_empty] at fHolo
    rw [Finset.sum_empty]
    show (1 / (2 * π * I)) • RectangleIntegral f z w = 0
    rw [fHolo.vanishesOnRectangle subset_rfl, smul_zero]
  | @insert p S hpS ih =>
    have hp : Rectangle z w ∈ 𝓝 p := hS p (Finset.mem_insert_self p S)
    have hS' : ∀ q ∈ S, Rectangle z w ∈ 𝓝 q := fun q hq => hS q (Finset.mem_insert_of_mem hq)
    -- the principal part at p, the remainder f₁, and its extension f₂ across p
    set P : ℂ → ℂ := fun s => A p / (s - p) with hP
    set f₁ : ℂ → ℂ := f - P with hf₁
    set f₂ : ℂ → ℂ := Function.update f₁ p (limUnder (𝓝[≠] p) f₁) with hf₂
    have hPdiff : ∀ s, s ≠ p → DifferentiableAt ℂ P s := by
      intro s hs
      have : s - p ≠ 0 := sub_ne_zero.mpr hs
      simp only [hP]
      fun_prop (disch := assumption)
    have hf₁holo : HolomorphicOn f₁ (Rectangle z w \ ((insert p S : Finset ℂ) : Set ℂ)) := by
      refine fHolo.sub ?_
      intro s hs
      apply (hPdiff s ?_).differentiableWithinAt
      intro h
      apply hs.2
      simp [h]
    have hSclosed : IsClosed (S : Set ℂ) := S.finite_toSet.isClosed
    have hRS : Rectangle z w \ (S : Set ℂ) ∈ 𝓝 p := by
      apply Filter.inter_mem hp
      exact hSclosed.isOpen_compl.mem_nhds (by simpa using hpS)
    obtain ⟨U, hU, hbdd⟩ := IsBigO_to_BddAbove (near p (Finset.mem_insert_self p S))
    have hV : U ∩ (Rectangle z w \ (S : Set ℂ)) ∈ 𝓝 p := Filter.inter_mem hU hRS
    have hf₁V : DifferentiableOn ℂ f₁ ((U ∩ (Rectangle z w \ (S : Set ℂ))) \ {p}) := by
      apply hf₁holo.mono
      rintro s ⟨⟨_, hsR, hsS⟩, hsp⟩
      refine ⟨hsR, ?_⟩
      simp only [Finset.coe_insert, mem_insert_iff, Finset.mem_coe, not_or]
      exact ⟨by simpa using hsp, by simpa using hsS⟩
    have hbddV : BddAbove (norm ∘ f₁ '' ((U ∩ (Rectangle z w \ (S : Set ℂ))) \ {p})) :=
      hbdd.mono (image_mono (Set.sdiff_subset_sdiff_left inter_subset_left))
    have hf₂V : DifferentiableOn ℂ f₂ (U ∩ (Rectangle z w \ (S : Set ℂ))) :=
      differentiableOn_update_limUnder_of_bddAbove hV hf₁V hbddV
    have hf₂eq : ∀ s, s ≠ p → f₂ s = f₁ s := fun s hs => Function.update_of_ne hs _ _
    -- f₂ is holomorphic on the rectangle minus the remaining poles
    have hf₂holo : HolomorphicOn f₂ (Rectangle z w \ (S : Set ℂ)) := by
      intro s hs
      by_cases hsp : s = p
      · rw [hsp]
        exact (hf₂V.differentiableAt hV).differentiableWithinAt
      · have h1 : DifferentiableWithinAt ℂ f₁
            (Rectangle z w \ ((insert p S : Finset ℂ) : Set ℂ)) s :=
          hf₁holo s ⟨hs.1, by
            simp only [Finset.coe_insert, mem_insert_iff, Finset.mem_coe, not_or]
            exact ⟨hsp, by simpa using hs.2⟩⟩
        have hset : (Rectangle z w \ ((insert p S : Finset ℂ) : Set ℂ))
            = (Rectangle z w \ (S : Set ℂ)) ∩ {p}ᶜ := by
          ext x
          simp only [Finset.coe_insert, Set.mem_sdiff, mem_insert_iff, Finset.mem_coe, not_or,
            mem_inter_iff, mem_compl_iff, mem_singleton_iff]
          tauto
        rw [hset] at h1
        have hpc : {p}ᶜ ∈ 𝓝[Rectangle z w \ (S : Set ℂ)] s :=
          mem_nhdsWithin_of_mem_nhds (isOpen_compl_singleton.mem_nhds hsp)
        rw [differentiableWithinAt_inter' hpc] at h1
        refine h1.congr_of_eventuallyEq ?_ (hf₂eq s hsp)
        filter_upwards [hpc] with x hx
        exact hf₂eq x hx
    -- the principal parts at the other poles are unchanged
    have near₂ : ∀ q ∈ S, (f₂ - fun s => A q / (s - q)) =O[𝓝[≠] q] (1 : ℂ → ℂ) := by
      intro q hq
      have hqp : q ≠ p := fun h => hpS (h ▸ hq)
      have hev : ((f - fun s => A q / (s - q)) - P)
          =ᶠ[𝓝[≠] q] (f₂ - fun s => A q / (s - q)) := by
        have : {p}ᶜ ∈ 𝓝[≠] q :=
          mem_nhdsWithin_of_mem_nhds (isOpen_compl_singleton.mem_nhds hqp)
        filter_upwards [this] with s hs
        simp only [Pi.sub_apply, hf₂eq s hs, hf₁]
        ring
      have hPO : P =O[𝓝[≠] q] (1 : ℂ → ℂ) := by
        have hc : ContinuousAt P q := (hPdiff q hqp).continuousAt
        exact (hc.tendsto.mono_left nhdsWithin_le_nhds).isBigO_one ℂ
      exact ((near q (Finset.mem_insert_of_mem hq)).sub hPO).congr' hev EventuallyEq.rfl
    have ih' := ih hS' hf₂holo near₂
    -- on the border, f = f₂ + P
    have hborder : EqOn f (f₂ + P) (RectangleBorder z w) := by
      intro s hs
      have hsp : s ≠ p := fun h => not_mem_rectangleBorder_of_rectangle_mem_nhds hp (h ▸ hs)
      simp only [Pi.add_apply, hf₂eq s hsp, hf₁, Pi.sub_apply, sub_add_cancel]
    have hbS : ∀ s ∈ RectangleBorder z w, s ∈ Rectangle z w \ (S : Set ℂ) := fun s hs =>
      ⟨rectangleBorder_subset_rectangle z w hs,
        fun hsS => not_mem_rectangleBorder_of_rectangle_mem_nhds (hS' s hsS) hs⟩
    have hi₂ : RectangleBorderIntegrable f₂ z w :=
      ContinuousOn.rectangleBorder_integrable (hf₂holo.continuousOn.mono hbS)
    have hiP : RectangleBorderIntegrable P z w := by
      apply ContinuousOn.rectangleBorder_integrable
      intro s hs
      have hsp : s ≠ p := fun h => not_mem_rectangleBorder_of_rectangle_mem_nhds hp (h ▸ hs)
      exact (hPdiff s hsp).continuousAt.continuousWithinAt
    rw [RectangleIntegral'_congr hborder, Finset.sum_insert hpS]
    show (1 / (2 * π * I)) • RectangleIntegral (f₂ + P) z w = _
    rw [RectangleBorderIntegrable.add hi₂ hiP, smul_add]
    show RectangleIntegral' f₂ z w + RectangleIntegral' P z w = _
    rw [ih', ResidueTheoremInRectangle hre him hp, add_comm]

/-- The zero set of a function analytic on a neighbourhood of every point of a rectangle and
nonvanishing at one of its points is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db30df619c414827f45a20b95fd173edd3600ee1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
