# compactOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2d1acd0646030f02262146ae69d1a2b400d1aaa36b3ad7c11962253d2deb21a",
  "kind": "instance",
  "lexical_name": "compactOpen",
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
  "slug": "compactopen--615bb8d5cab458d644cfb2b5",
  "source": {
    "blob": "4147406fcaf630234d7511a9db4a78a189f9b18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:615bb8d5cab458d644cfb2b50a883c4c76135a8707a7fcb10a3b2969e294ce72",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2d1acd0646030f02262146ae69d1a2b400d1aaa36b3ad7c11962253d2deb21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compactOpen : TopologicalSpace C(α, β) :=
  TopologicalSpace.generateFrom
    { m | ∃ (s : Set α) (_ : IsCompact s) (u : Set β) (_ : IsOpen u), m = CompactOpen.gen s u }
#align continuous_map.compact_open ContinuousMap.compactOpen

/-- Definition of `ContinuousMap.compactOpen` in terms of `Set.image2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4147406fcaf630234d7511a9db4a78a189f9b18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
