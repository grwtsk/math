# findLeadingSpacesSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bafae86f66abe677caa5e197e377426089e32cfe0f7a4e1f93cc9c4923ecc2fb",
  "kind": "def",
  "lexical_name": "findLeadingSpacesSize",
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
  "slug": "findleadingspacessize--83ba92bc1d22fc63f1696847",
  "source": {
    "blob": "dbef81a10bc862671ba672f47aa11d2fbf4407fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83ba92bc1d22fc63f16968478ce16fc7f94e7bb018581e53b095ecf3a063bf59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bafae86f66abe677caa5e197e377426089e32cfe0f7a4e1f93cc9c4923ecc2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findLeadingSpacesSize (s : String) : Nat :=
  let it := s.startPos
  let it := it.find? (· == '\n') |>.bind String.Pos.next?
  match it with
  | some it => consumeSpaces it 0 s.utf8ByteSize
  | none => 0
where
  consumeSpaces {s : String} (it : s.Pos) (curr min : Nat) : Nat :=
    if h : it.IsAtEnd then min
    else if it.get h == ' ' || it.get h == '\t' then consumeSpaces (it.next h) (curr + 1) min
    else if it.get h == '\n' then findNextLine (it.next h) min
    else findNextLine (it.next h) (Nat.min curr min)
  termination_by it
  findNextLine {s : String} (it : s.Pos) (min : Nat) : Nat :=
    if h : it.IsAtEnd then min
    else if it.get h == '\n' then consumeSpaces (it.next h) 0 min
    else findNextLine (it.next h) min
  termination_by it

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbef81a10bc862671ba672f47aa11d2fbf4407fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
