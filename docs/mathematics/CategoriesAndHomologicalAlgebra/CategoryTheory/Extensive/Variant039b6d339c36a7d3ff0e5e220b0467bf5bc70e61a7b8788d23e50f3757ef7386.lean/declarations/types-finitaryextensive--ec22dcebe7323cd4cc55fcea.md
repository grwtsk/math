# types.finitaryExtensive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c558164cd0b31bc22189274513c62e60604bc8b1562571aa1054d962cf6ea342",
  "kind": "instance",
  "lexical_name": "types.finitaryExtensive",
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
  "slug": "types-finitaryextensive--ec22dcebe7323cd4cc55fcea",
  "source": {
    "blob": "3197df08e8493f681622f9c40699ea7dbcf38828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec22dcebe7323cd4cc55fceaf443062848af3e0dc2063225d7fb8193bb247157",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c558164cd0b31bc22189274513c62e60604bc8b1562571aa1054d962cf6ea342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance types.finitaryExtensive : FinitaryExtensive (Type u) := by
  classical
  rw [finitaryExtensive_iff_of_isTerminal (Type u) PUnit Types.isTerminalPUnit _
      (Types.binaryCoproductColimit _ _)]
  apply BinaryCofan.isVanKampen_mk _ _ (fun X Y => Types.binaryCoproductColimit X Y) _
      fun f g => (Limits.Types.pullbackLimitCone f g).2
  · intro _ _ _ _ f hαX hαY
    constructor
    · refine ⟨⟨hαX.symm⟩, ⟨PullbackCone.isLimitAux' _ ?_⟩⟩
      intro s
      have : ∀ x, ∃! y, s.fst x = Sum.inl y := by
        intro x
        rcases h : s.fst x with val | val
        · simp
        · apply_fun f at h
          cases ((ConcreteCategory.congr_hom s.condition x).symm.trans h).trans
            (ConcreteCategory.congr_hom hαY val :).symm
      delta ExistsUnique at this
      choose l hl hl' using this
      refine ⟨↾(l), ?_, Types.isTerminalPUnit.hom_ext _ _, fun {l'} h₁ _ => ?_⟩
      · ext x
        exact (hl x).symm
      · ext x
        exact hl' x (l' x) (ConcreteCategory.congr_hom h₁ x).symm
    · refine ⟨⟨hαY.symm⟩, ⟨PullbackCone.isLimitAux' _ ?_⟩⟩
      intro s
      have : ∀ x, ∃! y, s.fst x = Sum.inr y := by
        intro x
        rcases h : s.fst x with val | val
        · apply_fun f at h
          cases ((ConcreteCategory.congr_hom s.condition x).symm.trans h).trans
            (ConcreteCategory.congr_hom hαX val :).symm
        · simp
      delta ExistsUnique at this
      choose l hl hl' using this
      refine ⟨↾l, ?_, Types.isTerminalPUnit.hom_ext _ _, fun {l'} h₁ _ => ?_⟩
      · ext x
        exact (hl x).symm
      · ext x
        exact hl' x (l' x) (ConcreteCategory.congr_hom h₁ x).symm
  · intro Z f
    dsimp [Limits.Types.binaryCoproductCocone]
    have : ∀ x, f x = Sum.inl PUnit.unit ∨ f x = Sum.inr PUnit.unit := by
      intro x
      rcases f x with (⟨⟨⟩⟩ | ⟨⟨⟩⟩)
      exacts [Or.inl rfl, Or.inr rfl]
    let eX : { p : Z × PUnit // f p.fst = Sum.inl p.snd } ≃ { x : Z // f x = Sum.inl PUnit.unit } :=
      ⟨fun p => ⟨p.1.1, by convert! p.2⟩, fun x => ⟨⟨_, _⟩, x.2⟩, fun _ => by ext; rfl,
        fun _ => by ext; rfl⟩
    let eY : { p : Z × PUnit // f p.fst = Sum.inr p.snd } ≃ { x : Z // f x = Sum.inr PUnit.unit } :=
      ⟨fun p => ⟨p.1.1, p.2.trans (congr_arg Sum.inr <| Subsingleton.elim _ _)⟩,
        fun x => ⟨⟨_, _⟩, x.2⟩, fun _ => by ext; rfl, fun _ => by ext; rfl⟩
    fapply BinaryCofan.isColimitMk
    · exact fun s => ↾fun x => dite _ (fun h => s.inl <| eX.symm ⟨x, h⟩)
        fun h => s.inr <| eY.symm ⟨x, (this x).resolve_left h⟩
    · intro s
      ext ⟨⟨x, ⟨⟩⟩, _⟩
      dsimp
      split_ifs with h <;> tauto
    · intro s
      ext ⟨⟨x, ⟨⟩⟩, hx⟩
      dsimp
      split_ifs with h
      · cases h.symm.trans hx
      · rfl
    · intro s m e₁ e₂
      ext x
      simp only [TypeCat.Fun.toFun_apply, Types.binaryCoproductCocone_pt, pair_obj_left,
        Functor.const_obj_obj, pair_obj_right, ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk]
      split_ifs
      · rw [← e₁]
        rfl
      · rw [← e₂]
        rfl

section TopCat

/-- (Implementation) An auxiliary lemma for the proof that `TopCat` is finitary extensive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3197df08e8493f681622f9c40699ea7dbcf38828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
