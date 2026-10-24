# spread_out_unique_of_isGermInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b6174e7-784c-e60c-fb85-14331ee41a11",
  "kind": "lemma",
  "lexical_name": "spread_out_unique_of_isGermInjective",
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
  "slug": "spread-out-unique-of-isgerminjective--c80246af4e529f839a8be80a",
  "source": {
    "blob": "ef13b5ad96266265cbfea56ba0f7d68252c237ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 201,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80246af4e529f839a8be80a4ed002e7e370950d46a70b87078130dffddb9baf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b6174e7-784c-e60c-fb85-14331ee41a11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spread_out_unique_of_isGermInjective {x : X} [X.IsGermInjectiveAt x]
    (f g : X ⟶ Y) (e : f.base x = g.base x)
    (H : f.stalkMap x =
      Y.presheaf.stalkSpecializes (Inseparable.of_eq e.symm).specializes ≫ g.stalkMap x) :
    ∃ (U : X.Opens), x ∈ U ∧ U.ι ≫ f = U.ι ≫ g := by
  obtain ⟨_, ⟨V : Y.Opens, hV, rfl⟩, hxV, -⟩ :=
    (isBasis_affine_open Y).exists_subset_of_mem_open (Set.mem_univ (f.base x)) isOpen_univ
  have hxV' : g.base x ∈ V := e ▸ hxV
  obtain ⟨U, hxU, _, hUV, HU⟩ := X.exists_le_and_germ_injective x (f ⁻¹ᵁ V ⊓ g ⁻¹ᵁ V) ⟨hxV, hxV'⟩
  refine ⟨U, hxU, ?_⟩
  rw [← Scheme.Hom.resLE_comp_ι _ (hUV.trans inf_le_left),
    ← Scheme.Hom.resLE_comp_ι _ (hUV.trans inf_le_right)]
  congr 1
  have : IsAffine V := hV
  suffices ∀ (U₀ V₀) (eU : U = U₀) (eV : V = V₀),
      f.appLE V₀ U₀ (eU ▸ eV ▸ hUV.trans inf_le_left) =
        g.appLE V₀ U₀ (eU ▸ eV ▸ hUV.trans inf_le_right) by
    rw [← cancel_mono V.toScheme.isoSpec.hom]
    simp only [Scheme.isoSpec, asIso_hom, Scheme.toSpecΓ_naturality,
      Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE]
    congr 2
    apply this <;> simp
  rintro U V rfl rfl
  have := ConcreteCategory.mono_of_injective _ HU
  rw [← cancel_mono (X.presheaf.germ U x hxU)]
  simp only [Scheme.Hom.appLE, Category.assoc, X.presheaf.germ_res', ← Scheme.stalkMap_germ, H]
  simp only [TopCat.Presheaf.germ_stalkSpecializes_assoc, Scheme.stalkMap_germ]

/--
A variant of `spread_out_unique_of_isGermInjective`
whose condition is an equality of scheme morphisms instead of ring homomorphisms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef13b5ad96266265cbfea56ba0f7d68252c237ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
