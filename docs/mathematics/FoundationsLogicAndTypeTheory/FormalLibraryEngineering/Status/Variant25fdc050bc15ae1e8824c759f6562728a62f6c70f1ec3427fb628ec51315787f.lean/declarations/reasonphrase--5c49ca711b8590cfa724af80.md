# reasonPhrase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f482c555f3bde2ed650d0936c8b3f2e517d52961f77dad7a19b2c51de514936",
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
  "slug": "reasonphrase--5c49ca711b8590cfa724af80",
  "source": {
    "blob": "d9882d23632ec77ee863954168b09616964d714d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 647,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c49ca711b8590cfa724af80844c0bd7176e5b2972684926fb17eb19ece9c15f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f482c555f3bde2ed650d0936c8b3f2e517d52961f77dad7a19b2c51de514936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–712.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9882d23632ec77ee863954168b09616964d714d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
