# HasProposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cea37732ec1ca38ede946a3a4c465270d63c6a824deb4af6c89dadb6e0ecbd9",
  "kind": "def",
  "lexical_name": "HasProposition",
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
  "slug": "hasproposition--be59f07af484c5d287688810",
  "source": {
    "blob": "36cfd976b43911adfc903f6bcf33f8f868e71dd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be59f07af484c5d28768881059c3eb1c1c456a3481f614f1cc8f63c21482ec02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cea37732ec1ca38ede946a3a4c465270d63c6a824deb4af6c89dadb6e0ecbd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasProposition (index : CanonicalMathematicalIndex)
    (id : PropositionId) : Prop :=
  ∃ record ∈ index.propositions.entries, record.identity = id

/-- Cross-reference validity for the finite index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cfd976b43911adfc903f6bcf33f8f868e71dd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
