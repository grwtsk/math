# mk'_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd24e373b44241083605b53458dd44c516c6767c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27dd63dd-b6de-fe50-185f-66a261b92292",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edceb7dd-8df2-ff35-5b53-460c14aea90a",
  "kind": "theorem",
  "lexical_name": "mk'_mul",
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
  "slug": "mk-mul--0e3ec15f5e52bd07c145dcce",
  "source": {
    "blob": "cd24e373b44241083605b53458dd44c516c6767c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 254,
    "path": "GRWTSK/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e3ec15f5e52bd07c145dcce27936f9fc7e6267bb50290b8d18ad00d7e7055d1",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edceb7dd-8df2-ff35-5b53-460c14aea90a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk'_mul (x₁ x₂ : R) (y₁ y₂ : M) : mk' S (x₁ * x₂) (y₁ * y₂) = mk' S x₁ y₁ * mk' S x₂ y₂ :=
  (toLocalizationMap M S).mk'_mul _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd24e373b44241083605b53458dd44c516c6767c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
