# colimitAuxiliaryCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8dd0935e3104887ede4952e5c0d9d328eb8b36e5bf0986a90532f2017a6dac1",
  "kind": "def",
  "lexical_name": "colimitAuxiliaryCocone",
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
  "slug": "colimitauxiliarycocone--197445e833a8280ea4a5d223",
  "source": {
    "blob": "ed3753eed76fb7f46bc3513ca4d6467ca15c8947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:197445e833a8280ea4a5d223663619bf9b49d111a46406915016e13f6643e744",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8dd0935e3104887ede4952e5c0d9d328eb8b36e5bf0986a90532f2017a6dac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitAuxiliaryCocone (c₂ : Cocone (F ⋙ snd L R)) : Cocone ((F ⋙ fst L R) ⋙ L) :=
  (Cocones.precompose (whiskerLeft F (Comma.natTrans L R) :)).obj (R.mapCocone c₂)

/--
If `L` preserves the appropriate colimit, then given a colimit cocone for `F ⋙ fst L R : J ⥤ L` and
a cocone for `F ⋙ snd L R : J ⥤ R` we can build a cocone for `F` which will turn out to be a
colimit cocone.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3753eed76fb7f46bc3513ca4d6467ca15c8947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
