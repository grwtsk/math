# reasonPhrase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc91f92c8dc839a7ba9278211d7297b5e1941c79ff81ac0239812e5dba6f403d",
  "kind": "def",
  "lexical_name": "reasonPhrase",
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
  "slug": "reasonphrase--edf502654c696ca83540683e",
  "source": {
    "blob": "d5fe1ed921566b6ec0dda33eb7cca0f80ce252a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 655,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edf502654c696ca83540683ec95365f31a83e9593575875d83ae1e77b7c8c5f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc91f92c8dc839a7ba9278211d7297b5e1941c79ff81ac0239812e5dba6f403d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reasonPhrase : Status → String
  | .«continue» => "Continue"
  | .switchingProtocols => "Switching Protocols"
  | .processing => "Processing"
  | .earlyHints => "Early Hints"
  | .ok => "OK"
  | .created => "Created"
  | .accepted => "Accepted"
  | .nonAuthoritativeInformation => "Non-Authoritative Information"
  | .noContent => "No Content"
  | .resetContent => "Reset Content"
  | .partialContent => "Partial Content"
  | .multiStatus => "Multi-Status"
  | .alreadyReported => "Already Reported"
  | .imUsed => "IM Used"
  | .multipleChoices => "Multiple Choices"
  | .movedPermanently => "Moved Permanently"
  | .found => "Found"
  | .seeOther => "See Other"
  | .notModified => "Not Modified"
  | .useProxy => "Use Proxy"
  | .unused => "Unused"
  | .temporaryRedirect => "Temporary Redirect"
  | .permanentRedirect => "Permanent Redirect"
  | .badRequest => "Bad Request"
  | .unauthorized => "Unauthorized"
  | .paymentRequired => "Payment Required"
  | .forbidden => "Forbidden"
  | .notFound => "Not Found"
  | .methodNotAllowed => "Method Not Allowed"
  | .notAcceptable => "Not Acceptable"
  | .proxyAuthenticationRequired => "Proxy Authentication Required"
  | .requestTimeout => "Request Timeout"
  | .conflict => "Conflict"
  | .gone => "Gone"
  | .lengthRequired => "Length Required"
  | .preconditionFailed => "Precondition Failed"
  | .payloadTooLarge => "Payload Too Large"
  | .uriTooLong => "URI Too Long"
  | .unsupportedMediaType => "Unsupported Media Type"
  | .rangeNotSatisfiable => "Range Not Satisfiable"
  | .expectationFailed => "Expectation Failed"
  | .imATeapot => "I'm a teapot"
  | .misdirectedRequest => "Misdirected Request"
  | .unprocessableEntity => "Unprocessable Entity"
  | .locked => "Locked"
  | .failedDependency => "Failed Dependency"
  | .tooEarly => "Too Early"
  | .upgradeRequired => "Upgrade Required"
  | .preconditionRequired => "Precondition Required"
  | .tooManyRequests => "Too Many Requests"
  | .requestHeaderFieldsTooLarge => "Request Header Fields Too Large"
  | .unavailableForLegalReasons => "Unavailable For Legal Reasons"
  | .internalServerError => "Internal Server Error"
  | .notImplemented => "Not Implemented"
  | .badGateway => "Bad Gateway"
  | .serviceUnavailable => "Service Unavailable"
  | .gatewayTimeout => "Gateway Timeout"
  | .httpVersionNotSupported => "HTTP Version Not Supported"
  | .variantAlsoNegotiates => "Variant Also Negotiates"
  | .insufficientStorage => "Insufficient Storage"
  | .loopDetected => "Loop Detected"
  | .notExtended => "Not Extended"
  | .networkAuthenticationRequired => "Network Authentication Required"
  | .other c => c.phrase

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fe1ed921566b6ec0dda33eb7cca0f80ce252a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
