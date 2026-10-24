# locally_surjective_iff_surjective_on_stalks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7b11fec-dd9e-5722-23e3-35de74e69410",
  "kind": "theorem",
  "lexical_name": "locally_surjective_iff_surjective_on_stalks",
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
  "slug": "locally-surjective-iff-surjective-on-stalks--0d74006c1ccc2831982e6071",
  "source": {
    "blob": "2d1471355f15c7a57a514940ad3b0018a1df6218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant69b75317fc25ada116f9345e0bed6d23bf4c8eac49a1b80753af305d7cbdc949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d74006c1ccc2831982e60715e2ca7a6734c0877fb0004d3314d6d8c1079fb23",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant69b75317fc25ada116f9345e0bed6d23bf4c8eac49a1b80753af305d7cbdc949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b11fec-dd9e-5722-23e3-35de74e69410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locally_surjective_iff_surjective_on_stalks (T : ℱ ⟶ 𝒢) :
    IsLocallySurjective T ↔ ∀ x : X, Function.Surjective ((stalkFunctor C x).map T) := by
  constructor <;> intro hT
  · /- human proof:
        Let g ∈ Γₛₜ 𝒢 x be a germ. Represent it on an open set U ⊆ X
        as ⟨t, U⟩. By local surjectivity, pass to a smaller open set V
        on which there exists s ∈ Γ_ ℱ V mapping to t |_ V.
        Then the germ of s maps to g -/
    -- Let g ∈ Γₛₜ 𝒢 x be a germ.
    intro x g
    -- Represent it on an open set U ⊆ X as ⟨t, U⟩.
    obtain ⟨U, hxU, t, rfl⟩ := 𝒢.germ_exist x g
    -- By local surjectivity, pass to a smaller open set V
    -- on which there exists s ∈ Γ_ ℱ V mapping to t |_ V.
    rcases hT.imageSieve_mem t x hxU with ⟨V, ι, ⟨s, h_eq⟩, hxV⟩
    -- Then the germ of s maps to g.
    use ℱ.germ _ x hxV s
    simp [h_eq, germ_res_apply]
  · /- human proof:
        Let U be an open set, t ∈ Γ ℱ U a section, x ∈ U a point.
        By surjectivity on stalks, the germ of t is the image of
        some germ f ∈ Γₛₜ ℱ x. Represent f on some open set V ⊆ X as ⟨s, V⟩.
        Then there is some possibly smaller open set x ∈ W ⊆ V ∩ U on which
        we have T(s) |_ W = t |_ W. -/
    constructor
    intro U t x hxU
    set t_x := 𝒢.germ _ x hxU t with ht_x
    obtain ⟨s_x, hs_x : ((stalkFunctor C x).map T) s_x = t_x⟩ := hT x t_x
    obtain ⟨V, hxV, s, rfl⟩ := ℱ.germ_exist x s_x
    -- rfl : ℱ.germ x s = s_x
    have key_W := 𝒢.germ_eq x hxV hxU (T.app _ s) t <| by
      convert hs_x using 1
      symm
      convert stalkFunctor_map_germ_apply _ _ _ _ s
    obtain ⟨W, hxW, hWV, hWU, h_eq⟩ := key_W
    refine ⟨W, hWU, ⟨ℱ.map hWV.op s, ?_⟩, hxW⟩
    convert h_eq using 1
    simp only [← ConcreteCategory.comp_apply, T.naturality]

end SurjectiveOnStalks

end LocallySurjective

end TopCat.Presheaf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant69b75317fc25ada116f9345e0bed6d23bf4c8eac49a1b80753af305d7cbdc949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant69b75317fc25ada116f9345e0bed6d23bf4c8eac49a1b80753af305d7cbdc949.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1471355f15c7a57a514940ad3b0018a1df6218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
