# degreeOf_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e794362f1871b3f5a681e6ecc752eaf9a95e8c7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dabd1a574484ae9566dd7c413e0b45008488a11055473195e50bcfa8c78c8b1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4849a005-8992-f9ea-f5c7-a40e227d0a2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08a80a50-8873-8f79-41c8-c85f3416d36f",
  "kind": "lemma",
  "lexical_name": "degreeOf_prod_eq",
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
  "slug": "degreeof-prod-eq--be99bb78a41e02f8b5968b6d",
  "source": {
    "blob": "e794362f1871b3f5a681e6ecc752eaf9a95e8c7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantdabd1a574484ae9566dd7c413e0b45008488a11055473195e50bcfa8c78c8b1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be99bb78a41e02f8b5968b6d635e340a919aea56e82057f0a26497d23c34db4d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantdabd1a574484ae9566dd7c413e0b45008488a11055473195e50bcfa8c78c8b1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a80a50-8873-8f79-41c8-c85f3416d36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degreeOf_prod_eq {ι : Type*} (s : Finset ι) (f : ι → MvPolynomial σ R)
    (h : ∀ i ∈ s, f i ≠ 0) :
    degreeOf n (∏ i ∈ s, f i) = ∑ i ∈ s, degreeOf n (f i) := by
  rcases subsingleton_or_nontrivial (MvPolynomial σ R) with nontrivial | nontrivial
  · simp [Subsingleton.eq_zero (α := MvPolynomial σ R)]
  · classical
    induction s using Finset.induction_on with
    | empty => simp
    | insert a s a_not_mem ih =>
      simp only [mem_insert, ne_eq, forall_eq_or_imp] at h
      obtain ⟨ha, hs⟩ := h
      simp [a_not_mem, not_false_eq_true, prod_insert, sum_insert, degreeOf_mul_eq ha
        (by rw [prod_ne_zero_iff]; exact hs), ih hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantdabd1a574484ae9566dd7c413e0b45008488a11055473195e50bcfa8c78c8b1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantdabd1a574484ae9566dd7c413e0b45008488a11055473195e50bcfa8c78c8b1b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e794362f1871b3f5a681e6ecc752eaf9a95e8c7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
