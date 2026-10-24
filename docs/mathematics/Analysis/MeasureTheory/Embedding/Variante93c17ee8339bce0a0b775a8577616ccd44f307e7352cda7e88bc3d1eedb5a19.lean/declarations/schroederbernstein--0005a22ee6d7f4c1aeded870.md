# schroederBernstein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86093f32de4ccad7a0b733f52267428c6456174e9ba57132b977a5e31bc739f8",
  "kind": "def",
  "lexical_name": "schroederBernstein",
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
  "slug": "schroederbernstein--0005a22ee6d7f4c1aeded870",
  "source": {
    "blob": "d9ae788d188e89ea8a7dbbc3ec0bad7c616ef600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 777,
    "line": 726,
    "path": "GRWTSK/Analysis/MeasureTheory/Embedding/Variante93c17ee8339bce0a0b775a8577616ccd44f307e7352cda7e88bc3d1eedb5a19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0005a22ee6d7f4c1aeded870bf790866616b93c03c6fa3da0371efc19e5795d8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Embedding/Variante93c17ee8339bce0a0b775a8577616ccd44f307e7352cda7e88bc3d1eedb5a19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86093f32de4ccad7a0b733f52267428c6456174e9ba57132b977a5e31bc739f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–777.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def schroederBernstein {f : α → β} {g : β → α} (hf : MeasurableEmbedding f)
    (hg : MeasurableEmbedding g) : α ≃ᵐ β := by
  let F : Set α → Set α := fun A => (g '' (f '' A)ᶜ)ᶜ
  -- We follow the proof of the usual SB theorem in mathlib,
  -- the crux of which is finding a fixed point of this F.
  -- However, we must find this fixed point manually instead of invoking Knaster-Tarski
  -- in order to make sure it is measurable.
  suffices Σ' A : Set α, MeasurableSet A ∧ F A = A by
    classical
    rcases this with ⟨A, Ameas, Afp⟩
    let B := f '' A
    have Bmeas : MeasurableSet B := hf.measurableSet_image' Ameas
    refine (MeasurableEquiv.sumCompl Ameas).symm.trans
      (MeasurableEquiv.trans ?_ (MeasurableEquiv.sumCompl Bmeas))
    apply MeasurableEquiv.sumCongr (hf.equivImage _)
    have : Aᶜ = g '' Bᶜ := by
      apply compl_injective
      rw [← Afp]
      simp [F, B]
    rw [this]
    exact (hg.equivImage _).symm
  have Fmono : ∀ {A B}, A ⊆ B → F A ⊆ F B := fun h =>
    compl_subset_compl.mpr <| Set.image_mono <| compl_subset_compl.mpr <| Set.image_mono h
  let X : ℕ → Set α := fun n => F^[n] univ
  refine ⟨iInter X, ?_, ?_⟩
  · refine MeasurableSet.iInter fun n ↦ ?_
    induction n with
    | zero => exact MeasurableSet.univ
    | succ n ih =>
      rw [Function.iterate_succ', Function.comp_apply]
      exact (hg.measurableSet_image' (hf.measurableSet_image' ih).compl).compl
  apply subset_antisymm
  · apply subset_iInter
    intro n
    cases n
    · exact subset_univ _
    rw [Function.iterate_succ', Function.comp_apply]
    exact Fmono (iInter_subset _ _)
  rintro x hx ⟨y, hy, rfl⟩
  rw [mem_iInter] at hx
  apply hy
  rw [hf.injective.injOn.image_iInter_eq]
  rw [mem_iInter]
  intro n
  specialize hx n.succ
  rw [Function.iterate_succ', Function.comp_apply] at hx
  by_contra h
  apply hx
  exact ⟨y, h, rfl⟩

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Embedding/Variante93c17ee8339bce0a0b775a8577616ccd44f307e7352cda7e88bc3d1eedb5a19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Embedding/Variante93c17ee8339bce0a0b775a8577616ccd44f307e7352cda7e88bc3d1eedb5a19.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ae788d188e89ea8a7dbbc3ec0bad7c616ef600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
