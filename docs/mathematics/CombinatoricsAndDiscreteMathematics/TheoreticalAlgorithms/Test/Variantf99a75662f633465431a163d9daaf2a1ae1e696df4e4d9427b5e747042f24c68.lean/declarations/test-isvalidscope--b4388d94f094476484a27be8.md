# test_isValidScope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d9ecd1086f56d463eed99e4a8c8f8a4c000e0e7680f9dcbc5437b3c49b10abb",
  "kind": "def",
  "lexical_name": "test_isValidScope",
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
  "slug": "test-isvalidscope--b4388d94f094476484a27be8",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1334,
    "line": 1309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4388d94f094476484a27be8eb0202f208e58dc5c667e3a26928d2c622bf3c08",
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

Occurrence: `declaration:4d9ecd1086f56d463eed99e4a8c8f8a4c000e0e7680f9dcbc5437b3c49b10abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1309–1334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_isValidScope : IO Unit := do
  IO.println "isValidScope:"
  assertTrue "a full SHA passes"
    (isValidScope "5a3c7e9a2f8c1d6b4e0f9a2c3d4e5f6a7b8c9d0e")
  assertTrue "a short SHA passes" (isValidScope "deadbeef")
  assertTrue "uppercase hex passes" (isValidScope "DEADBEEF")
  assertTrue "empty is rejected" (!isValidScope "")
  assertTrue "a path separator is rejected" (!isValidScope "abc/def")
  assertTrue "an absolute path is rejected" (!isValidScope "/tmp/pwned")
  assertTrue "dot-dot is rejected" (!isValidScope "..")
  assertTrue "a ref name is rejected" (!isValidScope "HEAD")
  assertTrue "a branch name is rejected" (!isValidScope "nightly-testing")
  assertTrue "an overlong value is rejected" (!isValidScope (String.ofList (List.replicate 65 'a')))
  -- The IO accessor enforces the guard for both scope sources.
  withSavedScopeOverride do
    scopeOverride.set (some "/tmp/pwned")
    let threw ← try discard <| withSuppressedOutput getRepoScope; pure false
      catch _ => pure true
    assertTrue "getRepoScope throws on a malformed scope" threw
    scopeOverride.set (some "deadbeef")
    assertTrue "getRepoScope passes a hex scope through"
      ((← withSuppressedOutput getRepoScope) == some "deadbeef")

/-- `fileDirPath` is the one path policy behind `mkFileURL` and every
upload tool: bare `f` for a flat container, repo-namespaced otherwise, with
the per-SHA scope appended when given, and the repo lowercased. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L1309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
