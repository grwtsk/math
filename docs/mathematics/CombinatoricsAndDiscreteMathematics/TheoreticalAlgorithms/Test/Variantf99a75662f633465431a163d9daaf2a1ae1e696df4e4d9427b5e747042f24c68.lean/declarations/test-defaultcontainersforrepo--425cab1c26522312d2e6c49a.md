# test_defaultContainersForRepo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:223eeb62f7c6d178b99e6254f0e6d905f4df0d5342f7e8e3be37fb29899d0655",
  "kind": "def",
  "lexical_name": "test_defaultContainersForRepo",
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
  "slug": "test-defaultcontainersforrepo--425cab1c26522312d2e6c49a",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 293,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:425cab1c26522312d2e6c49a9be1c087999c590bef84dab9472dfe9825d742c3",
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

Occurrence: `declaration:223eeb62f7c6d178b99e6254f0e6d905f4df0d5342f7e8e3be37fb29899d0655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_defaultContainersForRepo : IO Unit := do
  IO.println "defaultContainersForRepo:"
  assertTrue "canonical repo → [master, legacy]"
    (defaultContainersForRepo MATHLIBREPO == [.master, .legacy])
  assertTrue "nightly-testing repo → [nightly-testing, forks, legacy], no pr-toolchain-tests"
    (defaultContainersForRepo NIGHTLY_TESTING_REPO == [.nightlyTesting, .forks, .legacy])
  assertTrue "fork repo → [master, forks, legacy]"
    (defaultContainersForRepo "alice/mathlib4" == [.master, .forks, .legacy])
  assertTrue "unknown repo falls back to the fork chain"
    (defaultContainersForRepo "some/other-repo" == [.master, .forks, .legacy])
  -- Every chain ends with `legacy`; dropping it would quietly shrink hit rates.
  assertTrue "fork chain ends with legacy"
    ((defaultContainersForRepo "alice/mathlib4").getLast? == some .legacy)
  assertTrue "canonical chain ends with legacy"
    ((defaultContainersForRepo MATHLIBREPO).getLast? == some .legacy)
  assertTrue "nightly-testing chain ends with legacy"
    ((defaultContainersForRepo NIGHTLY_TESTING_REPO).getLast? == some .legacy)

/-- `effectiveGetURLs` pairs the lookup chain with read URLs in trust order.
This test covers the default chain and the `--cache-from` override. The
`MATHLIB_CACHE_GET_URL` and `MATHLIB_CACHE_FROM` branches need process state,
so the CI integration tests exercise them instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
