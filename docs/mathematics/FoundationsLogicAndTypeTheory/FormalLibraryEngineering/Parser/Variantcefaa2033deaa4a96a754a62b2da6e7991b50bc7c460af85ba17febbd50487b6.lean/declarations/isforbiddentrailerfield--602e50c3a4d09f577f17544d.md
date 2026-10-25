# isForbiddenTrailerField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f27f916558e15a0cb4c15869db0ef8d908dbfa8d7f15813a9293d7fc41fc3e6",
  "kind": "def",
  "lexical_name": "isForbiddenTrailerField",
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
  "slug": "isforbiddentrailerfield--602e50c3a4d09f577f17544d",
  "source": {
    "blob": "9bbb517506c9d1f6fab4804403eea5e23bf1a93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 449,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:602e50c3a4d09f577f17544d61b16237b3c2b9ddd7cc3559f78bc3b52bd183b3",
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

Occurrence: `declaration:5f27f916558e15a0cb4c15869db0ef8d908dbfa8d7f15813a9293d7fc41fc3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isForbiddenTrailerField (name : String) : Bool :=
  let n := name.toLower
  n == "content-length" || n == "transfer-encoding" || n == "host" ||
  n == "connection" || n == "expect" || n == "te" ||
  n == "authorization" || n == "max-forwards" || n == "cache-control" ||
  n == "content-encoding" || n == "upgrade" || n == "trailer"

/--
Parses a trailer header (used after a chunked body), rejecting forbidden field names per RFC 9112
§6.5. Fields used for message framing (`content-length`, `transfer-encoding`), routing (`host`),
or connection management (`connection`, `te`, `upgrade`) are rejected to prevent trailer injection
attacks where a downstream proxy might re-interpret them.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bbb517506c9d1f6fab4804403eea5e23bf1a93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
