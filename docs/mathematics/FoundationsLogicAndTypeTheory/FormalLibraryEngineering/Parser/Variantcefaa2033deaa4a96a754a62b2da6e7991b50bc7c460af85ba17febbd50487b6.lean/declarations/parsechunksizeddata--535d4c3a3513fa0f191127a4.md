# parseChunkSizedData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3072f17d873ad47cdad66cdc1003da9bef02d8cd263b1bef9fd577bee184039b",
  "kind": "def",
  "lexical_name": "parseChunkSizedData",
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
  "slug": "parsechunksizeddata--535d4c3a3513fa0f191127a4",
  "source": {
    "blob": "9bbb517506c9d1f6fab4804403eea5e23bf1a93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:535d4c3a3513fa0f191127a4a423d473410ee47b6a797a0ce14b94829661090a",
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

Occurrence: `declaration:3072f17d873ad47cdad66cdc1003da9bef02d8cd263b1bef9fd577bee184039b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def parseChunkSizedData (size : Nat) : Parser TakeResult := do
  match ← parseFixedSizeData size with
  | .complete data => crlf *> return .complete data
  | .incomplete data res => return .incomplete data res

/--
Returns `true` if `name` (compared case-insensitively) is a field that MUST NOT appear in HTTP/1.1
trailer sections per RFC 9112 §6.5. Forbidden fields are those required for message framing
(`content-length`, `transfer-encoding`), routing (`host`), or connection management (`connection`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bbb517506c9d1f6fab4804403eea5e23bf1a93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
