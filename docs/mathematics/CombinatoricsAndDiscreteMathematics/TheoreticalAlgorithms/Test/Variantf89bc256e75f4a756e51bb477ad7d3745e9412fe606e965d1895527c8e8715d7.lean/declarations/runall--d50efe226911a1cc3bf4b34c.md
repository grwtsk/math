# runAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daa43e119d058d65d1cef5c970eea120425d787fcd83a37ccec9de17a0b55fd3",
  "kind": "def",
  "lexical_name": "runAll",
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
  "slug": "runall--d50efe226911a1cc3bf4b34c",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1844,
    "line": 1785,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d50efe226911a1cc3bf4b34cef2c6cee36bb89bd035e5e2fae925ef050cb776f",
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

Occurrence: `declaration:daa43e119d058d65d1cef5c970eea120425d787fcd83a37ccec9de17a0b55fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1785–1844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runAll : IO Unit := do
  test_Container_name
  test_Container_parse
  test_Container_azureURL
  test_Container_getURL
  test_envValueNormalization
  test_getBaseURLFrom
  test_Container_flatPath
  test_defaultContainersForRepo
  test_effectiveGetURLs
  test_mkFileURL
  test_parseCacheFromList
  test_extractRepoFromUrl
  test_extractPRNumber
  test_hashFromFileName
  test_tempFileNames
  test_isRemoteURL
  test_UInt64_asLTar
  test_hash_roundtrip
  test_markerURL
  test_markerReadURL
  test_getRepoScope
  test_shouldWarnNonDefaultScope
  test_getNonDefaultScopeReason
  test_findMostRecentSHAWithCache
  test_findRecentSHAsWithCache
  test_getRemoteRepo_gitFallback
  test_headIsAncestorOfMaster_gitFallback
  test_parseEnvFlag
  test_isKnownOpt
  test_parseNamedOpt
  test_parseFlagOpt
  test_curlFollowRedirectArgs
  test_curlRetryArgs
  test_runCmd_showArgsOnError
  test_isCacheMissStatus
  test_isAlreadyPresentStatus
  test_classifyDownload
  test_classifyUpload
  test_mkPutConfigContent
  test_uploadBackendParse
  test_azureAuthFrom
  test_s3AuthFrom
  test_s3RegionFrom
  test_isValidScope
  test_fileDirPath
  test_stagedUploadDestFrom
  test_s3CurlArgs
  test_s3UploadToolFrom
  test_s3EndpointSplit
  test_rcloneArgs
  test_rcloneEnv
  test_putStagedViaRclone
  test_expandDownloadRounds
  test_finalizeDecomp
  test_monitorCurl_carries_decomp_state

end Cache.Test

open Cache Cache.Test Cache.Requests in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L1785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
