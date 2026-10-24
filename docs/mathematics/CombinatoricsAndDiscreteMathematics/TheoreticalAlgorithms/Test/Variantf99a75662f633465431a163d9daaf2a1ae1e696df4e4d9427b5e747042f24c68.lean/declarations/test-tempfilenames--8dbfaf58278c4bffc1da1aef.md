# test_tempFileNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a652252da8d08e21e43ea83390b10a78f8e9c7431aa8c4d1d45c588e9452c243",
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
  "slug": "test-tempfilenames--8dbfaf58278c4bffc1da1aef",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 529,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dbfaf58278c4bffc1da1aef440e4e97cce03aed389330cfc9545403a4418bb3",
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

Occurrence: `declaration:a652252da8d08e21e43ea83390b10a78f8e9c7431aa8c4d1d45c588e9452c243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–551.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
