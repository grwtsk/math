# LawfulBitraversable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71586b73283bd3469604b6600a0ff7ef841166beca6abb9e2daa774a590a5d52",
  "kind": "class",
  "lexical_name": "LawfulBitraversable",
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
  "slug": "lawfulbitraversable--00af007351c31d0ae169fc55",
  "source": {
    "blob": "3c67682047b57252fb850cabfc36a120f4c2ec28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00af007351c31d0ae169fc552689a2506d6798e9e689ea20193fd2db222a6183",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71586b73283bd3469604b6600a0ff7ef841166beca6abb9e2daa774a590a5d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulBitraversable (t : Type u → Type u → Type u) [Bitraversable t] : Prop
  extends LawfulBifunctor t where
  id_bitraverse : ∀ {α β} (x : t α β), (bitraverse pure pure x : Id _) = pure x
  comp_bitraverse :
    ∀ {F G} [Applicative F] [Applicative G] [LawfulApplicative F] [LawfulApplicative G]
      {α α' β β' γ γ'} (f : β → F γ) (f' : β' → F γ') (g : α → G β) (g' : α' → G β') (x : t α α'),
      bitraverse (Comp.mk ∘ map f ∘ g) (Comp.mk ∘ map f' ∘ g') x =
        Comp.mk (bitraverse f f' <$> bitraverse g g' x)
  bitraverse_eq_bimap_id :
    ∀ {α α' β β'} (f : α → β) (f' : α' → β') (x : t α α'),
      bitraverse (m := Id) (pure ∘ f) (pure ∘ f') x = pure (bimap f f' x)
  binaturality :
    ∀ {F G} [Applicative F] [Applicative G] [LawfulApplicative F] [LawfulApplicative G]
      (η : ApplicativeTransformation F G) {α α' β β'} (f : α → F β) (f' : α' → F β') (x : t α α'),
      η (bitraverse f f' x) = bitraverse (@η _ ∘ f) (@η _ ∘ f') x

export LawfulBitraversable (id_bitraverse comp_bitraverse bitraverse_eq_bimap_id)

open LawfulBitraversable

attribute [higher_order bitraverse_id_id] id_bitraverse

attribute [higher_order bitraverse_comp] comp_bitraverse

attribute [higher_order] binaturality bitraverse_eq_bimap_id

export LawfulBitraversable (bitraverse_id_id bitraverse_comp)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaaf6a64c2ccb999e4f27bf65c77b0e9c67f670866d4ffbe3f2a8e0773de03bb1.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c67682047b57252fb850cabfc36a120f4c2ec28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
