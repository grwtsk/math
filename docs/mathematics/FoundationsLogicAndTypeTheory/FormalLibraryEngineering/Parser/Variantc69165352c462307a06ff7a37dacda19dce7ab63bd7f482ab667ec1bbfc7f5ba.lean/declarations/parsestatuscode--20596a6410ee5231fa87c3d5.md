# parseStatusCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:284c3bad0fbe09e89f96ab388cd4bd2c39d8e39df3fdfc31b163611eeeb6d913",
  "kind": "def",
  "lexical_name": "parseStatusCode",
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
  "slug": "parsestatuscode--20596a6410ee5231fa87c3d5",
  "source": {
    "blob": "ffc1b21f525650cbff9182bc18c742f3e1959e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20596a6410ee5231fa87c3d522539b7b1b9422d07bbbcf8c399b2753f9150ec1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:284c3bad0fbe09e89f96ab388cd4bd2c39d8e39df3fdfc31b163611eeeb6d913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseStatusCode (limits : H1.Config) : Parser Status := do
  let d1 ← digit
  let d2 ← digit
  let d3 ← digit
  let code := (d1.toNat - 48) * 100 + (d2.toNat - 48) * 10 + (d3.toNat - 48)
  sp
  let phrase ← parseReasonPhrase limits <* crlf

  if h : IsValidReasonPhrase phrase then
    if let some status := Status.ofCode (some ⟨phrase, h⟩) code.toUInt16 then
      return status

  fail "invalid status code"

/--
Parses a status line and returns a fully-typed `Response.Head`.
`status-line = HTTP-version SP status-code SP [ reason-phrase ]`
Accepts only HTTP/1.1. For parsing where the version may be unrecognized and must be
mapped to an error event, use `parseStatusLineRawVersion`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc1b21f525650cbff9182bc18c742f3e1959e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
