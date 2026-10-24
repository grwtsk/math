# essentiallySmall_costructuredArrow_Spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b8e3733-c2ca-362e-8aa6-0dc4a7165a13",
  "kind": "lemma",
  "lexical_name": "essentiallySmall_costructuredArrow_Spec",
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
  "slug": "essentiallysmall-costructuredarrow-spec--67746453a5fd32f21d6d5d03",
  "source": {
    "blob": "0abee0426da3e6702b25c083deaa0fca4efd13e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 155,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67746453a5fd32f21d6d5d0322cb1383dc835432b4cf9b0dbad84909e242160e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8e3733-c2ca-362e-8aa6-0dc4a7165a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essentiallySmall_costructuredArrow_Spec
    (P : MorphismProperty Scheme.{u}) (hP : P ≤ @LocallyOfFiniteType) [P.RespectsIso] :
    EssentiallySmall.{u} (P.CostructuredArrow ⊤ Scheme.Spec X) := by
  let F := MorphismProperty.CostructuredArrow.forget P ⊤ Scheme.Spec X ⋙ CostructuredArrow.proj _ _
  refine .of_functor F ?_ ?_
  · let Q' : ObjectProperty CommRingCat.{u} := fun S ↦
      ∃ R, (R ∈ Set.range fun U ↦ Γ(X, U)) ∧ ∃ (f : R ⟶ S), f.hom.FiniteType
    have : Q'.EssentiallySmall := CommRingCat.essentiallySmall_of_finiteType fun S ↦ id
    suffices ObjectProperty.EssentiallySmall.{u} (· ∈ Set.range (Opposite.unop ∘ F.obj)) by
      rw [← ObjectProperty.essentiallySmall_unop_iff]
      refine .of_le (Q := .isoClosure (· ∈ Set.range (Opposite.unop ∘ F.obj))) ?_
      exact fun R ⟨S, e⟩ ↦ ⟨_, ⟨S, rfl⟩, ⟨e.some.unop⟩⟩
    refine CommRingCat.essentiallySmall_of_localizationAway (Q := Q'.isoClosure) ?_
    rintro _ ⟨S, rfl⟩
    have (q : Spec (F.obj S).unop) : ∃ f, q ∈ PrimeSpectrum.basicOpen f ∧
        Q' Γ(Spec (F.obj S).unop, PrimeSpectrum.basicOpen f) := by
      obtain ⟨_, ⟨U, hU, rfl⟩, hqU, -⟩ :=
        X.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ <| S.hom q) isOpen_univ
      obtain ⟨_, ⟨_, ⟨f, rfl⟩, rfl⟩, hqf, hfU⟩ :=
        PrimeSpectrum.isBasis_basic_opens.exists_subset_of_mem_open hqU (S.hom ⁻¹ᵁ U).isOpen
      have : LocallyOfFiniteType S.hom := hP _ S.prop
      exact ⟨f, hqf, _, ⟨U, rfl⟩, S.hom.appLE _ _ hfU,
        (S.hom.finiteType_appLE hU (.Spec_basicOpen _)) _⟩
    choose f hqf hf using this
    refine ⟨Set.range f, PrimeSpectrum.iSup_basicOpen_eq_top_iff.mp ?_, Set.forall_mem_range.mpr ?_⟩
    · exact top_le_iff.mp fun x _ ↦ TopologicalSpace.Opens.mem_iSup.mpr ⟨x, hqf _⟩
    · dsimp
      exact fun q ↦ ⟨_, hf q, ⟨(IsLocalization.algEquiv (.powers (f q)) _
        ((Spec.structureSheaf _).obj.obj (op _))).toRingEquiv.toCommRingCatIso⟩⟩
  · intro R
    refine ⟨.ofObj fun f : { f : Spec R.unop ⟶ X // P f } ↦ .mk _ f.1 f.2, inferInstance, ?_⟩
    refine fun S ⟨e⟩ ↦ ⟨_, .mk ⟨Spec.map e.inv.unop ≫ S.hom, ?_⟩,
      ⟨MorphismProperty.CostructuredArrow.isoMk e trivial trivial ?_⟩⟩
    · simp [← Spec.map_comp_assoc, F]
    · exact (P.cancel_left_of_respectsIso _ _).mpr S.prop

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0abee0426da3e6702b25c083deaa0fca4efd13e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
