# splitNameLitAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6547192fd10500bf9a280455f762e65feb09131c0820972acfdc85308285c457",
  "kind": "def",
  "lexical_name": "splitNameLitAux",
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
  "slug": "splitnamelitaux--bea78b0639c2db68c923c21b",
  "source": {
    "blob": "d1a961f4b3986e7d6580325351fffdb647ad200c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1224,
    "line": 1198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bea78b0639c2db68c923c21b9ae7730ed8ee80ff3eeaddbc440e0934a6a759eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6547192fd10500bf9a280455f762e65feb09131c0820972acfdc85308285c457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1198–1224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def splitNameLitAux (ss : Substring.Raw) (acc : List Substring.Raw) : List Substring.Raw :=
  let splitRest (ss : Substring.Raw) (acc : List Substring.Raw) : List Substring.Raw :=
    if Substring.Raw.Internal.front ss == '.' then
      splitNameLitAux (Substring.Raw.Internal.drop ss 1) acc
    else if Substring.Raw.Internal.isEmpty ss then
      acc
    else
      []
  if Substring.Raw.Internal.isEmpty ss then []
  else
    let curr := Substring.Raw.Internal.front ss
    if isIdBeginEscape curr then
      let escapedPart := Substring.Raw.Internal.takeWhile ss (!isIdEndEscape ·)
      let escapedPart := { escapedPart with stopPos := String.Pos.Raw.Internal.min ss.stopPos (String.Internal.next escapedPart.str escapedPart.stopPos) }
      if !isIdEndEscape (Substring.Raw.Internal.get escapedPart <| Substring.Raw.Internal.prev escapedPart ⟨escapedPart.bsize⟩) then []
      else splitRest (Substring.Raw.Internal.extract ss ⟨escapedPart.bsize⟩ ⟨ss.bsize⟩) (escapedPart :: acc)
    else if isIdFirst curr then
      let idPart := Substring.Raw.Internal.takeWhile ss isIdRest
      splitRest (Substring.Raw.Internal.extract ss ⟨idPart.bsize⟩ ⟨ss.bsize⟩) (idPart :: acc)
    else if curr.isDigit then
      let idPart := Substring.Raw.Internal.takeWhile ss Char.isDigit
      splitRest (Substring.Raw.Internal.extract ss ⟨idPart.bsize⟩ ⟨ss.bsize⟩) (idPart :: acc)
    else
      []

/-- Split a name literal (without the backtick) into its dot-separated components. For example,
`foo.bla.«bo.o»` ↦ `["foo", "bla", "«bo.o»"]`. If the literal cannot be parsed, return `[]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean#L1198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a961f4b3986e7d6580325351fffdb647ad200c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
