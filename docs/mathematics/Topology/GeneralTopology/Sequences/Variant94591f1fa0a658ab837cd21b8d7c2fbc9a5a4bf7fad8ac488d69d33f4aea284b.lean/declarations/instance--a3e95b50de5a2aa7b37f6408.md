# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54706d73afb93a9610382a901fd5085d9f7199f3b83540d6d4cbd242d0e2c24e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a3e95b50de5a2aa7b37f6408",
  "source": {
    "blob": "cd0d40a0bf02b9ca989694919f0eebf6818824be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 303,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3e95b50de5a2aa7b37f6408c57e260ee0658d9432746edccfc483858ac0d13c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54706d73afb93a9610382a901fd5085d9f7199f3b83540d6d4cbd242d0e2c24e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) FirstCountableTopology.seq_compact_of_compact [CompactSpace X] :
    SeqCompactSpace X :=
  ⟨isCompact_univ.isSeqCompact⟩
#align first_countable_topology.seq_compact_of_compact FirstCountableTopology.seq_compact_of_compact

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd0d40a0bf02b9ca989694919f0eebf6818824be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
