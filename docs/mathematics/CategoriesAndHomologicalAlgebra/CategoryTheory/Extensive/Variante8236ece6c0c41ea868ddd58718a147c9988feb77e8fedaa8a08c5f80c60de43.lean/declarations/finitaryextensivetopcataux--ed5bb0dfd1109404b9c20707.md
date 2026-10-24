# finitaryExtensiveTopCatAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8329501e06d279b8a79577a525a5c2f9d8f74dc99b7f7180f294097d1142d921",
  "kind": "def",
  "lexical_name": "finitaryExtensiveTopCatAux",
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
  "slug": "finitaryextensivetopcataux--ed5bb0dfd1109404b9c20707",
  "source": {
    "blob": "43ac06d9d9d43256235c327f56c59ad5bdf60c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 392,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed5bb0dfd1109404b9c20707e4dd0a0f5169d225a1320df7e054fec7310b5aad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8329501e06d279b8a79577a525a5c2f9d8f74dc99b7f7180f294097d1142d921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finitaryExtensiveTopCatAux (Z : TopCat.{u})
    (f : Z ⟶ TopCat.of (Sum PUnit.{u + 1} PUnit.{u + 1})) :
    IsColimit (BinaryCofan.mk
      (TopCat.pullbackFst f (TopCat.binaryCofan (TopCat.of PUnit) (TopCat.of PUnit)).inl)
      (TopCat.pullbackFst f (TopCat.binaryCofan (TopCat.of PUnit) (TopCat.of PUnit)).inr)) := by
  have : ∀ x, f x = Sum.inl PUnit.unit ∨ f x = Sum.inr PUnit.unit := by
    intro x
    rcases f x with (⟨⟨⟩⟩ | ⟨⟨⟩⟩)
    exacts [Or.inl rfl, Or.inr rfl]
  letI eX : { p : Z × PUnit // f p.fst = Sum.inl p.snd } ≃ { x : Z // f x = Sum.inl PUnit.unit } :=
    ⟨fun p => ⟨p.1.1, p.2.trans (congr_arg Sum.inl <| Subsingleton.elim _ _)⟩,
      fun x => ⟨⟨_, PUnit.unit⟩, x.2⟩, fun _ => by ext; rfl, fun _ => by ext; rfl⟩
  letI eY : { p : Z × PUnit // f p.fst = Sum.inr p.snd } ≃ { x : Z // f x = Sum.inr PUnit.unit } :=
    ⟨fun p => ⟨p.1.1, p.2.trans (congr_arg Sum.inr <| Subsingleton.elim _ _)⟩,
      fun x => ⟨⟨_, PUnit.unit⟩, x.2⟩, fun _ => by ext; rfl, fun _ => by ext; rfl⟩
  fapply BinaryCofan.isColimitMk
  classical -- Porting note: Added
  · refine' fun s => ⟨fun x => dite _
      (fun h => s.inl <| eX.symm ⟨x, h⟩) fun h => s.inr <| eY.symm ⟨x, (this x).resolve_left h⟩, _⟩
    rw [continuous_iff_continuousAt]
    intro x
    by_cases f x = Sum.inl PUnit.unit
    · revert h x
      apply (IsOpen.continuousOn_iff _).mp
      · rw [continuousOn_iff_continuous_restrict]
        convert_to Continuous fun x : { x | f x = Sum.inl PUnit.unit } =>
            s.inl ⟨(x.1, PUnit.unit), x.2⟩
        · ext ⟨x, hx⟩
          exact dif_pos hx
        -- Porting note : this `(BinaryCofan.inl s).2` was unnecessary
        have := (BinaryCofan.inl s).2
        continuity
      · convert f.2.1 _ openEmbedding_inl.open_range
        rename_i x
        exact ⟨fun h => ⟨_, h.symm⟩,
          fun ⟨e, h⟩ => h.symm.trans (congr_arg Sum.inl <| Subsingleton.elim _ _)⟩
    · revert h x
      apply (IsOpen.continuousOn_iff _).mp
      · rw [continuousOn_iff_continuous_restrict]
        convert_to Continuous fun x : { x | f x ≠ Sum.inl PUnit.unit } =>
            s.inr ⟨(x.1, PUnit.unit), (this _).resolve_left x.2⟩
        · ext ⟨x, hx⟩
          exact dif_neg hx
        -- Porting note : this `(BinaryCofan.inr s).2` was unnecessary
        have := (BinaryCofan.inr s).2
        continuity
      · convert f.2.1 _ openEmbedding_inr.open_range
        rename_i x
        change f x ≠ Sum.inl PUnit.unit ↔ f x ∈ Set.range Sum.inr
        trans f x = Sum.inr PUnit.unit
        · rcases f x with (⟨⟨⟩⟩ | ⟨⟨⟩⟩) <;>
            simp only [iff_self_iff, eq_self_iff_true, not_true, Ne.def, not_false_iff]
        · exact ⟨fun h => ⟨_, h.symm⟩,
            fun ⟨e, h⟩ => h.symm.trans (congr_arg Sum.inr <| Subsingleton.elim _ _)⟩
  · intro s
    ext ⟨⟨x, ⟨⟩⟩, (hx : f x = Sum.inl PUnit.unit)⟩
    change dite _ _ _ = _
    split_ifs with h
    · rfl
    · cases (h hx) -- Porting note : in Lean3 it is `rfl`
  · intro s
    ext ⟨⟨x, ⟨⟩⟩, hx⟩
    change dite _ _ _ = _
    split_ifs with h
    · cases h.symm.trans hx
    · rfl
  · intro s m e₁ e₂
    ext x
    change m x = dite _ _ _
    split_ifs
    · rw [← e₁]
      rfl
    · rw [← e₂]
      rfl
set_option linter.uppercaseLean3 false in
#align category_theory.finitary_extensive_Top_aux CategoryTheory.finitaryExtensiveTopCatAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ac06d9d9d43256235c327f56c59ad5bdf60c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
