# LightCondensed.internallyProjective_free_natUnionInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b2b2577-1ae8-0fbd-4667-1b444c157571",
  "kind": "theorem",
  "lexical_name": "LightCondensed.internallyProjective_free_natUnionInfty",
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
  "slug": "lightcondensed-internallyprojective-free-natunioninfty--95dc92e4d71895cacea45d86",
  "source": {
    "blob": "6198ecf4cfe62253135d270015027baac93a152e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 302,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95dc92e4d71895cacea45d8640610435948771f7ba1906b7d79251dc348c873d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2b2577-1ae8-0fbd-4667-1b444c157571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem LightCondensed.internallyProjective_free_natUnionInfty :
    InternallyProjective ((free R).obj (ℕ∪{∞}).toCondensed) := by
  rw [free_lightProfinite_internallyProjective_iff_tensor_condition' R ℕ∪{∞}]
  intro X Y p hp S f
  obtain ⟨T, π, g, hπ, comm⟩ := LightCondMod.factorsThru_lightProfinite_epi_of_epi R p f
  obtain ⟨S', T', y', π', g', hπ', hy', comp, ⟨⟨split⟩⟩, epi⟩ := aux π
  refine ⟨S', y', (LightProfinite.epi_iff_surjective _).mp inferInstance, ?_⟩
  -- There is a commutative square
  -- T' -> S' ⊗ ℕ∪{∞}
  -- |        |
  -- v        v
  -- X  ->    Y
  -- and the goal is a diagonal map such that the lower right triangle
  -- commutes. The diagonal map is obtained by using the cone `c` and the fact
  -- that T' -> S' ⊗ N∪{∞} is an effective epimorphism.
  by_cases hS' : Nonempty S'
  · -- First construct a splitting of the fibre inclusion using injectivity
    -- of light profinite sets.
    have : Mono (LightProfinite.fibreIncl ∞ (π' ≫ snd _ _)) := by
      rw [CompHausLike.mono_iff_injective]
      exact Subtype.val_injective
    have : Nonempty (LightProfinite.fibre ∞ (π' ≫ snd _ _)) := by
      obtain ⟨x, hx⟩ := (.comp ((fun y ↦ ⟨(Nonempty.some inferInstance, y), rfl⟩))
        ((LightProfinite.epi_iff_surjective _).mp hπ') : ((snd S' ℕ∪{∞}) ∘ π').Surjective) ∞
      exact ⟨x, by simpa using hx⟩
    obtain ⟨r_inf, hr⟩ := Injective.factors (𝟙 _) (LightProfinite.fibreIncl ∞ (π' ≫ snd _ _))
    let hπ'' : RegularEpi <| lightProfiniteToLightCondSet.map π' :=
      regularEpiOfEpi _
    have : EffectiveEpi π' := by
      rw [LightProfinite.effectiveEpi_iff_surjective, ← LightProfinite.epi_iff_surjective]
      infer_instance
    let hπ' : RegularEpi <| lightProfiniteToLightCondSet.map π' :=
      regularEpiOfPreserves π' _ (pullback.cone _ _) (pullback.isLimit _ _)
    -- Use the effective epimorphism to descend the map from `T'` to `S' ⊗ ℕ∪{∞}`
    have hc := Limits.isColimitOfPreserves (free R) hπ'.isColimit
    refine ⟨hc.desc (cocone R π' ((lightProfiniteToLightCondSet ⋙ free R).map g' ≫ g)
      r_inf split.section_ hr), ?_⟩
    rw [← cancel_epi ((lightProfiniteToLightCondSet ⋙ free R).map π'),
      ← Functor.comp_map, ← map_comp_assoc]
    change _ = (((free R).mapCocone _).ι.app .one ≫
      hc.desc (cocone R π' _ r_inf split.section_ hr)) ≫ p
    -- Because the top in the square above is epic, proving that the lower
    -- triangle commutes is equivalent to proving that the upper triangle
    -- commutes, which is true by the universal property of the colimit.
    rw [hc.fac]
    -- simp? [← comm] says:
    simp only [Limits.parallelPair_obj_one, Functor.comp_map, Functor.map_comp,
      assoc, cocone_ι_app, eqToHom_refl, Preadditive.comp_add, Preadditive.comp_sub,
      id_comp, Preadditive.add_comp, Preadditive.sub_comp, ← comm]
    simp only [← Functor.map_comp, ← Functor.comp_map, ← assoc, ← comp]
    symm
    rw [sub_add, sub_eq_self, sub_eq_zero]
    simp only [Category.assoc]
    have : LightProfinite.fibreIncl ∞ (π' ≫ snd _ _) ≫ π' =
        LightProfinite.fibreIncl ∞ (π' ≫ snd _ _) ≫ π' ≫ fst _ _ ≫
          lift (𝟙 _) (const S' (∞ : ℕ∪{∞})) :=
      CartesianMonoidalCategory.hom_ext _ _ rfl (by ext a; exact a.prop)
    rw [reassoc_of% this, reassoc_of% split.id]
  · have h : IsEmpty (S' ⊗ ℕ∪{∞}) := isEmpty_prod.mpr <| Or.inl <| by simpa using hS'
    have : IsIso π' := ⟨ConcreteCategory.ofHom ⟨(h.elim ·), continuous_of_const <| by aesop⟩,
      by ext x; exact h.elim (π' x), by ext x; all_goals exact h.elim x⟩
    exact ⟨(lightProfiniteToLightCondSet ⋙ free R).map (inv π' ≫ g') ≫ g, by grind⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6198ecf4cfe62253135d270015027baac93a152e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
