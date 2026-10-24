# test_parseCacheFromList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dfbf4484d91296b4a15811684e6023a7fc7b8d908801a757c1c8a23e8c4a9d0",
  "kind": "def",
  "lexical_name": "test_parseCacheFromList",
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
  "slug": "test-parsecachefromlist--af4b403a9f1654ec771fac6d",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 420,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af4b403a9f1654ec771fac6dbc9bc8c0395d74aa72528577aab23fa5f1083f6f",
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

Occurrence: `declaration:1dfbf4484d91296b4a15811684e6023a7fc7b8d908801a757c1c8a23e8c4a9d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_parseCacheFromList : IO Unit := do
  IO.println "parseCacheFromList:"
  assertTrue "single container"
    (parseCacheFromList "master" == some [.master])
  assertTrue "two containers"
    (parseCacheFromList "master,forks" == some [.master, .forks])
  assertTrue "all five containers"
    (parseCacheFromList "master,forks,nightly-testing,pr-toolchain-tests,legacy" ==
      some [.master, .forks, .nightlyTesting, .prToolchainTests, .legacy])
  assertTrue "master,legacy"
    (parseCacheFromList "master,legacy" == some [.master, .legacy])
  -- Order is preserved, not normalized: `forks,master` reverses the priority.
  assertTrue "preserves the given order"
    (parseCacheFromList "forks,master" == some [.forks, .master])
  -- Whitespace around commas is tolerated, so the flag survives shell expansion.
  assertTrue "whitespace around names is tolerated"
    (parseCacheFromList " master , forks " == some [.master, .forks])
  assertTrue "one unknown name rejects the whole list"
    (parseCacheFromList "master,bogus" == none)
  assertTrue "empty input is rejected"
    (parseCacheFromList "" == none)

end ParseCacheFromList

section ExtractRepoFromUrl

/-- Parses `owner/name` from a git remote URL. The result selects the per-repo
read chain, so misreading a fork as the canonical repo would read the wrong
chain; these cases cover every URL shape git emits via `git remote get-url` or a
direct remote (e.g. `gh pr checkout`). Unparseable input returns `none`, and the
caller falls back to `MATHLIBREPO`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
