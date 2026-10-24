# downloadFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1240fde78310d4bf750cbd3aef6c359d9da050688805ab9c0cf86550ccf55a71",
  "kind": "def",
  "lexical_name": "downloadFile",
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
  "slug": "downloadfile--6204bcf8791e3b72bbc96f5a",
  "source": {
    "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 520,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6204bcf8791e3b72bbc96f5a81185882c706b19518577d2c469ba2b34e5b212e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1240fde78310d4bf750cbd3aef6c359d9da050688805ab9c0cf86550ccf55a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def downloadFile (container : Option Container) (repo containerURL : String)
    (hash : UInt64) (scope? : Option String) (treatForbiddenAsMiss : Bool := false) :
    IO (TransferVerdict .download) := do
  let fileName := hash.asLTar
  let url := mkFileURL container repo containerURL fileName scope?
  let path := IO.CACHEDIR / fileName
  let partFileName := fileName ++ IO.PARTSUFFIX
  let partPath := IO.CACHEDIR / partFileName
  let out ← IO.Process.output
    { cmd := (← IO.getCurl),
      args := #[url, "--silent"] ++ curlFollowRedirectArgs ++
        -- This path serves curls below 7.71, which reject `--retry-all-errors`.
        curlRetryArgs (supportLegacyCurl := true) ++
        #["--write-out", "%{http_code}", "-o", partPath.toString] }
  -- Anything short of a delivery leaves at most an error body in the part file.
  let verdict := classifyDownload out.stdout.trimAscii.toNat? out.exitCode.toNat
    treatForbiddenAsMiss
  if verdict matches .delivered then
    IO.FS.rename partPath path
  else if ← partPath.pathExists then
    IO.FS.removeFile partPath
  return verdict

/-- Extract hash from filename (e.g., "/path/to/.cache/00012345.ltar" → 0x12345).
    Handles a finished `<hash>.ltar`, an in-flight `<hash>.ltar<PARTSUFFIX>`, and a
    `<hash>.ltar.part` left in the cache by a version that wrote untagged temporaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
