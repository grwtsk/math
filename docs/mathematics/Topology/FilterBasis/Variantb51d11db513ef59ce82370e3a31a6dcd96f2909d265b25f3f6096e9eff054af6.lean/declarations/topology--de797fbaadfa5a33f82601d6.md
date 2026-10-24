# topology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fea5a72f611646559897e8fbe177eb88380ed6832da7394f8acb6e749b9e7828",
  "kind": "def",
  "lexical_name": "topology",
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
  "slug": "topology--de797fbaadfa5a33f82601d6",
  "source": {
    "blob": "0559a18212a10cb4bea45bb47c1d18017024e5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 328,
    "path": "GRWTSK/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de797fbaadfa5a33f82601d62517b23b61459b9cbc12eacb72245d1a9dfe4f46",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fea5a72f611646559897e8fbe177eb88380ed6832da7394f8acb6e749b9e7828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topology : TopologicalSpace M :=
  B.toAddGroupFilterBasis.topology

/-- The topology associated to a module filter basis on a module over a topological ring.
It has the given basis as a basis of neighborhoods of zero. This version gets the ring
topology by unification instead of type class inference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0559a18212a10cb4bea45bb47c1d18017024e5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
