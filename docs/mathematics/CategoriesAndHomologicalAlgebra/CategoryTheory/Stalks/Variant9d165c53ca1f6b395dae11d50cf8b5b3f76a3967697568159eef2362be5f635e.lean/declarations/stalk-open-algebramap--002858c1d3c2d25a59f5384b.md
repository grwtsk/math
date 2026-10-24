# stalk_open_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "402610cb5d8820923fccc00f18e8043a9a2d9cab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 649,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2d7bb97-fd3d-bf4e-2580-7c9b6c37904b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc2e563b-b159-c048-cb2e-1055d0e2c6be",
  "kind": "theorem",
  "lexical_name": "stalk_open_algebraMap",
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
  "slug": "stalk-open-algebramap--002858c1d3c2d25a59f5384b",
  "source": {
    "blob": "402610cb5d8820923fccc00f18e8043a9a2d9cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 649,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:002858c1d3c2d25a59f5384b3e9d6b9e5d423f757cf6b83fcdf6de19a7e245e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2e563b-b159-c048-cb2e-1055d0e2c6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalk_open_algebraMap {X : TopCat} (F : X.Presheaf CommRingCat) {U : Opens X} (x : U) :
    algebraMap (F.obj <| op U) (F.stalk x) = F.germ x :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.stalk_open_algebra_map TopCat.Presheaf.stalk_open_algebraMap

end TopCat.Presheaf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402610cb5d8820923fccc00f18e8043a9a2d9cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
