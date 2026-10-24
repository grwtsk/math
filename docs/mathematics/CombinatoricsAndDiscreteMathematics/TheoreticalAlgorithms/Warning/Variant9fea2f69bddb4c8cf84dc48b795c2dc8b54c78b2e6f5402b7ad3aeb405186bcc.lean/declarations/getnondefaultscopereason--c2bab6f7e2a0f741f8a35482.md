# getNonDefaultScopeReason

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c7e615a42b692f98a30b4482bb98c21bf16dc4b4bd570d8d5f19956b2b0cb13",
  "kind": "def",
  "lexical_name": "getNonDefaultScopeReason",
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
  "slug": "getnondefaultscopereason--c2bab6f7e2a0f741f8a35482",
  "source": {
    "blob": "123f78d5932774d0a83cf59a7e1624f3a10295ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2bab6f7e2a0f741f8a35482566ebe0ab3064b557e8b5315e835abe224607d5d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c7e615a42b692f98a30b4482bb98c21bf16dc4b4bd570d8d5f19956b2b0cb13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getNonDefaultScopeReason (repoExplicit? detectedRepo? : Option String)
    (cliCacheFromOverride? : Option (List Container)) (resolvedRepo : String)
    (unsafeWindow? : Option Nat := none) :
    IO String := do
  -- Check conditions in order; return the first that matches.

  -- Condition 0: `--unsafe` walks up to `window` fork commits, trusting each.
  if let some window := unsafeWindow? then
    return s!"--unsafe (automatic walk over up to {window} fork commit(s); \
      trusting whoever built them)"

  -- Condition 1: `--scope=` flag (preferred form) or `MATHLIB_CACHE_REPO_SCOPE`
  -- env var (CI form). Reported with the source that set it. A HEAD scope is
  -- exempt, mirroring `shouldWarnNonDefaultScope`.
  unless (← scopeIsHead) do
    if let some s ← scopeOverride.get then
      return s!"--scope={s} (explicit per-commit scope)"
    if let some scope ← getEnvNonEmpty "MATHLIB_CACHE_REPO_SCOPE" then
      return s!"MATHLIB_CACHE_REPO_SCOPE={scope} (explicit per-commit scope)"

  -- Condition 2: --cache-from override
  if let some cliOverride := cliCacheFromOverride? then
    let defaultContainers := defaultContainersForRepo resolvedRepo
    if cliOverride != defaultContainers then
      let overrideStr := ", ".intercalate (cliOverride.map Container.name)
      return s!"--cache-from={overrideStr} (explicit container override)"

  -- Condition 3: --repo was explicitly passed AND doesn't match the git remote
  match repoExplicit?, detectedRepo? with
  | some explicitRepo, some detected =>
    if explicitRepo != detected then
      return s!"--repo={explicitRepo} (overrides detected git remote: {detected})"
  | _, _ => pure ()

  return "unknown reason"

/--
Print the non-default-scope warning if any of the three conditions hold.

Called before a read (`cache get`). The warning is informational only — it
never prompts, so it stays safe to run in CI.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `123f78d5932774d0a83cf59a7e1624f3a10295ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
