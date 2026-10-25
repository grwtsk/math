# takeNamePart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89a7d40a430411cf8d57758fc590127d6aabb13ff5a7152d72ebf66e7a1859e7",
  "kind": "def",
  "lexical_name": "takeNamePart",
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
  "slug": "takenamepart--68a60aabb497fc050e38e59b",
  "source": {
    "blob": "72bec3ce613b5650990c9aaa9b3e33c738ca28ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Varianta3a27e8d1f6f03b69ab1e4f1eb4896f9d6efc9d87832493880a401954c4f4efd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68a60aabb497fc050e38e59b52a0811210ceec2275c0c1dd93cfcc3a7eaa1e59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Varianta3a27e8d1f6f03b69ab1e4f1eb4896f9d6efc9d87832493880a401954c4f4efd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89a7d40a430411cf8d57758fc590127d6aabb13ff5a7152d72ebf66e7a1859e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def takeNamePart (ss : Substring.Raw) (pre : Name) : (Substring.Raw × Name) :=
  if ss.isEmpty then
    (ss, .anonymous)
  else
    let curr := ss.front
    if isIdBeginEscape curr then
      let ss := ss.drop 1
      let startPos := ss.startPos
      let ss := ss.dropWhile (!isIdEndEscape ·)
      if isIdEndEscape ss.front then
        let id := String.Pos.Raw.extract ss.str startPos ss.startPos
        (ss, Name.str pre id)
      else
        (ss, .anonymous)
    else if isIdFirst curr then
      let startPos := ss.startPos
      let ss := ss.drop 1 |>.dropWhile isIdRest
      let id := String.Pos.Raw.extract ss.str startPos ss.startPos
      (ss, Name.str pre id)
    else if curr.isDigit then
      let startPos := ss.startPos
      let ss := ss.drop 1 |>.dropWhile Char.isDigit
      let digits := String.Pos.Raw.extract ss.str startPos ss.startPos
      let n := (Syntax.decodeNatLitVal? digits).get!
      (ss, Name.num pre n)
    else
      (ss, .anonymous)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Varianta3a27e8d1f6f03b69ab1e4f1eb4896f9d6efc9d87832493880a401954c4f4efd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Varianta3a27e8d1f6f03b69ab1e4f1eb4896f9d6efc9d87832493880a401954c4f4efd.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72bec3ce613b5650990c9aaa9b3e33c738ca28ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
