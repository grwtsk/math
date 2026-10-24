# test_headIsAncestorOfMaster_gitFallback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13e9dff7ecc39caf9ebc27c11edca2a4a0997e5385904a6da0856adbe3f00acc",
  "kind": "def",
  "lexical_name": "test_headIsAncestorOfMaster_gitFallback",
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
  "slug": "test-headisancestorofmaster-gitfallback--0d140ed26ab12c41bebb8b40",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 929,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d140ed26ab12c41bebb8b403ab46991ad7fa9fe2607a67c41cb0868b2602b07",
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

Occurrence: `declaration:13e9dff7ecc39caf9ebc27c11edca2a4a0997e5385904a6da0856adbe3f00acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 929–954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_headIsAncestorOfMaster_gitFallback : IO Unit := do
  IO.println "headIsAncestorOfMaster git fallback:"
  let fakePath := "/tmp/surely-nonexistent-mathlib-cache-test-xyz-9999999"
  let r1 ← withSuppressedOutput (headIsAncestorOfMaster fakePath)
  assertTrue "headIsAncestorOfMaster returns false when git throws (nonexistent cwd)"
    (r1 == false)
  let r2 ← withSuppressedOutput (headIsAncestorOfMaster "/tmp")
  assertTrue "headIsAncestorOfMaster returns false in a non-git directory" (r2 == false)

end GitFallback

section CliOptions

open Cache.Cli

/-- `isKnownOpt` is the gatekeeper that decides whether a `--`-prefixed token
in the command line is a recognized option or a typo. Unknown options error
out with a help message rather than being silently ignored — important so a
typo like `--scoop=abc` doesn't silently disable the scope flag.

The recognition rule:
- A named option matches if `--{name}=` is a prefix of the token.
- A flag matches if the token is exactly `--{name}` (no `=`).

These tests pin the contract so a future refactor can't accidentally accept
unknown options or reject known ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
