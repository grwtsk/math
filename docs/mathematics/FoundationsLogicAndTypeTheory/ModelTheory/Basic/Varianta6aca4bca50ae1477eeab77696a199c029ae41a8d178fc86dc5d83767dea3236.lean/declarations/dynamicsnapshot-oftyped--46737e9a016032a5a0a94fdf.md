# DynamicSnapshot.ofTyped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:670823863d8e5f13370c8d1d9290f40a2a307e96b89feea03df71b890231a5bc",
  "kind": "def",
  "lexical_name": "DynamicSnapshot.ofTyped",
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
  "slug": "dynamicsnapshot-oftyped--46737e9a016032a5a0a94fdf",
  "source": {
    "blob": "4a579f0cb536096f0815bd245a64a8151f01937f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 363,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46737e9a016032a5a0a94fdf05d8e602a710092925857181aded96344afc8a87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:670823863d8e5f13370c8d1d9290f40a2a307e96b89feea03df71b890231a5bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DynamicSnapshot.ofTyped [TypeName α] [ToSnapshotTree α] (val : α) : DynamicSnapshot where
  val := .mk val
  toSnapshotTreeM := ToSnapshotTree.toSnapshotTreeM val

/-- Returns the original snapshot value if it is of the given type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a579f0cb536096f0815bd245a64a8151f01937f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
