# colimitCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:240a1694525e69fbf6e5fd416520ca27d2f020eaebd01457e2812b31bff928b1",
  "kind": "def",
  "lexical_name": "colimitCoconeIsColimit",
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
  "slug": "colimitcoconeiscolimit--71a5268c03a140e4e0c03ab9",
  "source": {
    "blob": "bbfb2ae941aa1aed8564a48a7f6414fefead3bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71a5268c03a140e4e0c03ab9795a72d4b3a67cd63d8946bbc7d2b41b9e7b8875",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:240a1694525e69fbf6e5fd416520ca27d2f020eaebd01457e2812b31bff928b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitCoconeIsColimit : IsColimit (colimitCocone.{v, u} F) where
  desc t := Grp.ofHom
    (MonCat.FilteredColimits.colimitDesc.{v, u} (F ⋙ forget₂ Grp MonCat.{max v u})
      ((forget₂ Grp MonCat).mapCocone t)).hom
  fac t j :=
    ConcreteCategory.coe_ext <|
      (Types.TypeMax.colimitCoconeIsColimit.{v, u} (F ⋙ forget Grp)).fac
      ((forget Grp).mapCocone t) j
  uniq t _ h :=
    ConcreteCategory.coe_ext <|
      (Types.TypeMax.colimitCoconeIsColimit.{v, u} (F ⋙ forget Grp)).uniq
      ((forget Grp).mapCocone t) _
        fun j => funext fun x => ConcreteCategory.congr_hom (h j) x

@[to_additive forget₂AddMon_preservesFilteredColimits]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbfb2ae941aa1aed8564a48a7f6414fefead3bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
