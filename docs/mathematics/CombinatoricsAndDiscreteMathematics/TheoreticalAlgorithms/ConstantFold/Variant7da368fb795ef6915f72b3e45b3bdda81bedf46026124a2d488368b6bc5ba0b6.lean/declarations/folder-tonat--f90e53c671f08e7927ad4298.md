# Folder.toNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b92679ce6d9f4a9008917700b5344201b11a17a5ba565b05ce9f050ebd6865d",
  "kind": "def",
  "lexical_name": "Folder.toNat",
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
  "slug": "folder-tonat--f90e53c671f08e7927ad4298",
  "source": {
    "blob": "2e48b3f5ebb181f832035e7ec03ab80e8e687eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 491,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f90e53c671f08e7927ad429814a25bc5a9b6160fc75adecd792249b333c50d16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b92679ce6d9f4a9008917700b5344201b11a17a5ba565b05ce9f050ebd6865d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Folder.toNat (args : Array (Arg .pure)) : FolderM (Option (LetValue .pure)) := do
  let #[.fvar fvarId] := args | return none
  let some (.lit lit) ← findLetValue? (pu := .pure) fvarId | return none
  match lit with
  | .uint8 v | .uint16 v | .uint32 v | .uint64 v => return some (.lit (.nat v.toNat))
  | .usize v => if v.toUInt32.toUInt64 == v then return some (.lit (.nat v.toNat)) else return none
  | .nat _ | .str _ => return none

/--
All arithmetic folders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e48b3f5ebb181f832035e7ec03ab80e8e687eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
