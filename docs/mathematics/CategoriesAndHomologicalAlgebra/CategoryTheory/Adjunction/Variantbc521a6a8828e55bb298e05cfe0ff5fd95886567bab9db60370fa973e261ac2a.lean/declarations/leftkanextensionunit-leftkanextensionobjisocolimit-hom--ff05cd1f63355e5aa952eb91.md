# leftKanExtensionUnit_leftKanExtensionObjIsoColimit_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9cf3914-2e12-a347-a65f-7eb245d8abff",
  "kind": "lemma",
  "lexical_name": "leftKanExtensionUnit_leftKanExtensionObjIsoColimit_hom",
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
  "slug": "leftkanextensionunit-leftkanextensionobjisocolimit-hom--ff05cd1f63355e5aa952eb91",
  "source": {
    "blob": "3e7350edc65a8636c38b665be2338006d7aa7425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff05cd1f63355e5aa952eb910b8ef0572e923c593e8530a66dae23a4bd9240f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9cf3914-2e12-a347-a65f-7eb245d8abff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftKanExtensionUnit_leftKanExtensionObjIsoColimit_hom (X : C) :
    (L.leftKanExtensionUnit F).app X ≫ (L.leftKanExtensionObjIsoColimit F (L.obj X)).hom =
    colimit.ι (proj L (L.obj X) ⋙ F) (CostructuredArrow.mk (𝟙 _)) := by
  simpa using leftKanExtensionUnit_leftKanExtension_map_leftKanExtensionObjIsoColimit_hom L F
    (L.obj X) (CostructuredArrow.mk (𝟙 _))

@[instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e7350edc65a8636c38b665be2338006d7aa7425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
