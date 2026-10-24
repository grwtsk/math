# linearCombination_mapDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1428f8cd922fadbf2308bb22b216201f3e607eda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:254bfabe-fb29-34f5-503c-ea186a0c9c13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92cb74da-1639-7594-0b59-947bf2040010",
  "kind": "theorem",
  "lexical_name": "linearCombination_mapDomain",
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
  "slug": "linearcombination-mapdomain--eb744457c7790e6205fdbe62",
  "source": {
    "blob": "1428f8cd922fadbf2308bb22b216201f3e607eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb744457c7790e6205fdbe62ac2b5f31b4b5989255c531b00ae6789b488bdbf8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92cb74da-1639-7594-0b59-947bf2040010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearCombination_mapDomain (f : α → α') (l : α →₀ R) :
    (linearCombination R v') (mapDomain f l) = (linearCombination R (v' ∘ f)) l :=
  LinearMap.congr_fun (linearCombination_comp_lmapDomain _ _) l

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1428f8cd922fadbf2308bb22b216201f3e607eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
