# test_Container_azureURL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40e6c0aba53c529b993ef55b23ccebee0b8066657fe47226e0cb00ea68308492",
  "kind": "def",
  "lexical_name": "test_Container_azureURL",
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
  "slug": "test-container-azureurl--83654eaf29e33750a442adc0",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83654eaf29e33750a442adc0e4c7826800b7983e02ab2dd4c9b263f371d1a0e3",
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

Occurrence: `declaration:40e6c0aba53c529b993ef55b23ccebee0b8066657fe47226e0cb00ea68308492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_Container_azureURL : IO Unit := do
  IO.println "Container.azureURL:"
  assertEq "master URL"
    "https://lakecache.blob.core.windows.net/mathlib4-master"
    Container.master.azureURL
  assertEq "forks URL"
    "https://lakecache.blob.core.windows.net/mathlib4-forks"
    Container.forks.azureURL
  assertEq "nightly-testing URL"
    "https://lakecache.blob.core.windows.net/mathlib4-nightly-testing"
    Container.nightlyTesting.azureURL
  assertEq "pr-toolchain-tests URL"
    "https://lakecache.blob.core.windows.net/mathlib4-pr-toolchain-tests"
    Container.prToolchainTests.azureURL
  -- `legacy` is the bare `mathlib4` container, with no `-legacy` suffix.
  assertEq "legacy URL"
    "https://lakecache.blob.core.windows.net/mathlib4"
    Container.legacy.azureURL

/-- A variable that names a read URL or a read chain arrives trimmed, and an
empty or whitespace-only value means unset. `MATHLIB_CACHE_BASE_URL`,
`MATHLIB_CACHE_GET_URL`, and `MATHLIB_CACHE_FROM` follow that rule. CI wires
them from a GitHub Actions `vars` lookup, which yields `""` for an undefined
variable, and such a value behaves as an absent one. The upload endpoint
`MATHLIB_CACHE_PUT_URL` keeps the opposite rule: an empty value there fails the
upload rather than divert it to the fallback container. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
