# scopeIsHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:933bd0dd26a8172d75e3c2bbccf233b40105582a0cda051e216291658082a7dc",
  "kind": "def",
  "lexical_name": "scopeIsHead",
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
  "slug": "scopeishead--05bc82ca8422d666d1b7268f",
  "source": {
    "blob": "8bea03c0f4b358a94e3d355059ad7e0814254c00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05bc82ca8422d666d1b7268ffd3d84092f794d649d3cf09d02aa2efed5d2bd05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:933bd0dd26a8172d75e3c2bbccf233b40105582a0cda051e216291658082a7dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scopeIsHead : IO Bool := do
  let some scope ← getRepoScope | return false
  let head ← try getGitCommitHash catch _ => return false
  return head == scope

/--
Condition to determine if a non-default scope warning should be printed.

Returns `true` if any of these hold:
0. `--unsafe` was passed (`unsafeWindow?` is `some _`): the read walks several
   fork commits and trusts whoever built each of them
1. `MATHLIB_CACHE_REPO_SCOPE` is set in the environment (any non-empty value)
   and differs from the checked-out HEAD (see `scopeIsHead`)
2. `--cache-from` was passed and widens the lookup chain beyond `defaultContainersForRepo` for the resolved repo
3. `--repo` was passed and does not match the git remote (`detectedRepo?`)

`detectedRepo?` is the repo reported by the git remote (from `resolveRepo`,
probed once per command); it is `none` if it could not be determined.

Otherwise returns `false` (default lookup chain, no warning needed).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bea03c0f4b358a94e3d355059ad7e0814254c00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
