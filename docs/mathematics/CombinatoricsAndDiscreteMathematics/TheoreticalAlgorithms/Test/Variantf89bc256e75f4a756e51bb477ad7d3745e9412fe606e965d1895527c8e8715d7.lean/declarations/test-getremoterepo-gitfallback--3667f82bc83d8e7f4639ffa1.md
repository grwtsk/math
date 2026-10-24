# test_getRemoteRepo_gitFallback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb2b1c520d712707722acf63fdd7701141e0eb0ad09a551f83f8bf107ae07ccc",
  "kind": "def",
  "lexical_name": "test_getRemoteRepo_gitFallback",
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
  "slug": "test-getremoterepo-gitfallback--3667f82bc83d8e7f4639ffa1",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 928,
    "line": 888,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3667f82bc83d8e7f4639ffa17fbbcec5be827b9733b7177cf78b76e129342ecc",
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

Occurrence: `declaration:bb2b1c520d712707722acf63fdd7701141e0eb0ad09a551f83f8bf107ae07ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–928.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_getRemoteRepo_gitFallback : IO Unit := do
  IO.println "getRemoteRepo git fallback:"
  -- Case 1: nonexistent cwd causes IO.Process.output to throw.
  -- The try...catch in getRemoteRepo must intercept it and return none.
  let fakePath := "/tmp/surely-nonexistent-mathlib-cache-test-xyz-9999999"
  let r1 ← withSuppressedOutput (getRemoteRepo fakePath)
  assertTrue "getRemoteRepo returns none when git throws (nonexistent cwd)" (r1 == none)

  -- Case 2: existing directory that is not a git repo (git returns exit 128).
  -- This exercises the exit-code fallback path that predates the try...catch.
  let r2 ← withSuppressedOutput (getRemoteRepo "/tmp")
  assertTrue "getRemoteRepo returns none in a non-git directory" (r2 == none)

  -- resolveRepo propagates the fallback correctly:
  --   detected? = none, resolved = MATHLIBREPO → master-only chain.
  let (detected?, resolved) ← withSuppressedOutput (resolveRepo none fakePath)
  assertTrue "resolveRepo detected? is none on git failure" (detected? == none)
  assertTrue "resolveRepo falls back to MATHLIBREPO on git failure" (resolved == MATHLIBREPO)
  assertTrue "fallback chain includes master"
    ((defaultContainersForRepo resolved).contains .master)
  assertTrue "fallback chain excludes forks (no fork container for dependency builds)"
    (!(defaultContainersForRepo resolved).contains .forks)

/-- `headIsAncestorOfMaster` gates the uncached-fork-HEAD note: when HEAD is
already part of master's history, `master` (first in the fork lookup chain)
serves every file by hash, so the note would be a false positive and is
suppressed.

Like `getRemoteRepo`, this helper must never throw — it runs on the read path,
including inside dependency builds where the checkout may not be a git repo (or
may lack a local `master`). Both failure modes degrade to `false` (= "not an
ancestor", so the caller keeps its default behavior):

* **Nonexistent path** — `IO.Process.output` throws before git starts; the
  `try...catch` must intercept it.
* **Non-git directory** — git runs but exits non-zero; the `exitCode == 0`
  check returns `false`.

The positive topology cases (HEAD on master ⇒ `true`; diverged branch ⇒ `false`)
exercise real git history and are covered by the CI integration tests, matching
how the other git-walking helpers are tested. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
