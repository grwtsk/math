# Lean.String.charactersIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f7bd82d0bd008a0b9fa961ef529993c6161af4e46ae6fdf629aaa4ad9ee98f5",
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
  "slug": "lean-string-charactersin--164762d0d30e7e298ae06e90",
  "source": {
    "blob": "035b1c50590651b65ed7a94b1e0c8e62596f5ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:164762d0d30e7e298ae06e909030ff66e398f6b51d5dbe2e0e48d5b17d468314",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f7bd82d0bd008a0b9fa961ef529993c6161af4e46ae6fdf629aaa4ad9ee98f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–63.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035b1c50590651b65ed7a94b1e0c8e62596f5ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
