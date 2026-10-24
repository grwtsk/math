# shouldWarnNonDefaultScope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b9a70afa36ca2ca7f3fc49d98d71831ac220e97f729615554c56011456b54fc",
  "kind": "def",
  "lexical_name": "shouldWarnNonDefaultScope",
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
  "slug": "shouldwarnnondefaultscope--7aae41643e6dba6f3f7bdb7b",
  "source": {
    "blob": "8bea03c0f4b358a94e3d355059ad7e0814254c00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7aae41643e6dba6f3f7bdb7b9dcf1db40d021d61eeec91cb28e8b9907b66fd09",
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

Occurrence: `declaration:1b9a70afa36ca2ca7f3fc49d98d71831ac220e97f729615554c56011456b54fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shouldWarnNonDefaultScope (repoExplicit? detectedRepo? : Option String)
    (cliCacheFromOverride? : Option (List Container)) (resolvedRepo : String)
    (unsafeWindow? : Option Nat := none) :
    IO Bool := do
  -- Condition 0: `--unsafe` (with its SHA window) — the most permissive read.
  if unsafeWindow?.isSome then return true

  -- Condition 1: `--scope=` flag or `MATHLIB_CACHE_REPO_SCOPE` env var supplied.
  -- A HEAD scope is exempt: trust-equivalent to no scope (see `scopeIsHead`).
  if (← getRepoScope).isSome then
    unless (← scopeIsHead) do return true

  -- Condition 2: --cache-from CLI override widens the lookup chain
  match cliCacheFromOverride? with
  | some cliOverride =>
    let defaultContainers := defaultContainersForRepo resolvedRepo
    unless cliOverride == defaultContainers do
      return true
  | none => pure ()

  -- Condition 3: --repo was explicitly passed AND does not match the git remote.
  -- Only fires when the user explicitly overrode --repo; defaulting to MATHLIBREPO
  -- from a fork checkout is normal and does not warn.
  match repoExplicit?, detectedRepo? with
  | some explicitRepo, some detected =>
    unless explicitRepo == detected do
      return true
  -- No --repo override, or the remote couldn't be determined: don't warn.
  | _, _ => pure ()

  return false

/--
Print a prominent security warning to stderr when reading at a non-default scope.

The warning includes:
- A clear statement that the user is trusting artifacts at a non-default scope
- The scope details (container, repo, SHA as applicable)
- Why the warning is being issued (which condition triggered it)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bea03c0f4b358a94e3d355059ad7e0814254c00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
