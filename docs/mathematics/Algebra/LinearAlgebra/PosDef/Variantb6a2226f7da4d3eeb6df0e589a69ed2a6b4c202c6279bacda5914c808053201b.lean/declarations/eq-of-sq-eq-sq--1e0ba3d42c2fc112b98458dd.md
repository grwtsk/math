# eq_of_sq_eq_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29b799c847e2d6ffe174c1c4d10fee095374ce2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cce80ff3-010d-5392-e7c7-8adc1ca5aa49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:189d7983-21d9-b0d5-dbc5-4c54fc4bdfc9",
  "kind": "lemma",
  "lexical_name": "eq_of_sq_eq_sq",
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
  "slug": "eq-of-sq-eq-sq--1e0ba3d42c2fc112b98458dd",
  "source": {
    "blob": "29b799c847e2d6ffe174c1c4d10fee095374ce2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e0ba3d42c2fc112b98458dd1ffccfbd2f11a9083800ccd811e2715abbff3558",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:189d7983-21d9-b0d5-dbc5-4c54fc4bdfc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_sq_eq_sq {B : Matrix n n 𝕜} (hB : PosSemidef B) (hAB : A ^ 2 = B ^ 2) : A = B := by
  /- This is deceptively hard, much more difficult than the positive *definite* case. We follow a
  clever proof due to Koeber and Schäfer. The idea is that if `A ≠ B`, then `A - B` has a nonzero
  real eigenvalue, with eigenvector `v`. Then a manipulation using the identity
  `A ^ 2 - B ^ 2 = A * (A - B) + (A - B) * B` leads to the conclusion that
  `⟨v, A v⟩ + ⟨v, B v⟩ = 0`. Since `A, B` are positive semidefinite, both terms must be zero. Thus
  `⟨v, (A - B) v⟩ = 0`, but this is a nonzero scalar multiple of `⟨v, v⟩`, contradiction. -/
  by_contra h_ne
  let ⟨v, t, ht, hv, hv'⟩ := (hA.1.sub hB.1).exists_eigenvector_of_ne_zero (sub_ne_zero.mpr h_ne)
  have h_sum : 0 = t * (star v ⬝ᵥ A *ᵥ v + star v ⬝ᵥ B *ᵥ v) := calc
    0 = star v ⬝ᵥ (A ^ 2 - B ^ 2) *ᵥ v := by rw [hAB, sub_self, zero_mulVec, dotProduct_zero]
    _ = star v ⬝ᵥ A *ᵥ (A - B) *ᵥ v + star v ⬝ᵥ (A - B) *ᵥ B *ᵥ v := by
      rw [mulVec_mulVec, mulVec_mulVec, ← dotProduct_add, ← add_mulVec, mul_sub, sub_mul,
        add_sub, sub_add_cancel, pow_two, pow_two]
    _ = t * (star v ⬝ᵥ A *ᵥ v) + (star v) ᵥ* (A - B)ᴴ ⬝ᵥ B *ᵥ v := by
      rw [hv', mulVec_smul, dotProduct_smul, RCLike.real_smul_eq_coe_mul,
        dotProduct_mulVec _ (A - B), hA.1.sub hB.1]
    _ = t * (star v ⬝ᵥ A *ᵥ v + star v ⬝ᵥ B *ᵥ v) := by
      simp_rw [← star_mulVec, hv', mul_add, ← RCLike.real_smul_eq_coe_mul, ← smul_dotProduct]
      congr 2 with i
      simp only [Pi.star_apply, Pi.smul_apply, RCLike.real_smul_eq_coe_mul, star_mul',
        RCLike.star_def, RCLike.conj_ofReal]
  replace h_sum : star v ⬝ᵥ A *ᵥ v + star v ⬝ᵥ B *ᵥ v = 0 := by
    rw [eq_comm, ← mul_zero (t : 𝕜)] at h_sum
    exact mul_left_cancel₀ (RCLike.ofReal_ne_zero.mpr ht) h_sum
  have h_van : star v ⬝ᵥ A *ᵥ v = 0 ∧ star v ⬝ᵥ B *ᵥ v = 0 := by
    refine ⟨le_antisymm ?_ (hA.2 v), le_antisymm ?_ (hB.2 v)⟩
    · rw [add_comm, add_eq_zero_iff_eq_neg] at h_sum
      simpa only [h_sum, neg_nonneg] using hB.2 v
    · simpa only [add_eq_zero_iff_eq_neg.mp h_sum, neg_nonneg] using hA.2 v
  have aux : star v ⬝ᵥ (A - B) *ᵥ v = 0 := by
    rw [sub_mulVec, dotProduct_sub, h_van.1, h_van.2, sub_zero]
  rw [hv', dotProduct_smul, RCLike.real_smul_eq_coe_mul, ← mul_zero ↑t] at aux
  exact hv <| dotProduct_star_self_eq_zero.mp <| mul_left_cancel₀
    (RCLike.ofReal_ne_zero.mpr ht) aux

include hA in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b799c847e2d6ffe174c1c4d10fee095374ce2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
