# cluster

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36c0b64a20c8d18bc71a867ea79d9868c2682c5bf568c29d4d9758b24ee338df",
  "kind": "def",
  "lexical_name": "cluster",
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
  "slug": "cluster--5a64eed111de21d70f2cc2a3",
  "source": {
    "blob": "e520aa72abf79c2d8195434ace3f954efbed044e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a64eed111de21d70f2cc2a33cdbe34f82dfc9fe8f21885f69e13b14d11cecae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36c0b64a20c8d18bc71a867ea79d9868c2682c5bf568c29d4d9758b24ee338df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cluster [BEq α] [Hashable α] [BEq β] [Hashable β] (f : α → Array β)
    (as : Array α) : Array (Array α) := Id.run do
  let mut clusters := UnionFind.ofArray as
  let mut aOccs : Std.HashMap β (Array α) := {}
  for a in as do
    for b in f a do
      match aOccs[b]? with
      | some as' =>
        for a' in as' do
          clusters := clusters.merge a a'
        aOccs := aOccs.insert b (as'.push a)
      | none =>
        aOccs := aOccs.insert b #[a]
  return clusters.sets.fst

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e520aa72abf79c2d8195434ace3f954efbed044e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
