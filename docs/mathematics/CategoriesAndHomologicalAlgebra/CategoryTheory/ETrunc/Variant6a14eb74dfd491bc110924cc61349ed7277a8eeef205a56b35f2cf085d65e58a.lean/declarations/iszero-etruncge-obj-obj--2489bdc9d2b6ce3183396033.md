# isZero_eTruncGE_obj_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f2a24dc4f3f29c24f9201482e82dcf655219d03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2e2ca4d-063e-7492-0ba4-0b781659c63d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e344db1-1082-fa37-9107-402e8407733f",
  "kind": "lemma",
  "lexical_name": "isZero_eTruncGE_obj_obj",
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
  "slug": "iszero-etruncge-obj-obj--2489bdc9d2b6ce3183396033",
  "source": {
    "blob": "2f2a24dc4f3f29c24f9201482e82dcf655219d03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 282,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2489bdc9d2b6ce3183396033a47bdfb7965f15db976414e1a4f93efcf282f3c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e344db1-1082-fa37-9107-402e8407733f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZero_eTruncGE_obj_obj (X : C) (n : ℤ) [t.IsLE X n] (j : EInt) (hj : n < j) :
    IsZero ((t.eTruncGE.obj j).obj X) := by
  induction j using WithBotTop.rec with
  | bot => simp at hj
  | coe j =>
    simp only [WithBotTop.coe_lt_coe] at hj
    have := t.isLE_of_le X n (j - 1) (by lia)
    exact t.isZero_truncGE_obj_of_isLE (j - 1) j (by lia) _
  | top => simp

section

variable [IsTriangulated C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variant6a14eb74dfd491bc110924cc61349ed7277a8eeef205a56b35f2cf085d65e58a.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2a24dc4f3f29c24f9201482e82dcf655219d03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
