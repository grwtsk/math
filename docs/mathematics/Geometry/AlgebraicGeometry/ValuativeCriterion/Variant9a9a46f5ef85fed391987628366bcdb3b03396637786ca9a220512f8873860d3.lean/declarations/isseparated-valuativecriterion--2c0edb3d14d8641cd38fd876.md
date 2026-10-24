# IsSeparated.valuativeCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2271f79-37a9-c18d-10bb-18e8ef6cafca",
  "kind": "lemma",
  "lexical_name": "IsSeparated.valuativeCriterion",
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
  "slug": "isseparated-valuativecriterion--2c0edb3d14d8641cd38fd876",
  "source": {
    "blob": "852a5669d01da7cb8656f8daf081620a6f260c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 282,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0edb3d14d8641cd38fd876aa291fee46676d214dc2588c0ea2c90176f8fa9a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2271f79-37a9-c18d-10bb-18e8ef6cafca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSeparated.valuativeCriterion [IsSeparated f] : ValuativeCriterion.Uniqueness f := by
  intro S
  constructor
  rintro ⟨l₁, hl₁, hl₁'⟩ ⟨l₂, hl₂, hl₂'⟩
  ext : 1
  dsimp at *
  have h := hl₁'.trans hl₂'.symm
  let Z := pullback (pullback.diagonal f) (pullback.lift l₁ l₂ h)
  let g : Z ⟶ Spec ↧S.R := pullback.snd _ _
  have : IsClosedImmersion g := MorphismProperty.pullback_snd _ _ inferInstance
  have hZ : IsAffine Z := by
    rw [@HasAffineProperty.iff_of_isAffine @IsClosedImmersion] at this
    exact this.left
  suffices IsIso g by
    rw [← cancel_epi g]
    conv_lhs => rw [← pullback.lift_fst l₁ l₂ h, ← pullback.condition_assoc]
    conv_rhs => rw [← pullback.lift_snd l₁ l₂ h, ← pullback.condition_assoc]
    simp
  suffices h : Function.Bijective (g.appTop) by
    refine (HasAffineProperty.iff_of_isAffine (P := MorphismProperty.isomorphisms Scheme)).mpr ?_
    exact ⟨hZ, (ConcreteCategory.isIso_iff_bijective _).mpr h⟩
  constructor
  · let l : Spec ↧S.K ⟶ Z :=
      pullback.lift S.i₁ (Spec.map (CommRingCat.ofHom (algebraMap S.R S.K))) (by
        apply IsPullback.hom_ext (IsPullback.of_hasPullback _ _)
        · simpa using hl₁.symm
        · simpa using hl₂.symm)
    have hg : l ≫ g = Spec.map (CommRingCat.ofHom (algebraMap S.R S.K)) :=
      pullback.lift_snd _ _ _
    have : Function.Injective ((l ≫ g).appTop) := by
      rw [hg]
      let e := arrowIsoΓSpecOfIsAffine (CommRingCat.ofHom <| algebraMap S.R S.K)
      let P : MorphismProperty CommRingCat :=
        RingHom.toMorphismProperty <| fun f ↦ Function.Injective f
      have : (RingHom.toMorphismProperty <| fun f ↦ Function.Injective f).RespectsIso :=
        RingHom.toMorphismProperty_respectsIso_iff.mp RingHom.injective_respectsIso
      change P _
      rw [← MorphismProperty.arrow_mk_iso_iff (P := P) e]
      exact FaithfulSMul.algebraMap_injective S.R S.K
    rw [Scheme.Hom.comp_appTop] at this
    exact Function.Injective.of_comp this
  · rw [@HasAffineProperty.iff_of_isAffine @IsClosedImmersion] at this
    exact this.right

/-- The **valuative criterion** for separated morphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `852a5669d01da7cb8656f8daf081620a6f260c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
