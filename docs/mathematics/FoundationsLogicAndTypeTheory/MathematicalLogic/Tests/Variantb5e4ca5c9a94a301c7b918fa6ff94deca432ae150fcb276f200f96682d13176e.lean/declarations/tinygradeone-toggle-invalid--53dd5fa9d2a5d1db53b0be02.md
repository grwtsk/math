# tinyGradeOne_toggle_invalid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7a43dd024b8bc4541c6bc26b614e1fda291f02e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06a2eb07-dfdf-fe51-1724-7e11cfa9c866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50abcbb0-1c80-e547-b315-39ce33479549",
  "kind": "theorem",
  "lexical_name": "tinyGradeOne_toggle_invalid",
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
  "slug": "tinygradeone-toggle-invalid--53dd5fa9d2a5d1db53b0be02",
  "source": {
    "blob": "e7a43dd024b8bc4541c6bc26b614e1fda291f02e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53dd5fa9d2a5d1db53b0be02c1e3d0fe2dd55cf65909e79afc7aac99347e61ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50abcbb0-1c80-e547-b315-39ce33479549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tinyGradeOne_toggle_invalid :
    ¬ CodecValidAmbient tinyFilesystemCodec tinyGF2RowEncoding 1
      (ambientPacketPerm (tinyFilesystemRowPerm 1)
        tinyGradeOneAmbient) := by
  rintro ⟨packet, hambient⟩
  rcases packet.1.property with ⟨snapshot, hsnapshot⟩
  cases snapshot with
  | oneZero =>
      have hpacket : packet = tinyGradeOnePacket := by
        apply Subtype.ext
        apply Subtype.ext
        change packet.1.1 = tinyFilesystemCodec.encode .oneZero
        exact hsnapshot.symm
      subst packet
      have hfield := congrArg
        (fun a : AmbientPacketFiber GF2 1 1 => a.fieldRows 0)
        hambient
      change (0 : GF2) = 1 at hfield
      exact zero_ne_one hfield
  | twoZeros =>
      have hbad : (tinyFilesystemCodec.encode .twoZeros).rows = 1 :=
        (congrArg BitPacket.rows hsnapshot).trans packet.property
      change 2 = 1 at hbad
      omega
  | twoOnes =>
      have hbad : (tinyFilesystemCodec.encode .twoOnes).rows = 1 :=
        (congrArg BitPacket.rows hsnapshot).trans packet.property
      change 2 = 1 at hbad
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7a43dd024b8bc4541c6bc26b614e1fda291f02e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
