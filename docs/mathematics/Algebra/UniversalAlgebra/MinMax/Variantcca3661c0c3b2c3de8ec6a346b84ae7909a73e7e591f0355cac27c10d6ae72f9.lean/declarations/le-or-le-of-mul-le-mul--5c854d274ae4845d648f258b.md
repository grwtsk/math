# le_or_le_of_mul_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41a2f0cd1baaec53b8a9f1d643e8e09aa69cadc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2f259d3-e8ab-08b5-be88-1a5c0f637ef6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96f0842c-747d-bfec-0316-8cf4606fa7a6",
  "kind": "theorem",
  "lexical_name": "le_or_le_of_mul_le_mul",
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
  "slug": "le-or-le-of-mul-le-mul--5c854d274ae4845d648f258b",
  "source": {
    "blob": "41a2f0cd1baaec53b8a9f1d643e8e09aa69cadc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c854d274ae4845d648f258b3ead61371a39093ae18194c252d2fc8735c60cbc",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96f0842c-747d-bfec-0316-8cf4606fa7a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_or_le_of_mul_le_mul [MulLeftStrictMono α] [MulRightStrictMono α] {a₁ a₂ b₁ b₂ : α} :
    a₁ * b₁ ≤ a₂ * b₂ → a₁ ≤ a₂ ∨ b₁ ≤ b₂ := by
  contrapose!
  exact fun h => mul_lt_mul_of_lt_of_lt h.1 h.2

@[to_additive (attr := to_dual self)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a2f0cd1baaec53b8a9f1d643e8e09aa69cadc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
