# root_ne_neg_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97912283e44039cc02270c1f667fb87fc2b9d50b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7bcdc2f-7ab5-2dc5-7937-325ed5d8af49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76aa34b5-f681-01d1-2259-8ed4f66a1a4e",
  "kind": "lemma",
  "lexical_name": "root_ne_neg_of_ne",
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
  "slug": "root-ne-neg-of-ne--71e7b985a3569226c202bfe3",
  "source": {
    "blob": "97912283e44039cc02270c1f667fb87fc2b9d50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71e7b985a3569226c202bfe35eab251d9317aaefab970971515155fa88441eee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76aa34b5-f681-01d1-2259-8ed4f66a1a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma root_ne_neg_of_ne [Nontrivial R] {i j : ι}
    (hi : i ∈ b.support) (hj : j ∈ b.support) (hij : i ≠ j) :
    P.root i ≠ - P.root j := by
  classical
  intro contra
  have := linearIndepOn_iff'.mp b.linearIndepOn_root ({i, j} : Finset ι) 1
    (by simp [Set.insert_subset_iff, hi, hj]) (by simp [Finset.sum_pair hij, contra])
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97912283e44039cc02270c1f667fb87fc2b9d50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
