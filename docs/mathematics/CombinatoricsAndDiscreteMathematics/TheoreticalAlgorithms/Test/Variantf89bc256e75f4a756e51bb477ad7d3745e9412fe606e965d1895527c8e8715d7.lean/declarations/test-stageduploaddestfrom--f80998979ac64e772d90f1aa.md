# test_stagedUploadDestFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ab549224ea60c86218cd54c7b0da0f5ea5a67b78effafe4ef92d48191495b3e",
  "kind": "def",
  "lexical_name": "test_stagedUploadDestFrom",
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
  "slug": "test-stageduploaddestfrom--f80998979ac64e772d90f1aa",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1491,
    "line": 1364,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f80998979ac64e772d90f1aa71965445ea2b5f3c9490289df5c3d7175454c634",
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

Occurrence: `declaration:3ab549224ea60c86218cd54c7b0da0f5ea5a67b78effafe4ef92d48191495b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1364–1491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_stagedUploadDestFrom : IO Unit := do
  IO.println "stagedUploadDestFrom:"
  let putBase := "https://s3.example.org/bucket-prefix"
  let expectForksScoped : StagedUploadDest :=
    { base := putBase
      label := "forks"
      filesPrefix := "mathlib4-forks/f/alice/mathlib4/sha1"
      markerPrefix := "mathlib4-forks/m/alice/mathlib4" }
  assertTrue "s3: put base + forks + scope"
    ((stagedUploadDestFrom .s3 none (some putBase) (some .forks)
        "Alice/Mathlib4" (some "sha1")).toOption == some expectForksScoped)
  let expectMasterFlat : StagedUploadDest :=
    { base := putBase
      label := "master"
      filesPrefix := "mathlib4-master/f"
      markerPrefix := "mathlib4-master/m/leanprover-community/mathlib4" }
  assertTrue "s3: put base + master is flat"
    ((stagedUploadDestFrom .s3 none (some putBase) (some .master)
        MATHLIBREPO none).toOption == some expectMasterFlat)
  let expectFlatUrl : StagedUploadDest :=
    { base := "https://my.example.org"
      label := "(env override)"
      filesPrefix := "f"
      markerPrefix := "m/leanprover-community/mathlib4" }
  assertTrue "PUT_URL is flat with the container policy off"
    ((stagedUploadDestFrom .azure (some "https://my.example.org") none none
        MATHLIBREPO none).toOption == some expectFlatUrl)
  assertTrue "PUT_URL applies on the s3 backend too"
    ((stagedUploadDestFrom .s3 (some "https://my.example.org/bucket") none none
        MATHLIBREPO none).toOption ==
      some { expectFlatUrl with base := "https://my.example.org/bucket" })
  -- A base without a bucket path fails at resolution.
  assertTrue "s3: a put base without a bucket path errors"
    (stagedUploadDestFrom .s3 none (some "https://s3.example.org") (some .forks)
      "alice/mathlib4" none matches .error _)
  assertTrue "s3: a PUT_URL without a bucket path errors"
    (stagedUploadDestFrom .s3 (some "https://my.example.org") none none MATHLIBREPO none
      matches .error _)
  let expectAzureForks : StagedUploadDest :=
    { base := azureAccountURL
      label := "forks"
      filesPrefix := "mathlib4-forks/f/alice/mathlib4/sha1"
      markerPrefix := "mathlib4-forks/m/alice/mathlib4" }
  assertTrue "azure: the Azure account for the container"
    ((stagedUploadDestFrom .azure none none (some .forks) "alice/mathlib4"
        (some "sha1")).toOption == some expectAzureForks)
  -- The label says where the bytes go: a `legacy` write must name that
  -- container in the progress message, not an override.
  let expectLegacy : StagedUploadDest :=
    { base := azureAccountURL
      label := "legacy"
      filesPrefix := "mathlib4/f/alice/mathlib4"
      markerPrefix := "mathlib4/m/alice/mathlib4" }
  assertTrue "azure: an explicit legacy container"
    ((stagedUploadDestFrom .azure none none (some .legacy) "alice/mathlib4" none).toOption ==
      some expectLegacy)
  -- Each backend rejects a destination that contradicts it, instead of
  -- resolving one the operator did not select.
  assertTrue "azure: no container errors"
    (stagedUploadDestFrom .azure none none none "alice/mathlib4" none
      matches .error _)
  assertTrue "s3: a put base without a container errors"
    (stagedUploadDestFrom .s3 none (some "https://s3.example.org/x") none MATHLIBREPO none
      matches .error _)
  assertTrue "s3: no put base errors"
    (stagedUploadDestFrom .s3 none none (some .forks) "alice/mathlib4" none
      matches .error _)
  assertTrue "azure: a put base rebases the container write"
    ((stagedUploadDestFrom .azure none (some putBase) (some .forks)
        "Alice/Mathlib4" (some "sha1")).toOption == some expectForksScoped)
  -- PUT_URL keeps the opposite empty rule from every read variable: any set
  -- value counts, an empty one included, so a misconfigured endpoint fails
  -- the upload rather than divert it to the backend's destination.
  assertTrue "an empty PUT_URL still counts"
    ((stagedUploadDestFrom .azure (some "") none none MATHLIBREPO none).toOption.map (·.base) ==
      some "")
  assertTrue "azure: an empty put base means unset"
    ((stagedUploadDestFrom .azure none (some "") (some .forks) "alice/mathlib4" none).toOption.map
      (·.base) == some azureAccountURL)
  assertTrue "s3: an empty put base means unset, so it errors"
    (stagedUploadDestFrom .s3 none (some "") (some .forks) "alice/mathlib4" none
      matches .error _)
  assertTrue "s3: a put base loses its trailing slashes"
    ((stagedUploadDestFrom .s3 none (some "https://s3.example.org/bucket-prefix//") (some .forks)
      "alice/mathlib4" none).toOption.map (·.base) == some "https://s3.example.org/bucket-prefix")
  -- The resolved destination follows the read-side URL policy: `fileURL` is
  -- exactly `mkFileURL` against the same base.
  if let .ok d := stagedUploadDestFrom .s3 none (some putBase)
      (some .forks) "Alice/Mathlib4" (some "sha1") then
    assertEq "files prefix matches the curl URL shape"
      (mkFileURL (some .forks) "Alice/Mathlib4"
        s!"{putBase}/mathlib4-forks" "x.ltar" (some "sha1"))
      (d.fileURL "x.ltar")
    assertEq "marker prefix matches the marker path"
      s!"{d.base}/mathlib4-forks/{markerPath "Alice/Mathlib4" "sha1"}"
      (d.markerURL "sha1")
  else
    assertTrue "put-base destination resolves" false
  -- The same cross-pin for the flat PUT_URL case.
  if let .ok d := stagedUploadDestFrom .azure (some "https://my.example.org") none none
      "alice/mathlib4" (some "abc1") then
    assertEq "flat-URL files prefix matches the curl URL shape"
      (mkFileURL none "alice/mathlib4" "https://my.example.org" "x.ltar" (some "abc1"))
      (d.fileURL "x.ltar")
  else
    assertTrue "flat-URL destination resolves" false
  -- And for the Azure account and the legacy container rows, so all four
  -- resolution rows are pinned against `mkFileURL`'s shape.
  if let .ok d := stagedUploadDestFrom .azure none none (some .forks) "alice/mathlib4"
      (some "abc1") then
    assertEq "Azure-account prefix matches the curl URL shape"
      (mkFileURL (some .forks) "alice/mathlib4" Container.forks.azureURL "x.ltar" (some "abc1"))
      (d.fileURL "x.ltar")
  else
    assertTrue "Azure-account destination resolves" false
  if let .ok d := stagedUploadDestFrom .azure none none (some .legacy) "alice/mathlib4" none then
    assertEq "legacy-container prefix matches the curl URL shape"
      (mkFileURL (some .legacy) "alice/mathlib4" Container.legacy.azureURL "x.ltar" none)
      (d.fileURL "x.ltar")
  else
    assertTrue "legacy-container destination resolves" false

/-- The curl arguments an s3 upload signs each request with (`s3CurlArgs`),
and the `If-None-Match: *` guard the curl tool adds to a non-overwrite put on
every backend (`uploadPutArgs`). Pins the S3 shape: SigV4 in the given region,
the `UNSIGNED-PAYLOAD` hash that lets curl sign a `-T` upload, and the
session-token header for temporary credentials. The azure arguments spawn
`date`, so this covers S3 only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L1364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
