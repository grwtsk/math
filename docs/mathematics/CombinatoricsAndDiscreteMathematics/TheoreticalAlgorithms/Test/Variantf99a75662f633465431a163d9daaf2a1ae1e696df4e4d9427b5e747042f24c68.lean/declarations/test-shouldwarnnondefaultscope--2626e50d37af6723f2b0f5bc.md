# test_shouldWarnNonDefaultScope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35d8a42e024e3f7bc8186f53e3d840d73604a00c359b7a8507d496403e0ba49c",
  "kind": "def",
  "lexical_name": "test_shouldWarnNonDefaultScope",
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
  "slug": "test-shouldwarnnondefaultscope--2626e50d37af6723f2b0f5bc",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 781,
    "line": 719,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2626e50d37af6723f2b0f5bcbbf296af20353e2b4c8d87081c03a5bd1097d1b6",
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

Occurrence: `declaration:35d8a42e024e3f7bc8186f53e3d840d73604a00c359b7a8507d496403e0ba49c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–781.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_shouldWarnNonDefaultScope : IO Unit := do
  IO.println "shouldWarnNonDefaultScope:"
  withSavedScopeOverride do
    scopeOverride.set none

    assertTrue "plain get with no flags does not warn"
      (!(← withSuppressedOutput (shouldWarnNonDefaultScope none none none MATHLIBREPO)))

    scopeOverride.set (some "abc123")
    assertTrue "a set scope warns"
      (← withSuppressedOutput (shouldWarnNonDefaultScope none none none MATHLIBREPO))
    scopeOverride.set none

    -- A scope equal to HEAD is trust-equivalent to no scope (CI's normal mode).
    -- Skipped when HEAD can't be resolved (not in a git checkout).
    let head? ← try some <$> withSuppressedOutput getGitCommitHash catch _ => pure none
    if let some head := head? then
      scopeOverride.set (some head)
      assertTrue "a scope equal to HEAD does not warn"
        (!(← withSuppressedOutput (shouldWarnNonDefaultScope none none none MATHLIBREPO)))
      scopeOverride.set none

    -- --cache-from equal to the repo's default chain is not widening.
    let mathlibDefault := defaultContainersForRepo MATHLIBREPO
    assertTrue "--cache-from equal to the default does not warn"
      (!(← withSuppressedOutput
          (shouldWarnNonDefaultScope none none (some mathlibDefault) MATHLIBREPO)))

    assertTrue "--cache-from widening the chain warns"
      (← withSuppressedOutput
          (shouldWarnNonDefaultScope none none (some [.master, .forks, .legacy]) MATHLIBREPO))

    -- A fork checkout (remote ≠ resolved repo) stays silent without an explicit --repo.
    assertTrue "a fork checkout without --repo does not warn"
      (!(← withSuppressedOutput
          (shouldWarnNonDefaultScope none (some "alice/mathlib4") none "alice/mathlib4")))

    assertTrue "--repo differing from the remote warns"
      (← withSuppressedOutput
          (shouldWarnNonDefaultScope (some "bob/mathlib4") (some "alice/mathlib4") none "bob/mathlib4"))

    assertTrue "--repo matching the remote does not warn"
      (!(← withSuppressedOutput
          (shouldWarnNonDefaultScope (some "alice/mathlib4") (some "alice/mathlib4") none
            "alice/mathlib4")))

    -- With no detectable remote there is nothing to compare --repo against.
    assertTrue "--repo with no detectable remote does not warn"
      (!(← withSuppressedOutput
          (shouldWarnNonDefaultScope (some "bob/mathlib4") none none "bob/mathlib4")))

    -- `--unsafe` (any window) always warns; it walks several untrusted scopes.
    assertTrue "--unsafe warns regardless of other inputs"
      (← withSuppressedOutput
          (shouldWarnNonDefaultScope none none none MATHLIBREPO (unsafeWindow? := some 5)))
    assertTrue "no --unsafe (none window) does not warn on its own"
      (!(← withSuppressedOutput
          (shouldWarnNonDefaultScope none none none MATHLIBREPO (unsafeWindow? := none))))

/-- `getNonDefaultScopeReason` produces the `Reason:` line in the warning, naming
the specific input that triggered it so the user can match it to their command
line. When several inputs apply at once it reports the most specific first —
scope, then `--cache-from`, then `--repo` — and that order is pinned here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
