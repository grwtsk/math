# decodeScientificLitVal?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e2c55f352542d57ae98dc6416d662f5c44139f443a999ea199c3150a19dce2b",
  "kind": "def",
  "lexical_name": "decodeScientificLitVal?",
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
  "slug": "decodescientificlitval--84bf870f10c7c39985bbfe46",
  "source": {
    "blob": "201680de486432949cac7a2da67f00faabd021da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1008,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84bf870f10c7c39985bbfe46c6d6229d5ada0adeccc224c4edd56ad606281183",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e2c55f352542d57ae98dc6416d662f5c44139f443a999ea199c3150a19dce2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1008–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def decodeScientificLitVal? (s : String) : Option (Nat × Bool × Nat) :=
  let len := String.Internal.length s
  if len == 0 then none
  else
    let c := String.Internal.get s 0
    if c.isDigit then
      decode 0 0
    else none
where
  decodeAfterExp (i : String.Pos.Raw) (val : Nat) (e : Nat) (sign : Bool) (exp : Nat) : Option (Nat × Bool × Nat) :=
    if String.Internal.atEnd s i then
      if sign then
        some (val, sign, exp + e)
      else if exp >= e then
        some (val, sign, exp - e)
      else
        some (val, true, e - exp)
    else
      let c := String.Internal.get s i
      if '0' ≤ c && c ≤ '9' then
        decodeAfterExp (String.Internal.next s i) val e sign (10*exp + c.toNat - '0'.toNat)
      else if c == '_' then
        decodeAfterExp (String.Internal.next s i) val e sign exp
      else
        none

  decodeExp (i : String.Pos.Raw) (val : Nat) (e : Nat) : Option (Nat × Bool × Nat) :=
    if String.Internal.atEnd s i then none else
    let c := String.Internal.get s i
    if c == '-' then
       decodeAfterExp (String.Internal.next s i) val e true 0
    else if c == '+' then
       decodeAfterExp (String.Internal.next s i) val e false 0
    else
       decodeAfterExp i val e false 0

  decodeAfterDot (i : String.Pos.Raw) (val : Nat) (e : Nat) : Option (Nat × Bool × Nat) :=
    if String.Internal.atEnd s i then
      some (val, true, e)
    else
      let c := String.Internal.get s i
      if '0' ≤ c && c ≤ '9' then
        decodeAfterDot (String.Internal.next s i) (10*val + c.toNat - '0'.toNat) (e+1)
      else if c == '_' then
        decodeAfterDot (String.Internal.next s i) val e
      else if c == 'e' || c == 'E' then
        decodeExp (String.Internal.next s i) val e
      else
        none

  decode (i : String.Pos.Raw) (val : Nat) : Option (Nat × Bool × Nat) :=
    if String.Internal.atEnd s i then
      none
    else
      let c := String.Internal.get s i
      if '0' ≤ c && c ≤ '9' then
        decode (String.Internal.next s i) (10*val + c.toNat - '0'.toNat)
      else if c == '_' then
        decode (String.Internal.next s i) val
      else if c == '.' then
        decodeAfterDot (String.Internal.next s i) val 0
      else if c == 'e' || c == 'E' then
        decodeExp (String.Internal.next s i) val 0
      else
        none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean#L1008).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201680de486432949cac7a2da67f00faabd021da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
