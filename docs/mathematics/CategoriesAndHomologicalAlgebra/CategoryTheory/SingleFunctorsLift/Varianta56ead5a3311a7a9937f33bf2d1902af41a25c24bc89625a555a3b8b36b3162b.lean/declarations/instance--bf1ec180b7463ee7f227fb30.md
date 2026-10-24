# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6dcba012dc8d94371588e925d8633a7405ff15515f8c14a8e8c2e40419f6d69",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bf1ec180b7463ee7f227fb30",
  "source": {
    "blob": "dbe74d0b4d2177aec1cf68fd335e6125a403eb29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf1ec180b7463ee7f227fb30c768263a8796fe0b776981fd4951afca6dbe658a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6dcba012dc8d94371588e925d8633a7405ff15515f8c14a8e8c2e40419f6d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Preadditive C] [Preadditive D] [Preadditive E] [G.Additive] (a : A)
    [(F.functor a).Additive] : ((lift F G Φ hΦ).functor a).Additive := by
  have : ((lift F G Φ hΦ).functor a ⋙ G).Additive := by
    dsimp
    rwa [Functor.additive_iff_of_iso (hΦ a)]
  exact Functor.additive_of_comp_faithful _ G

end SingleFunctors

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbe74d0b4d2177aec1cf68fd335e6125a403eb29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
