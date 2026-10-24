# instInvCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73e304e7f073018a396878db4c1ad7a7e860a16c2f29f1286d2cef22b00e57a2",
  "kind": "instance",
  "lexical_name": "instInvCompletion",
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
  "slug": "instinvcompletion--327d1386e0150fa80f1c6b03",
  "source": {
    "blob": "29357e36903c9043687627edefc84cc323ef6eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:327d1386e0150fa80f1c6b03ffc05ff663f44c0585615041a86b80234ad75d6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73e304e7f073018a396878db4c1ad7a7e860a16c2f29f1286d2cef22b00e57a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instInvCompletion : Inv (hat K) :=
  ⟨fun x => if x = 0 then 0 else hatInv x⟩

variable [IsTopologicalDivisionRing K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29357e36903c9043687627edefc84cc323ef6eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
