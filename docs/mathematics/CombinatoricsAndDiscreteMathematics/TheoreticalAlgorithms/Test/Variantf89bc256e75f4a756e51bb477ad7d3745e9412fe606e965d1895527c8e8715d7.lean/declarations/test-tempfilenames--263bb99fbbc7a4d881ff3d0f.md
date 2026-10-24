# test_tempFileNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f86f11f6b1c6b72c3c2e0ebd5c9a5d4f5a6f56354050bfa1554a135db36ffd7f",
  "kind": "def",
  "lexical_name": "test_tempFileNames",
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
  "slug": "test-tempfilenames--263bb99fbbc7a4d881ff3d0f",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 537,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:263bb99fbbc7a4d881ff3d0f6c41b43f62d24558a8978127901e32c9facbdd25",
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

Occurrence: `declaration:f86f11f6b1c6b72c3c2e0ebd5c9a5d4f5a6f56354050bfa1554a135db36ffd7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_tempFileNames : IO Unit := do
  IO.println "temporary file names:"
  assertTrue "the process tag is non-empty" (!IO.PROCTAG.isEmpty)
  assertTrue "the in-flight suffix still ends in .part" (IO.PARTSUFFIX.endsWith ".part")
  assertTrue "the in-flight suffix is tagged, not a bare .part" (IO.PARTSUFFIX != ".part")
  assertTrue "the in-flight suffix carries the tag" ((IO.PARTSUFFIX.splitOn IO.PROCTAG).length == 2)
  assertTrue "the curl config carries the tag"
    ((IO.CURLCFG.toString.splitOn IO.PROCTAG).length == 2)
  assertTrue "the curl config sits in the cache directory"
    (IO.CURLCFG.parent == some IO.CACHEDIR)
  assertTrue "an upload's curl config sits under the given directory"
    ((IO.curlConfigIn "staging").parent == some "staging")
  assertTrue "an upload's curl config carries the same tagged name"
    ((IO.curlConfigIn "staging").fileName == IO.CURLCFG.fileName)
  -- The tag must not reintroduce a path separator or a shell/curl-config hazard.
  assertTrue "the tag is a bare identifier" (IO.PROCTAG.all fun c => c.isAlphanum)

end TempFileNames

section IsRemoteURL

/-- Discriminator: is this string a remote URL (vs a local filesystem path)?
Used to decide whether to short-circuit `git remote get-url` lookups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
