# test_s3CurlArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb3c0e9535e860bbe6c6376d909c6707f4c437290fde2e73bbf77d832d51ee77",
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
  "slug": "test-s3curlargs--be4f65dd4eb1f6afe8776c47",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1505,
    "line": 1484,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be4f65dd4eb1f6afe8776c473ff464018ac8c309d3afc0d8d29c4c0976522afc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb3c0e9535e860bbe6c6376d909c6707f4c437290fde2e73bbf77d832d51ee77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1484–1505.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L1484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
