# IsClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6ccfe11250c2d0d9d021e5f5096e9d78ddd25f2e8bed51ea0c1bf8f8511da3a",
  "kind": "structure",
  "lexical_name": "IsClosedEmbedding",
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
  "slug": "isclosedembedding--6e2dd20907ff0cc0ab2bb149",
  "source": {
    "blob": "be561ceadc28b663fcaf5103e172ff8fcc113998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e2dd20907ff0cc0ab2bb149f14ae8c64ea247d6aa8c181f0eedb8f4313febe7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6ccfe11250c2d0d9d021e5f5096e9d78ddd25f2e8bed51ea0c1bf8f8511da3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsClosedEmbedding (f : X → Y) : Prop extends IsEmbedding f where
  /-- The range of a closed embedding is a closed set. -/
  isClosed_range : IsClosed <| range f

/-- A function between topological spaces is a quotient map if it is surjective,
  and for all `s : Set Y`, `s` is open iff its preimage is an open set. -/
@[mk_iff isQuotientMap_iff']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be561ceadc28b663fcaf5103e172ff8fcc113998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
