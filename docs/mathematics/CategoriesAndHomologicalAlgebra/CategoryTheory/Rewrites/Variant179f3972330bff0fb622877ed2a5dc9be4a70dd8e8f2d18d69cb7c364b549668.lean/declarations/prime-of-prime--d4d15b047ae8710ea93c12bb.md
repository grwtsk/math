# prime_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07e3bf41d9cfdb28d6d841ede5cdd33d3514c71a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c63b257c-4612-b0e6-6ab6-acd68a3bc8e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90188e9f-3617-180d-cb31-9c43b7eacee2",
  "kind": "lemma",
  "lexical_name": "prime_of_prime",
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
  "slug": "prime-of-prime--d4d15b047ae8710ea93c12bb",
  "source": {
    "blob": "07e3bf41d9cfdb28d6d841ede5cdd33d3514c71a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4d15b047ae8710ea93c12bbe31a463c2aaa632608a7513955b4144a5b6b695f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90188e9f-3617-180d-cb31-9c43b7eacee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prime_of_prime (n : ℕ) : Prime n ↔ Nat.Prime n := by
  rw?!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07e3bf41d9cfdb28d6d841ede5cdd33d3514c71a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
