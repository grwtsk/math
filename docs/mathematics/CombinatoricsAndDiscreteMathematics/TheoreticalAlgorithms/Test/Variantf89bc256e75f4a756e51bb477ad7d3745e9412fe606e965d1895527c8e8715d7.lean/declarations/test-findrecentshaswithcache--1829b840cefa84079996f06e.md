# test_findRecentSHAsWithCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85ba5c0c8d7b6ae72f85281f9032fc2f5d4f38de1f9b7d2ef8ed23069f6d1ce1",
  "kind": "def",
  "lexical_name": "test_findRecentSHAsWithCache",
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
  "slug": "test-findrecentshaswithcache--1829b840cefa84079996f06e",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 887,
    "line": 859,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1829b840cefa84079996f06ef443f7d39b8677722c8ab2a6b4a88b2fd331ef01",
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

Occurrence: `declaration:85ba5c0c8d7b6ae72f85281f9032fc2f5d4f38de1f9b7d2ef8ed23069f6d1ce1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–887.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_findRecentSHAsWithCache : IO Unit := do
  IO.println "findRecentSHAsWithCache:"
  let result ← withSuppressedOutput (findRecentSHAsWithCache [] MATHLIBREPO 5)
  assertTrue "empty SHA list returns [] without probing" (result == [])
  let result ← withSuppressedOutput (findRecentSHAsWithCache [] MATHLIBREPO 0)
  assertTrue "limit 0 returns [] without probing" (result == [])

end NonDefaultScope

section GitFallback

/-- `getRemoteRepo` and `resolveRepo` must never throw, regardless of git's
availability or the state of the target path. This matters for `cache get`
invoked inside a Lake dependency update, where the Mathlib dependency may be a
plain archive without a `.git` directory.

Two distinct failure modes are tested:

* **Nonexistent path** — `IO.Process.output` throws before git even starts
  (the OS rejects the invalid cwd). The `try...catch` in `getRemoteRepo` must
  catch the exception and return `none`.

* **Non-git directory** — git runs successfully but the path is not a repo, so
  every git command exits non-zero. The existing exit-code checks already handle
  this path; the test pins that `none` is returned here too.

In both cases `resolveRepo` must fall back to `MATHLIBREPO`, giving the
master-only container chain (no `forks`) — exactly what a dependency build
should read from. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
