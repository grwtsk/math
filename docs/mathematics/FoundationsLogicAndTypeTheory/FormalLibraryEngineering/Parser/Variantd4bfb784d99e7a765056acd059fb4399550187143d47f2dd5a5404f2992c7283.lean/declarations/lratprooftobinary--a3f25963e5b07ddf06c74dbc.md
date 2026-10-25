# lratProofToBinary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f9b87dedcdea716d9d6f2ac3b45758b3dc87fa635aafad7fc394899935e0332",
  "kind": "def",
  "lexical_name": "lratProofToBinary",
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
  "slug": "lratprooftobinary--a3f25963e5b07ddf06c74dbc",
  "source": {
    "blob": "480d3a1339bbb314f64c5b7bc4f5977b73178c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3f25963e5b07ddf06c74dbca76de4e212a7cebc9e249975b8cc6d885620fd9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f9b87dedcdea716d9d6f2ac3b45758b3dc87fa635aafad7fc394899935e0332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def lratProofToBinary (proof : Array IntAction) : ByteArray :=
  -- we will definitely need at least 4 bytes per add step and almost exclusively produce add.
  go 0 (ByteArray.emptyWithCapacity (4 * proof.size))
where
  go (idx : Nat) (acc : ByteArray) : ByteArray :=
    if h : idx < proof.size then
      let acc :=
        match proof[idx] with
        | .addEmpty id hints =>
          let acc := startAdd acc
          let acc := addNat acc id
          let acc := zeroByte acc
          let acc := hints.foldl (init := acc) addNat
          let acc := zeroByte acc
          acc
        | .addRup id c hints =>
          let acc := startAdd acc
          let acc := addNat acc id
          let acc := c.foldl (init := acc) addInt
          let acc := zeroByte acc
          let acc := hints.foldl (init := acc) addNat
          let acc := zeroByte acc
          acc
        | .addRat id c _ rupHints ratHints =>
          let acc := startAdd acc
          let acc := addNat acc id
          let acc := c.foldl (init := acc) addInt
          let acc := zeroByte acc
          let acc := rupHints.foldl (init := acc) addNat
          let ratHintFolder acc hint :=
            let acc := addInt acc (-hint.fst)
            let acc := hint.snd.foldl (init := acc) addNat
            acc
          let acc := ratHints.foldl (init := acc) ratHintFolder
          let acc := zeroByte acc
          acc
        | .del ids =>
          let acc := startDelete acc
          let acc := ids.foldl (init := acc) addNat
          let acc := zeroByte acc
          acc
      go (idx + 1) acc
    else
      acc

  addInt (acc : ByteArray) (lit : Int) : ByteArray :=
    let mapped :=
      if lit > 0 then
        2 * lit.natAbs
      else
        2 * lit.natAbs + 1
    assert! mapped ≤ (2^64 - 1) -- our parser "only" supports 64 bit literals
    let mapped := mapped.toUInt64
    variableLengthEncode acc mapped

  variableLengthEncode (acc : ByteArray) (lit : UInt64) : ByteArray :=
    -- once the literal is 0 we don't need to add another byte.
    if lit == 0 then
      acc
    else
      let chunk :=
        if lit > 127 then
          (lit.toUInt8 &&& 127) ||| 128
        else
          lit.toUInt8 &&& 127
      let acc := acc.push chunk
      variableLengthEncode acc (lit >>> 7)

  @[inline]
  startAdd (acc : ByteArray) : ByteArray := acc.push 'a'.toUInt8

  @[inline]
  startDelete (acc : ByteArray) : ByteArray := acc.push 'd'.toUInt8

  @[inline]
  zeroByte (acc : ByteArray) : ByteArray := acc.push 0

  @[inline]
  addNat (acc : ByteArray) (n : Nat) : ByteArray := addInt acc n

/--
Dump `proof` into `path`, either in the binary or non-binary LRAT format, depending on `binaryProofs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480d3a1339bbb314f64c5b7bc4f5977b73178c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
