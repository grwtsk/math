# relationFolders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ffd7a696dc0d67def437520489a7ef761fce85164f7e6f14d72334917e7477d",
  "kind": "def",
  "lexical_name": "relationFolders",
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
  "slug": "relationfolders--75628ac4def7dbedda862110",
  "source": {
    "blob": "2e48b3f5ebb181f832035e7ec03ab80e8e687eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 571,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75628ac4def7dbedda8621102eb788056317bd95791622c8f75873c346750711",
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

Occurrence: `declaration:2ffd7a696dc0d67def437520489a7ef761fce85164f7e6f14d72334917e7477d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def relationFolders : List (Name × Folder) := [
  (``Nat.decEq, Folder.mkBinaryDecisionProcedure Nat.decEq),
  (``Nat.decLt, Folder.mkBinaryDecisionProcedure Nat.decLt),
  (``Nat.decLe, Folder.mkBinaryDecisionProcedure Nat.decLe),
  (``UInt8.decEq, Folder.mkBinaryDecisionProcedure UInt8.decEq),
  (``UInt8.decLt, Folder.mkBinaryDecisionProcedure UInt8.decLt),
  (``UInt8.decLe, Folder.mkBinaryDecisionProcedure UInt8.decLe),
  (``UInt16.decEq, Folder.mkBinaryDecisionProcedure UInt16.decEq),
  (``UInt16.decLt, Folder.mkBinaryDecisionProcedure UInt16.decLt),
  (``UInt16.decLe, Folder.mkBinaryDecisionProcedure UInt16.decLe),
  (``UInt32.decEq, Folder.mkBinaryDecisionProcedure UInt32.decEq),
  (``UInt32.decLt, Folder.mkBinaryDecisionProcedure UInt32.decLt),
  (``UInt32.decLe, Folder.mkBinaryDecisionProcedure UInt32.decLe),
  (``UInt64.decEq, Folder.mkBinaryDecisionProcedure UInt64.decEq),
  (``UInt64.decLt, Folder.mkBinaryDecisionProcedure UInt64.decLt),
  (``UInt64.decLe, Folder.mkBinaryDecisionProcedure UInt64.decLe),
  (``USize.decEq, Folder.mkBinaryUSizeDecisionProcedure UInt64.decEq UInt32.decEq),
  (``USize.decLt, Folder.mkBinaryUSizeDecisionProcedure UInt64.decLt UInt32.decLt),
  (``USize.decLe, Folder.mkBinaryUSizeDecisionProcedure UInt64.decLe UInt32.decLe),
  (``Bool.decEq, Folder.mkBinaryDecisionProcedure Bool.decEq),
  (``String.decEq, Folder.mkBinaryDecisionProcedure String.decEq)
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e48b3f5ebb181f832035e7ec03ab80e8e687eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
