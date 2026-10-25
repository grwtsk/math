# toCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18745498a309e2bbe2c7b52a2dd14389ec9e3d9a200d2c2bcb7c7b50d5b9851d",
  "kind": "def",
  "lexical_name": "toCode",
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
  "slug": "tocode--1f96c1f8bb2ddebc888a8520",
  "source": {
    "blob": "d5fe1ed921566b6ec0dda33eb7cca0f80ce252a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 449,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f96c1f8bb2ddebc888a852061898a072053cc9718491dde429d3f94829f5f6e",
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

Occurrence: `declaration:18745498a309e2bbe2c7b52a2dd14389ec9e3d9a200d2c2bcb7c7b50d5b9851d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCode : Status → UInt16
  | «continue» => 100
  | switchingProtocols => 101
  | processing => 102
  | earlyHints => 103
  | ok => 200
  | created => 201
  | accepted => 202
  | nonAuthoritativeInformation => 203
  | noContent => 204
  | resetContent => 205
  | partialContent => 206
  | multiStatus => 207
  | alreadyReported => 208
  | imUsed => 226
  | multipleChoices => 300
  | movedPermanently => 301
  | found => 302
  | seeOther => 303
  | notModified => 304
  | useProxy => 305
  | unused => 306
  | temporaryRedirect => 307
  | permanentRedirect => 308
  | badRequest => 400
  | unauthorized => 401
  | paymentRequired => 402
  | forbidden => 403
  | notFound => 404
  | methodNotAllowed => 405
  | notAcceptable => 406
  | proxyAuthenticationRequired => 407
  | requestTimeout => 408
  | conflict => 409
  | gone => 410
  | lengthRequired => 411
  | preconditionFailed => 412
  | payloadTooLarge => 413
  | uriTooLong => 414
  | unsupportedMediaType => 415
  | rangeNotSatisfiable => 416
  | expectationFailed => 417
  | imATeapot => 418
  | misdirectedRequest => 421
  | unprocessableEntity => 422
  | locked => 423
  | failedDependency => 424
  | tooEarly => 425
  | upgradeRequired => 426
  | preconditionRequired => 428
  | tooManyRequests => 429
  | requestHeaderFieldsTooLarge => 431
  | unavailableForLegalReasons => 451
  | internalServerError => 500
  | notImplemented => 501
  | badGateway => 502
  | serviceUnavailable => 503
  | gatewayTimeout => 504
  | httpVersionNotSupported => 505
  | variantAlsoNegotiates => 506
  | insufficientStorage => 507
  | loopDetected => 508
  | notExtended => 510
  | networkAuthenticationRequired => 511
  | other c => c.code

/--
Converts a `UInt16` to `Status`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fe1ed921566b6ec0dda33eb7cca0f80ce252a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
