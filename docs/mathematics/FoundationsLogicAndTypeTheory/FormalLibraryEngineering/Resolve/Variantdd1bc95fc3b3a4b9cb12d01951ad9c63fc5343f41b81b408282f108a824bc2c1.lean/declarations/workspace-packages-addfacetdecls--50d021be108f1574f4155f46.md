# Workspace.packages_addFacetDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12bc63da52e494f596009abb873fad86cfda7530",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26fe33f9-d215-3ec8-36a9-05c56acd2e80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96258db6-fb06-8c87-8eb3-7099b77463f9",
  "kind": "theorem",
  "lexical_name": "Workspace.packages_addFacetDecls",
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
  "slug": "workspace-packages-addfacetdecls--50d021be108f1574f4155f46",
  "source": {
    "blob": "12bc63da52e494f596009abb873fad86cfda7530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50d021be108f1574f4155f46d2bc29677e694fd09dfe73d75fe0f44f518db3c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96258db6-fb06-8c87-8eb3-7099b77463f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Workspace.packages_addFacetDecls :
  (addFacetDecls decls ws).packages = ws.packages
:= by
  simp only [addFacetDecls]
  apply Array.foldl_induction (fun _ (s : Workspace) => s.packages = ws.packages) rfl
  intro i s h
  simp only [packages_addFacetConfig, h]

/--
Loads the package configuration of a materialized dependency.
Adds the package and the facets defined within it to the `Workspace`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bc63da52e494f596009abb873fad86cfda7530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
