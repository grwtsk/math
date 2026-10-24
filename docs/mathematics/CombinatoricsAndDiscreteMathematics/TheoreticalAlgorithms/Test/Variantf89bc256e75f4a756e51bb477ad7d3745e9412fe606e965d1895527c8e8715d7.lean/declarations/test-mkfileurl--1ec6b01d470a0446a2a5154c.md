# test_mkFileURL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:247e974c65058ed56a4927bc5a83fee885f146444056cdf23de173a14482cd11",
  "kind": "def",
  "lexical_name": "test_mkFileURL",
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
  "slug": "test-mkfileurl--1ec6b01d470a0446a2a5154c",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ec6b01d470a0446a2a5154c2764eaf9032e8b7353d8385a8449bc611d77407a",
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

Occurrence: `declaration:247e974c65058ed56a4927bc5a83fee885f146444056cdf23de173a14482cd11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_mkFileURL : IO Unit := do
  IO.println "mkFileURL:"
  assertEq "master is flat for the canonical repo"
    "https://lakecache.blob.core.windows.net/mathlib4-master/f/abc.ltar"
    (mkFileURL (some .master) MATHLIBREPO Container.master.azureURL "abc.ltar")
  assertEq "master is flat for a fork repo too"
    "https://lakecache.blob.core.windows.net/mathlib4-master/f/abc.ltar"
    (mkFileURL (some .master) "alice/mathlib4" Container.master.azureURL "abc.ltar")
  -- `forks` prefixes by repo even for the canonical repo, so its fork-trust
  -- uploads don't collide with fork uploads in the same container.
  assertEq "forks prefixes by repo for the canonical repo"
    "https://lakecache.blob.core.windows.net/mathlib4-forks/f/leanprover-community/mathlib4/abc.ltar"
    (mkFileURL (some .forks) MATHLIBREPO Container.forks.azureURL "abc.ltar")
  assertEq "forks prefixes by repo for a fork repo"
    "https://lakecache.blob.core.windows.net/mathlib4-forks/f/alice/mathlib4/abc.ltar"
    (mkFileURL (some .forks) "alice/mathlib4" Container.forks.azureURL "abc.ltar")
  assertEq "nightly-testing prefixes by repo"
    "https://lakecache.blob.core.windows.net/mathlib4-nightly-testing/f/leanprover-community/mathlib4-nightly-testing/abc.ltar"
    (mkFileURL (some .nightlyTesting) NIGHTLY_TESTING_REPO
      Container.nightlyTesting.azureURL "abc.ltar")
  assertEq "pr-toolchain-tests prefixes by repo"
    "https://lakecache.blob.core.windows.net/mathlib4-pr-toolchain-tests/f/leanprover-community/mathlib4-nightly-testing/abc.ltar"
    (mkFileURL (some .prToolchainTests) NIGHTLY_TESTING_REPO
      Container.prToolchainTests.azureURL "abc.ltar")
  assertEq "legacy is flat for the canonical repo"
    "https://lakecache.blob.core.windows.net/mathlib4/f/abc.ltar"
    (mkFileURL (some .legacy) MATHLIBREPO Container.legacy.azureURL "abc.ltar")
  assertEq "legacy prefixes by repo for a fork repo"
    "https://lakecache.blob.core.windows.net/mathlib4/f/alice/mathlib4/abc.ltar"
    (mkFileURL (some .legacy) "alice/mathlib4" Container.legacy.azureURL "abc.ltar")
  -- No container (user-supplied URL): the shape follows the repo — flat for the
  -- canonical repo, prefixed otherwise.
  assertEq "user URL is flat for the canonical repo"
    "https://custom.example/cache/f/abc.ltar"
    (mkFileURL none MATHLIBREPO "https://custom.example/cache" "abc.ltar")
  assertEq "user URL prefixes by repo for a fork repo"
    "https://custom.example/cache/f/alice/mathlib4/abc.ltar"
    (mkFileURL none "alice/mathlib4" "https://custom.example/cache" "abc.ltar")
  -- A scope adds a `{sha}` path segment on prefixed paths.
  assertEq "scope adds a SHA segment on a fork path"
    "https://lakecache.blob.core.windows.net/mathlib4-forks/f/alice/mathlib4/abc123def/H.ltar"
    (mkFileURL (some .forks) "alice/mathlib4" Container.forks.azureURL "H.ltar" (some "abc123def"))
  assertEq "scope adds a SHA segment on the canonical repo's forks path"
    "https://lakecache.blob.core.windows.net/mathlib4-forks/f/leanprover-community/mathlib4/abc123def/H.ltar"
    (mkFileURL (some .forks) MATHLIBREPO Container.forks.azureURL "H.ltar" (some "abc123def"))
  -- A scope is ignored on flat paths.
  assertEq "scope is ignored on a flat master path"
    "https://lakecache.blob.core.windows.net/mathlib4-master/f/abc.ltar"
    (mkFileURL (some .master) MATHLIBREPO Container.master.azureURL "abc.ltar" (some "abc123def"))
  assertEq "scope is ignored on a flat legacy path"
    "https://lakecache.blob.core.windows.net/mathlib4/f/abc.ltar"
    (mkFileURL (some .legacy) MATHLIBREPO Container.legacy.azureURL "abc.ltar" (some "abc123def"))
  -- The repo segment is lowercased, so a mixed-case GitHub owner resolves to the
  -- same path whether it reaches the cache from CI or a local remote URL.
  assertEq "fork repo is lowercased in the path"
    "https://lakecache.blob.core.windows.net/mathlib4-forks/f/alice/mathlib4/abc.ltar"
    (mkFileURL (some .forks) "Alice/Mathlib4" Container.forks.azureURL "abc.ltar")

end MkFileURL

section ParseCacheFromList

/-- Parser for `--cache-from=a,b,c`. List order is the trust order tried at
download time, so it is preserved exactly. The parser is strict: one bad name
or empty input fails the whole list rather than degrading to a default, so a
typo surfaces instead of silently changing where the cache is read. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
