# forall_pairing_eq_swap_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0f2affb-f5a2-2605-a4a4-c065c118e262",
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
  "slug": "forall-pairing-eq-swap-or--3df35eb515d2815ad2f14754",
  "source": {
    "blob": "03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 355,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3df35eb515d2815ad2f147540f4eca1c1aefd963423f7f9a303465a06b9bb807",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0f2affb-f5a2-2605-a4a4-c065c118e262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–386.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
