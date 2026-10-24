# Subtype.totallyDisconnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3952c9812a3dc8e560c5c9dfa96e54599291f9b94d0277a9e2be9c4ff2b05fcb",
  "kind": "instance",
  "lexical_name": "Subtype.totallyDisconnectedSpace",
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
  "slug": "subtype-totallydisconnectedspace--1f3617eb6396a2189bd3d03f",
  "source": {
    "blob": "756ada11aa156d1ddcb36dd5ccaf9a28f9687895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f3617eb6396a2189bd3d03f282f22f3ec0de2139d3c8cf162d5fc83e27be6be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3952c9812a3dc8e560c5c9dfa96e54599291f9b94d0277a9e2be9c4ff2b05fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subtype.totallyDisconnectedSpace {α : Type*} {p : α → Prop} [TopologicalSpace α]
    [TotallyDisconnectedSpace α] : TotallyDisconnectedSpace (Subtype p) :=
  totallyDisconnectedSpace_subtype_iff.2 (isTotallyDisconnected_of_totallyDisconnectedSpace _)

end TotallyDisconnected

section TotallySeparated

/-- A set `s` is called totally separated if any two points of this set can be separated
by two disjoint open sets covering `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756ada11aa156d1ddcb36dd5ccaf9a28f9687895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
