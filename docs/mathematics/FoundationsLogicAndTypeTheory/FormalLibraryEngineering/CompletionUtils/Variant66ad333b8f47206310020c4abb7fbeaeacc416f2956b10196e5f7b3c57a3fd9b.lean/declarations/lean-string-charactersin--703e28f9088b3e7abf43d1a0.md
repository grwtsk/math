# Lean.String.charactersIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c83cf792eabb8478d00a2785024020edd758a16d6d51436f9c08c629826da6c3",
  "kind": "def",
  "lexical_name": "Lean.String.charactersIn",
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
  "slug": "lean-string-charactersin--703e28f9088b3e7abf43d1a0",
  "source": {
    "blob": "4377c826657582be320ce8c514bd570363e2716e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variant66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:703e28f9088b3e7abf43d1a08c4bdf2d6e8bb432882d71986c44d7bbc3dd5ab2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variant66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c83cf792eabb8478d00a2785024020edd758a16d6d51436f9c08c629826da6c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Lean.String.charactersIn (a b : String) : Bool :=
  goFastScalar ⟨0⟩ ⟨0⟩
where
  /-
  This function is the ASCII fast path for `go`
  -/
  goFastScalar (aPos bPos : String.Pos.Raw) : Bool :=
    if ha : ¬aPos < a.rawEndPos then
      true
    else if hb : ¬bPos < b.rawEndPos then
      false
    else
      let aByte := a.getUTF8Byte aPos (by simpa using ha)
      let bByte := b.getUTF8Byte bPos (by simpa using hb)
      -- If a or b are not UTF-8 bytes we give up on the fast path
      if (aByte &&& 0x80 != 0) || (bByte &&& 0x80 != 0) then
        go aPos bPos
      else
        let bPos := ⟨bPos.byteIdx + 1⟩
        if aByte.toAsciiLower == bByte.toAsciiLower then
          let aPos := ⟨aPos.byteIdx + 1⟩
          goFastScalar aPos bPos
        else
          goFastScalar aPos bPos

  go (aPos bPos : String.Pos.Raw) : Bool :=
    if ha : aPos.atEnd a then
      true
    else if hb : bPos.atEnd b then
      false
    else
      let ac := aPos.get' a ha
      let bc := bPos.get' b hb
      let bPos := bPos.next' b hb
      if ac.toLower == bc.toLower then
        let aPos := aPos.next' a ha
        go aPos bPos
      else
        go aPos bPos

namespace Lean.Server.Completion
open Elab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variant66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variant66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4377c826657582be320ce8c514bd570363e2716e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
