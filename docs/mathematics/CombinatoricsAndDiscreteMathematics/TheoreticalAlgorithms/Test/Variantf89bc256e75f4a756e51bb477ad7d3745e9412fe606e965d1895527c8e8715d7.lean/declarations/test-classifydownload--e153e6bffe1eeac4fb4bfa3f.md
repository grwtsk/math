# test_classifyDownload

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbacbc2b710140e818e3220619618f7897b7fce495e23f997fbfa1fbe0087493",
  "kind": "def",
  "lexical_name": "test_classifyDownload",
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
  "slug": "test-classifydownload--e153e6bffe1eeac4fb4bfa3f",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1236,
    "line": 1205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e153e6bffe1eeac4fb4bfa3f97c7ff6c8e1411681b8abc6b512b2a53f47df95f",
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

Occurrence: `declaration:dbacbc2b710140e818e3220619618f7897b7fce495e23f997fbfa1fbe0087493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1205–1236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_classifyDownload : IO Unit := do
  IO.println "classifyDownload:"
  -- A clean 200/201 delivers.
  assertTrue "200 + exit 0 delivers"
    (classifyDownload (some 200) 0 false matches .delivered)
  assertTrue "201 + exit 0 delivers"
    (classifyDownload (some 201) 0 false matches .delivered)
  -- A 200 with a nonzero exit code carries a truncated body.
  assertTrue "200 + exit 18 fails"
    (classifyDownload (some 200) 18 false matches .failed)
  assertTrue "201 + exit 18 fails"
    (classifyDownload (some 201) 18 false matches .failed)
  -- The status alone decides a miss.
  assertTrue "404 is a miss"
    (classifyDownload (some 404) 0 false matches .miss)
  assertTrue "404 + nonzero exit is still a miss"
    (classifyDownload (some 404) 18 false matches .miss)
  assertTrue "403 is a miss with treatForbiddenAsMiss"
    (classifyDownload (some 403) 0 true matches .miss)
  assertTrue "403 fails otherwise"
    (classifyDownload (some 403) 0 false matches .failed)
  assertTrue "409 fails on a read"
    (classifyDownload (some 409) 0 false matches .failed)
  -- No usable status is a failure (a connection error reports `000`).
  assertTrue "status 0 fails"
    (classifyDownload (some 0) 0 false matches .failed)
  assertTrue "no status fails"
    (classifyDownload none 0 false matches .failed)

/-- The put config discards every response body: stdout must carry only the
per-transfer JSON reports (`--write-out '%{json}'`) that `monitorCurl`
parses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L1205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
