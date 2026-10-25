# parseQuotedString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71000cc94c989e5a4d57d1eb7e914cff2b47e0401f8c2d0172369ac2097ed563",
  "kind": "def",
  "lexical_name": "parseQuotedString",
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
  "slug": "parsequotedstring--97250569ba75f9378b1c2446",
  "source": {
    "blob": "9bbb517506c9d1f6fab4804403eea5e23bf1a93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97250569ba75f9378b1c24461a83788ee257ebac21aeea279e80a58c95af1053",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71000cc94c989e5a4d57d1eb7e914cff2b47e0401f8c2d0172369ac2097ed563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parseQuotedString (maxLength : Nat) : Parser String := do
  skipByte '"'.toUInt8

  let rec loop (buf : ByteArray) (length : Nat) : Parser ByteArray := do
    let b ← any

    if b == '"'.toUInt8 then
      return buf
    else if b == '\\'.toUInt8 then
      let next ← any
      if quotedPairChar (Char.ofUInt8 next)
        then
          let length := length + 1
          if length > maxLength then
            fail "quoted-string too long"
          else
            loop (buf.push next) length
        else fail s!"invalid quoted-pair byte: {Char.ofUInt8 next |>.quote}"
    else if isQdText b then
      let length := length + 1
      if length > maxLength then
        fail "quoted-string too long"
      else
        loop (buf.push b) length
    else
      fail s!"invalid qdtext byte: {Char.ofUInt8 b |>.quote}"

  liftOption <| String.fromUTF8? (← loop .empty 0)

-- chunk-ext = *( BWS ";" BWS chunk-ext-name [ BWS "=" BWS chunk-ext-val] )
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bbb517506c9d1f6fab4804403eea5e23bf1a93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
