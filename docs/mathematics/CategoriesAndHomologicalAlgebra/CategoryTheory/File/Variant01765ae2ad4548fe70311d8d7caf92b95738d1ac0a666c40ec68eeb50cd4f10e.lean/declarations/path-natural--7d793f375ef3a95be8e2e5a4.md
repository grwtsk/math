# path_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93acdca1ec3015ef69682d04ed48c1c237332ae8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1a963f7-1b00-d00d-f54f-19b47178db21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fab101a8-8898-ed50-33c3-26dcc75ed467",
  "kind": "theorem",
  "lexical_name": "path_natural",
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
  "slug": "path-natural--7d793f375ef3a95be8e2e5a4",
  "source": {
    "blob": "93acdca1ec3015ef69682d04ed48c1c237332ae8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/File/Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d793f375ef3a95be8e2e5a4c240d9e9677bb95c0c325617b138a7906de6d44d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/File/Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fab101a8-8898-ed50-33c3-26dcc75ed467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem path_natural
    {C : Type u} [Category.{v} C]
    (X : File.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.path.value U (X.restrict f s) =
      X.path.value V s :=
  X.path.naturality f s

end File
end Sheaf
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/File/Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/File/Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93acdca1ec3015ef69682d04ed48c1c237332ae8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
