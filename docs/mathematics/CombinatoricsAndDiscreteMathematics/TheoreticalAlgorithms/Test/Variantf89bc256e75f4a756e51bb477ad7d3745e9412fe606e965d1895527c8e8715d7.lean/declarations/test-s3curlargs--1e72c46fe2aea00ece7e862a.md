# test_s3CurlArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c86164876f8a8d97899c6c576f62764cd80fdffeea3c651c910a6161002fc74",
  "kind": "def",
  "lexical_name": "test_s3CurlArgs",
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
  "slug": "test-s3curlargs--1e72c46fe2aea00ece7e862a",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1513,
    "line": 1492,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e72c46fe2aea00ece7e862a342e36df5b21243a24bfd6910a8c96458635796f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c86164876f8a8d97899c6c576f62764cd80fdffeea3c651c910a6161002fc74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1492–1513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_s3CurlArgs : IO Unit := do
  IO.println "s3CurlArgs:"
  let s3 := uploadPutArgs (s3CurlArgs ⟨"AK", "SK", some "ST"⟩ "auto") (overwrite := false)
  assertTrue "S3 signs with SigV4 in the given region"
    ((s3.toList.zip s3.toList.tail).contains ("--aws-sigv4", "aws:amz:auto:s3"))
  assertTrue "S3 carries the keypair as --user"
    ((s3.toList.zip s3.toList.tail).contains ("--user", "AK:SK"))
  assertTrue "S3 signs the upload as UNSIGNED-PAYLOAD"
    (s3.contains "x-amz-content-sha256: UNSIGNED-PAYLOAD")
  assertTrue "S3 sends the session token" (s3.contains "x-amz-security-token: ST")
  assertTrue "non-overwrite adds If-None-Match" (s3.contains "If-None-Match: *")
  assertTrue "S3 sends no Azure blob-type header"
    (!s3.contains "x-ms-blob-type: BlockBlob")
  let s3Static := uploadPutArgs (s3CurlArgs ⟨"AK", "SK", none⟩ "auto") (overwrite := true)
  assertTrue "a static keypair sends no session token"
    (s3Static.all (!·.startsWith "x-amz-security-token"))
  assertTrue "overwrite drops If-None-Match" (!s3Static.contains "If-None-Match: *")

/-- The transfer-tool policy for the s3 backend: rclone when available, curl
otherwise; MATHLIB_CACHE_PUT_FORCE_CURL selects curl regardless. The azure
backend has no policy to test: it always transfers with curl
(`azurePutStaged`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L1492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
