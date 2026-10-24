# test_rcloneEnv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2325cff1333cd220c5325c6ca2038c338dd28b977e66132a660ba43c87082cc6",
  "kind": "def",
  "lexical_name": "test_rcloneEnv",
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
  "slug": "test-rcloneenv--d1255755f5d1883f81086c4c",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1588,
    "line": 1567,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1255755f5d1883f81086c4c7ae91964e3c1802c129d7ca182c0e169cfb4b7ce",
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

Occurrence: `declaration:2325cff1333cd220c5325c6ca2038c338dd28b977e66132a660ba43c87082cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1567–1588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_rcloneEnv : IO Unit := do
  IO.println "rcloneEnv:"
  let env := rcloneEnv ⟨"AK", "SK", some "tok"⟩ "https://host.example" "Other" "auto"
  assertTrue "credentials and endpoint are set"
    (env.contains ("RCLONE_S3_ACCESS_KEY_ID", some "AK") &&
     env.contains ("RCLONE_S3_SECRET_ACCESS_KEY", some "SK") &&
     env.contains ("RCLONE_S3_ENDPOINT", some "https://host.example") &&
     env.contains ("RCLONE_S3_SESSION_TOKEN", some "tok"))
  assertTrue "config comes from the tool, not ambient credentials"
    (env.contains ("RCLONE_S3_ENV_AUTH", some "false"))
  assertTrue "the region is the one given"
    (env.contains ("RCLONE_S3_REGION", some "auto"))
  assertTrue "the provider is set (rclone refuses to run without one)"
    (env.contains ("RCLONE_S3_PROVIDER", some "Other"))
  let noSession := rcloneEnv ⟨"AK", "SK", none⟩ "https://host.example" "Other" "auto"
  assertTrue "a static keypair clears any ambient session token"
    (noSession.contains ("RCLONE_S3_SESSION_TOKEN", none))

/-- `putStagedViaRclone` end to end against a recording fake binary: the
files copy runs first with the child environment the caller assembled
(`rcloneEnv`), the marker copy follows with the SHA-named temp file, and a
marker failure warns without failing the put. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L1567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
