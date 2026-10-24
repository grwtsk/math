# HasExplicitFiniteCoproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0eb1c6a031ed0d44f9a653202d0e154873ef67580964b5876e1818a97f2a0b9",
  "kind": "abbrev",
  "lexical_name": "HasExplicitFiniteCoproduct",
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
  "slug": "hasexplicitfinitecoproduct--21a77243ae6d90dd6406d15f",
  "source": {
    "blob": "9a50c398075b2a6096b215eb1e649d9fe1166a13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21a77243ae6d90dd6406d15fb9d1d60b21264902fa6ec446867ce253cc37e7a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0eb1c6a031ed0d44f9a653202d0e154873ef67580964b5876e1818a97f2a0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HasExplicitFiniteCoproduct := HasProp P (Σ (a : α), X a)

variable [HasExplicitFiniteCoproduct X]

/--
The coproduct of a finite family of objects in `CompHaus`, constructed as the disjoint
union with its usual topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a50c398075b2a6096b215eb1e649d9fe1166a13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
