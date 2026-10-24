# positive_power_preserves_integer_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b3f5f7bd3a99222e3963a9b858fefc382308002",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27c4f111-c25f-c685-0000-3d635e00209a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bab9a9ff-850a-57f0-afc8-1b3ede96983e",
  "kind": "theorem",
  "lexical_name": "positive_power_preserves_integer_roots",
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
  "slug": "positive-power-preserves-integer-roots--00a7e821d0b5ed9892c1923e",
  "source": {
    "blob": "6b3f5f7bd3a99222e3963a9b858fefc382308002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 57,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a7e821d0b5ed9892c1923e54b716265dc2425ccb2f87623495629c22e031f8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bab9a9ff-850a-57f0-afc8-1b3ede96983e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_power_preserves_integer_roots (p : Polynomial ℤ) (n : ℕ)
    (hn : n ≠ 0) (x : ℤ) : (p ^ n).eval x = 0 ↔ p.eval x = 0 := by
  simp [hn]

/-- Integer-root equivalence permits arbitrarily large declared degree. Observed
degree therefore requires a fixed presentation or a separate invariance theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant07ba84b0a8f86cf5dd41ac85543af972cd867bbb8defcaf9d9d255cf00fb8761.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b3f5f7bd3a99222e3963a9b858fefc382308002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
