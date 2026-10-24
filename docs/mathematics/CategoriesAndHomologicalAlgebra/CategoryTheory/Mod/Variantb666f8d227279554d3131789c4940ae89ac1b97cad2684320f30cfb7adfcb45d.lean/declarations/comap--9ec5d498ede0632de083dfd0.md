# comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f1573c34fc5bc71399f7ba845e597ed3a013031c84c73217707f9964bbda765",
  "kind": "def",
  "lexical_name": "comap",
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
  "slug": "comap--9ec5d498ede0632de083dfd0",
  "source": {
    "blob": "7ee98550b8afa5ab7c3a59be4fab1e631518fd90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 403,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantb666f8d227279554d3131789c4940ae89ac1b97cad2684320f30cfb7adfcb45d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ec5d498ede0632de083dfd0855864ec11a7864973e718ee9809798e962f208d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantb666f8d227279554d3131789c4940ae89ac1b97cad2684320f30cfb7adfcb45d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f1573c34fc5bc71399f7ba845e597ed3a013031c84c73217707f9964bbda765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comap {A B : C} [MonObj A] [MonObj B] (f : A ⟶ B) [IsMonHom f] :
    Mod D B ⥤ Mod D A where
  obj M :=
    letI := scalarRestriction f M.X
    ⟨M.X⟩
  map {M N} g :=
    letI := scalarRestriction_hom f M.X N.X g.hom
    ⟨g.hom⟩

-- Lots more could be said about `comap`, e.g. how it interacts with
-- identities, compositions, and equalities of monoid object morphisms.

end comap

end Mod

namespace Mod_

@[deprecated (since := "2026-04-21")] alias assoc_flip := Mod.assoc_flip

@[deprecated (since := "2026-04-21")] alias Hom := Mod.Hom

@[deprecated (since := "2026-04-21")] alias Hom.mk' := Mod.Hom.mk'

@[deprecated (since := "2026-04-21")] alias Hom.mk'' := Mod.Hom.mk''

@[deprecated (since := "2026-04-21")] alias id := Mod.id

@[deprecated (since := "2026-04-21")] alias comp := Mod.comp

@[deprecated (since := "2026-04-21")] alias hom_ext := Mod.hom_ext

@[deprecated (since := "2026-04-21")] alias id_hom' := Mod.id_hom'

@[deprecated (since := "2026-04-21")] alias comp_hom' := Mod.comp_hom'

@[deprecated (since := "2026-04-21")] alias regular := Mod.regular

@[deprecated (since := "2026-04-21")] alias forget := Mod.forget

@[deprecated (since := "2026-04-21")] alias scalarRestriction := Mod.scalarRestriction

@[deprecated (since := "2026-04-21")] alias scalarRestriction_hom := Mod.scalarRestriction_hom

@[deprecated (since := "2026-04-21")] alias comap := Mod.comap

end Mod_

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantb666f8d227279554d3131789c4940ae89ac1b97cad2684320f30cfb7adfcb45d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantb666f8d227279554d3131789c4940ae89ac1b97cad2684320f30cfb7adfcb45d.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee98550b8afa5ab7c3a59be4fab1e631518fd90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
