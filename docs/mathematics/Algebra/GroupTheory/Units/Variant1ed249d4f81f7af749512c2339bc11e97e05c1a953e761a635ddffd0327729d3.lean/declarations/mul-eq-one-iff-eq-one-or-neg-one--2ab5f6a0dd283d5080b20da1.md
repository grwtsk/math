# mul_eq_one_iff_eq_one_or_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c38b0ae6fcf6f763c5a91c9fda3a896fd06a0175",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:415bba4d-4b3a-d1d8-c419-2779d076b90f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8d71c2c-7e16-e227-7f77-d8bbd43bed16",
  "kind": "lemma",
  "lexical_name": "mul_eq_one_iff_eq_one_or_neg_one",
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
  "slug": "mul-eq-one-iff-eq-one-or-neg-one--2ab5f6a0dd283d5080b20da1",
  "source": {
    "blob": "c38b0ae6fcf6f763c5a91c9fda3a896fd06a0175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab5f6a0dd283d5080b20da192a075867b2a16163aaf014ec3324aa3cd0b1ca2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8d71c2c-7e16-e227-7f77-d8bbd43bed16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_eq_one_iff_eq_one_or_neg_one : u * v = 1 ↔ u = 1 ∧ v = 1 ∨ u = -1 ∧ v = -1 := by
  refine ⟨eq_one_or_neg_one_of_mul_eq_one', fun h ↦ Or.elim h (fun H ↦ ?_) fun H ↦ ?_⟩ <;>
    obtain ⟨rfl, rfl⟩ := H <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38b0ae6fcf6f763c5a91c9fda3a896fd06a0175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
