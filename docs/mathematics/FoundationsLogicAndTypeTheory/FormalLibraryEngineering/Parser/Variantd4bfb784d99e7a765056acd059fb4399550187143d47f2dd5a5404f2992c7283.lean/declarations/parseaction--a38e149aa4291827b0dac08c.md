# parseAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5573ca8d1f672b72d03221b33485f11cba121b009cf20dbcbb7347a623ab2ec",
  "kind": "def",
  "lexical_name": "parseAction",
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
  "slug": "parseaction--a38e149aa4291827b0dac08c",
  "source": {
    "blob": "480d3a1339bbb314f64c5b7bc4f5977b73178c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a38e149aa4291827b0dac08cf3b3b1a44222c832db43db89c743b93c7bd014fa",
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

Occurrence: `declaration:d5573ca8d1f672b72d03221b33485f11cba121b009cf20dbcbb7347a623ab2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseAction : Parser IntAction := do
  let discr ← any
  if discr == 'a'.toUInt8 then
    parseAdd
  else if discr == 'd'.toUInt8 then
    parseDelete
  else
    fail s!"Expected a or d got: {discr}"
where
  parseAdd : Parser IntAction := do
    let ident ← parseId
    let clause ← parseClause
    parseZero
    let rupHints ← parseIdList
    let ratHints ← parseRatHints
    parseZero
    match clause.size, ratHints.size with
    | 0, 0 => return .addEmpty ident rupHints
    | 0, _ => fail "There cannot be any ratHints for adding the empty clause"
    | _, 0 => return .addRup ident clause rupHints
    | _, _ => return .addRat ident clause (getPivot clause) rupHints ratHints

  parseDelete : Parser IntAction := do
    let idList ← parseIdList
    parseZero
    return .del idList

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantd4bfb784d99e7a765056acd059fb4399550187143d47f2dd5a5404f2992c7283.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480d3a1339bbb314f64c5b7bc4f5977b73178c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
