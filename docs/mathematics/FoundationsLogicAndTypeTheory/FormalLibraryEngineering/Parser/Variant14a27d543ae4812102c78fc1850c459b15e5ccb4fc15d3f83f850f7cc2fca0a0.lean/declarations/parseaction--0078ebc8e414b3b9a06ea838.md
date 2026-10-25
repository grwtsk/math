# parseAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:324a86d6cd65972e2e58644ee7a36de99d02f87d3af35ae076d627490f2f4779",
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
  "slug": "parseaction--0078ebc8e414b3b9a06ea838",
  "source": {
    "blob": "0d506021748294d1cbdde16ad24e317ddd734158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0078ebc8e414b3b9a06ea838051de6ae686e4379f35115880439496aebd99a13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:324a86d6cd65972e2e58644ee7a36de99d02f87d3af35ae076d627490f2f4779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–268.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d506021748294d1cbdde16ad24e317ddd734158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
