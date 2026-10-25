# decodeRawStrLitAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ed1a8857a7ec3c94c8b1bd207eb2efc2b904c31d0e87c0200d2a4894df44155",
  "kind": "def",
  "lexical_name": "decodeRawStrLitAux",
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
  "slug": "decoderawstrlitaux--831ce5b75b4b06ad4b2f1fc5",
  "source": {
    "blob": "201680de486432949cac7a2da67f00faabd021da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1159,
    "line": 1144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:831ce5b75b4b06ad4b2f1fc5d9c5556a298d4ed1c02a62fdc553d4a48ec062ef",
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

Occurrence: `declaration:0ed1a8857a7ec3c94c8b1bd207eb2efc2b904c31d0e87c0200d2a4894df44155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1144–1159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def decodeRawStrLitAux (s : String) (i : String.Pos.Raw) (num : Nat) : String :=
  let c := String.Internal.get s i
  let i := String.Internal.next s i
  if c == '#' then
    decodeRawStrLitAux s i (num + 1)
  else
    String.Internal.extract s i ⟨s.utf8ByteSize - (num + 1)⟩

/--
Takes the string literal lexical syntax parsed by the parser and interprets it as a string.
This is where escape sequences are processed for example.
The string `s` is either a plain string literal or a raw string literal.

If it returns `none` then the string literal is ill-formed, which indicates a bug in the parser.
The function is not required to return `none` if the string literal is ill-formed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean#L1144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201680de486432949cac7a2da67f00faabd021da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
