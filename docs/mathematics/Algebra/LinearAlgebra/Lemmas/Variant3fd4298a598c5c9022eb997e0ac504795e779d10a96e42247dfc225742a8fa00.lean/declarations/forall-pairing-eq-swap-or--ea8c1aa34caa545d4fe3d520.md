# forall_pairing_eq_swap_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56bc3e0f-dcfe-aa44-e491-0da15d9da9df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03ecc22f-4d89-3d40-a40b-b49b2acdf442",
  "kind": "lemma",
  "lexical_name": "forall_pairing_eq_swap_or",
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
  "slug": "forall-pairing-eq-swap-or--ea8c1aa34caa545d4fe3d520",
  "source": {
    "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 347,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8c1aa34caa545d4fe3d52029abd1990c8895703598ff3184e98fd744be3399",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03ecc22f-4d89-3d40-a40b-b49b2acdf442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma forall_pairing_eq_swap_or [P.IsReduced] [P.IsIrreducible] :
    (∀ i j, P.pairing i j = P.pairing j i ∨
            P.pairing i j = 2 * P.pairing j i ∨
            P.pairing j i = 2 * P.pairing i j) ∨
    (∀ i j, P.pairing i j = P.pairing j i ∨
            P.pairing i j = 3 * P.pairing j i ∨
            P.pairing j i = 3 * P.pairing i j) := by
  have : Fintype ι := Fintype.ofFinite ι
  have B := (P.posRootForm ℤ).toInvariantForm
  by_cases h : ∀ i j, B.form (α i) (α i) = B.form (α j) (α j)
  · refine Or.inl fun i j ↦ Or.inl ?_
    have := B.pairing_mul_eq_pairing_mul_swap j i
    rwa [h i j, mul_left_inj' (B.ne_zero j)] at this
  push_neg at h
  obtain ⟨i, j, hij⟩ := h
  have key := B.apply_eq_or_of_apply_ne hij
  set li := B.form (α i) (α i)
  set lj := B.form (α j) (α j)
  have : (li = 2 * lj ∨ lj = 2 * li) ∨ (li = 3 * lj ∨ lj = 3 * li) := by
    have := B.apply_eq_or i j; tauto
  rcases this with this | this
  · refine Or.inl fun k₁ k₂ ↦ ?_
    have hk := B.pairing_mul_eq_pairing_mul_swap k₁ k₂
    rcases this with h₀ | h₀ <;> rcases key k₁ with h₁ | h₁ <;> rcases key k₂ with h₂ | h₂ <;>
    simp only [h₁, h₂, h₀, ← mul_assoc, mul_comm, mul_eq_mul_right_iff] at hk <;>
    aesop -- #24551 (this should be faster)
  · refine Or.inr fun k₁ k₂ ↦ ?_
    have hk := B.pairing_mul_eq_pairing_mul_swap k₁ k₂
    rcases this with h₀ | h₀ <;> rcases key k₁ with h₁ | h₁ <;> rcases key k₂ with h₂ | h₂ <;>
    simp only [h₁, h₂, h₀, ← mul_assoc, mul_comm, mul_eq_mul_right_iff] at hk <;>
    aesop -- #24551 (this should be faster)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a436583ef69ee61f87fc7e9c264c8eec5d88e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
