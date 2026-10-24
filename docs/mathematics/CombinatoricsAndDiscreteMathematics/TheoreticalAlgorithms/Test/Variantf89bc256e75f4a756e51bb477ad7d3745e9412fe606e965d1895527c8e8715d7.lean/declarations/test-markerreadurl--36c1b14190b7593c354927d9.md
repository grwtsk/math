# test_markerReadURL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd1c5c7b1e7f39d948aa258006de704007e68321abd5686857eb96f017031fa9",
  "kind": "def",
  "lexical_name": "test_markerReadURL",
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
  "slug": "test-markerreadurl--36c1b14190b7593c354927d9",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 660,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36c1b14190b7593c354927d9de93fb7505950f771c8f8421180ae521443df4e4",
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

Occurrence: `declaration:fd1c5c7b1e7f39d948aa258006de704007e68321abd5686857eb96f017031fa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_markerReadURL : IO Unit := do
  IO.println "markerReadURL:"
  let base ← getBaseURL
  assertEq "probe URL follows the read base"
    s!"{base}/mathlib4-forks/m/alice/mathlib4/abc123"
    (← markerReadURL .forks "alice/mathlib4" "abc123")
  assertEq "probe repo is lowercased in the path"
    s!"{base}/mathlib4-forks/m/alice/mathlib4/abc123"
    (← markerReadURL .forks "Alice/Mathlib4" "abc123")
  if (normalizeBaseURL (← IO.getEnv "MATHLIB_CACHE_BASE_URL")).isNone then
    let ambient ← useLegacy.get
    useLegacy.set false
    assertEq "default probe URL is on the endpoint"
      s!"{publicCacheEndpoint}/mathlib4-forks/m/alice/mathlib4/abc123"
      (← markerReadURL .forks "alice/mathlib4" "abc123")
    useLegacy.set true
    assertEq "legacy probe URL matches the Azure write URL"
      s!"{Container.forks.azureURL}/{markerPath "alice/mathlib4" "abc123"}"
      (← markerReadURL .forks "alice/mathlib4" "abc123")
    useLegacy.set ambient

end Marker

section ScopeResolution

/-- `getRepoScope` answers "is the user reading from a SHA-scoped namespace?".
It reads the `--scope=` flag (the `scopeOverride` ref) first, then the
`MATHLIB_CACHE_REPO_SCOPE` env var, so an explicit flag is never overridden by
an inherited env var. The flag value is returned as given. The env-var branch
needs process state, so it is exercised by the CI integration tests rather than
here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
