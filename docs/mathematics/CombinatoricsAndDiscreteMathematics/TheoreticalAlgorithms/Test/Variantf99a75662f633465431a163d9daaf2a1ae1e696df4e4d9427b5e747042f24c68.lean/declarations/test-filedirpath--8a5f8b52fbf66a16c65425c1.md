# test_fileDirPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58ae5ba9711fd8f44ac57f742812be95c078c2d694a7dd6736f15a9320f8fd84",
  "kind": "def",
  "lexical_name": "test_fileDirPath",
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
  "slug": "test-filedirpath--8a5f8b52fbf66a16c65425c1",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1355,
    "line": 1335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a5f8b52fbf66a16c65425c100d3772a06279475641ca7c4385941ad1834cb87",
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

Occurrence: `declaration:58ae5ba9711fd8f44ac57f742812be95c078c2d694a7dd6736f15a9320f8fd84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1335–1355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_fileDirPath : IO Unit := do
  IO.println "fileDirPath:"
  assertEq "flat container → bare f"
    "f" (fileDirPath (some .master) MATHLIBREPO (some "sha1"))
  assertEq "namespaced container → repo segment"
    "f/alice/mathlib4" (fileDirPath (some .forks) "alice/mathlib4" none)
  assertEq "scope appends the per-commit segment"
    "f/alice/mathlib4/sha1" (fileDirPath (some .forks) "alice/mathlib4" (some "sha1"))
  assertEq "no container follows the repo (flat for canonical)"
    "f" (fileDirPath none MATHLIBREPO (some "sha1"))
  assertEq "no container follows the repo (namespaced for a fork)"
    "f/alice/mathlib4/sha1" (fileDirPath none "alice/mathlib4" (some "sha1"))
  assertEq "the repo is lowercased"
    "f/alice/mathlib4" (fileDirPath (some .forks) "Alice/Mathlib4" none)

/-- `stagedUploadDestFrom` resolves the destination contract per backend:
each backend writes the container layout under the base
MATHLIB_CACHE_PUT_BASE_URL names. The azure backend defaults to the Azure
account; the s3 backend has no default. MATHLIB_CACHE_PUT_URL overrides both
with one flat endpoint. The prefixes carry no trailing slashes and build on
the same `fileDirPath` policy as every other upload path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L1335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
