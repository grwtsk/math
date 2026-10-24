# lie_e_f_same_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b92e7d7d-19a7-331c-af3e-b8528ffded2e",
  "kind": "lemma",
  "lexical_name": "lie_e_f_same_aux",
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
  "slug": "lie-e-f-same-aux--ccd48c95d9faa5c8b8d00541",
  "source": {
    "blob": "f17079d67583cd28e41ff91910667fe311e5932f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccd48c95d9faa5c8b8d0054114debd697d3901312c40ec44f342107eb233e4f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b92e7d7d-19a7-331c-af3e-b8528ffded2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma lie_e_f_same_aux (k : ι) (hki : k ≠ i) (hki' : k ≠ P.reflectionPerm i i) :
    ⁅e i, f i⁆ (Sum.inr k) (Sum.inr k) = h i (Sum.inr k) (Sum.inr k) := by
  classical
  have h_lin_ind : LinearIndependent R ![P.root i, P.root k] := by
    rw [LinearIndependent.pair_symm_iff, IsReduced.linearIndependent_iff]
    refine ⟨hki, ?_⟩
    rwa [ne_eq, root_eq_neg_iff]
  suffices (∑ x, if P.root k = P.root i + P.root x then
              (P.chainBotCoeff i x + 1 : R) * (P.chainTopCoeff i k + 1) else 0) -
            (∑ x, if P.root k = P.root x - P.root i then
              (P.chainTopCoeff i x + 1 : R) * (P.chainBotCoeff i k + 1) else 0) =
      P.chainBotCoeff i k - P.chainTopCoeff i k by
    have aux (x : ι) : P.root x = P.root k - P.root i ↔ P.root k = P.root i + P.root x := by
      rw [eq_sub_iff_add_eq', eq_comm]
    have aux' (x : ι) : P.root x = P.root i + P.root k ↔ P.root k = P.root x - P.root i := by
      rw [eq_sub_iff_add_eq', eq_comm]
    simpa [e, f, h, hki, hki', aux, aux', ← ite_and, ← P.chainBotCoeff_sub_chainTopCoeff h_lin_ind]
  rcases exists_or_forall_not (fun x ↦ P.root k = P.root i + P.root x) with ⟨x, hx⟩ | h₁ <;>
  rcases exists_or_forall_not (fun x ↦ P.root k = P.root x - P.root i) with ⟨y, hy⟩ | h₂
  · have h_lin_ind_x : LinearIndependent R ![P.root i, P.root x] := by simpa [hx] using h_lin_ind
    have h_lin_ind_y : LinearIndependent R ![P.root i, P.root y] := by
      rw [← add_eq_of_eq_sub hy, add_comm]; simpa
    have hx' : P.chainBotCoeff i k = P.chainBotCoeff i x + 1 :=
      chainBotCoeff_of_add h_lin_ind_x (add_comm (P.root i) _ ▸ hx)
    have hy' : P.chainTopCoeff i k = P.chainTopCoeff i y + 1 := chainTopCoeff_of_sub h_lin_ind_y hy
    rw [Finset.sum_eq_single_of_mem x (Finset.mem_univ _) (by aesop),
      Finset.sum_eq_single_of_mem y (Finset.mem_univ _) (by aesop)]
    simp only [hx, hy.symm, hx', hy', reduceIte, Nat.cast_add]
    ring
  · simp_rw [ite_eq_right (h₂ _), Finset.sum_const_zero, sub_zero]
    replace h₂ : P.chainTopCoeff i k = 0 :=
      P.chainTopCoeff_eq_zero_iff.mpr <| Or.inr fun ⟨x, hx⟩ ↦ h₂ x <| by simp [hx]
    have h_lin_ind_x : LinearIndependent R ![P.root i, P.root x] := by simpa [hx] using h_lin_ind
    have hx' : P.chainBotCoeff i k = P.chainBotCoeff i x + 1 :=
      chainBotCoeff_of_add h_lin_ind_x (add_comm (P.root i) _ ▸ hx)
    simp [hx, hx', h₂]
  · simp_rw [ite_eq_right (h₁ _), Finset.sum_const_zero, zero_sub]
    replace h₁ : P.chainBotCoeff i k = 0 :=
      P.chainBotCoeff_eq_zero_iff.mpr <| Or.inr fun ⟨x, hx⟩ ↦ h₁ x <| by simp [hx]
    have h_lin_ind_y : LinearIndependent R ![P.root i, P.root y] := by
      rw [← add_eq_of_eq_sub hy, add_comm]; simpa
    have hy' : P.chainTopCoeff i k = P.chainTopCoeff i y + 1 := chainTopCoeff_of_sub h_lin_ind_y hy
    simp [hy, hy', h₁]
  · suffices P.chainBotCoeff i k = 0 ∧ P.chainTopCoeff i k = 0 by simp [h₁, h₂, this]
    exact ⟨P.chainBotCoeff_eq_zero_iff.mpr <| Or.inr fun ⟨x, hx⟩ ↦ h₁ x <| by simp [hx],
           P.chainTopCoeff_eq_zero_iff.mpr <| Or.inr fun ⟨x, hx⟩ ↦ h₂ x <| by simp [hx]⟩

/-- Lemma 3.4 from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17079d67583cd28e41ff91910667fe311e5932f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
