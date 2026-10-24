# test_effectiveGetURLs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41242398408b1b46806d8b711f1294960fdb5bbac5b33ca7392bd8574973cf8b",
  "kind": "def",
  "lexical_name": "test_effectiveGetURLs",
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
  "slug": "test-effectivegeturls--24510b8bf1223599c15437c4",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24510b8bf1223599c15437c4c2c379d47e6db5d2e25740dab370fdce8ac11d1d",
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

Occurrence: `declaration:41242398408b1b46806d8b711f1294960fdb5bbac5b33ca7392bd8574973cf8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_effectiveGetURLs : IO Unit := do
  IO.println "effectiveGetURLs:"
  if (← getEnvNonEmpty "MATHLIB_CACHE_GET_URL").isSome ||
      (← getEnvNonEmpty "MATHLIB_CACHE_FROM").isSome then
    IO.println "  skipped: MATHLIB_CACHE_GET_URL or MATHLIB_CACHE_FROM is set"
    return
  let base ← getBaseURL
  assertTrue "default chain pairs each container with its read URL"
    ((← effectiveGetURLs MATHLIBREPO) ==
      [(some .master, s!"{base}/mathlib4-master"),
       (some .legacy, s!"{base}/mathlib4")])
  cacheFromOverride.set (some [.forks, .master])
  assertTrue "--cache-from override keeps its order"
    ((← effectiveGetURLs MATHLIBREPO) ==
      [(some .forks, s!"{base}/mathlib4-forks"),
       (some .master, s!"{base}/mathlib4-master")])
  cacheFromOverride.set none

end PerRepoAllowlist

section MkFileURL

/-- URL construction for a cache file. The path shape follows the container
(`Container.flatPath`), not the repo, so the same repo lands flat in `master`
and prefixed in `forks`. A `none` container is the user-supplied-URL case
(`MATHLIB_CACHE_GET_URL` / `_PUT_URL`), where the shape follows the repo alone.

A per-SHA scope (`MATHLIB_CACHE_REPO_SCOPE`) inserts `{sha}` between repo and
hash on prefixed paths only — `/f/{repo}/{sha}/{hash}` — keeping each commit's
fork uploads in their own namespace. Flat paths ignore the scope.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
