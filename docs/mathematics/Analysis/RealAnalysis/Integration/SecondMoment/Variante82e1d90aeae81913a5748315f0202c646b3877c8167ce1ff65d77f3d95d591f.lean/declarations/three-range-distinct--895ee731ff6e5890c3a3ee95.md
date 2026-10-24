# three_range_distinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b50e6556-1a07-1642-261a-c5edab4d1d97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:323cb173-b29b-450c-8b64-c289fe41475f",
  "kind": "theorem",
  "lexical_name": "three_range_distinct",
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
  "slug": "three-range-distinct--895ee731ff6e5890c3a3ee95",
  "source": {
    "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 363,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895ee731ff6e5890c3a3ee953a168c3dbaf73af7583a7834e25a8c0d450bbd85",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:323cb173-b29b-450c-8b64-c289fe41475f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_range_distinct {N dU dV R1 R2 S : ℕ} (a : Fin N → ℝ)
    (hdUV : dU ≤ dV) (hdVN : dV ≤ N)
    (hdU : dU ≤ R2 + S / 2) (hdGap : dV ≤ dU + R1)
    (hsecond :
      ∑ j ∈ Finset.univ.filter
          (fun j : Fin N => dU ≤ (j : ℕ) ∧ (j : ℕ) < dV), a j
        ≤ (R1 : ℝ))
    (hthird : ∀ j : Fin N, dV ≤ (j : ℕ) → a j ≤ 0)
    (hmult : (R1 : ℝ) + 2 * (R2 : ℝ) + (S : ℝ) ≤ ∑ j, a j) :
    3 * ∑ j, a j - 2 * ((R1 : ℝ) + (R2 : ℝ) + (S : ℝ))
      ≤ ∑ j, a j ^ 2 := by
  classical
  let A := Finset.univ.filter (fun j : Fin N => (j : ℕ) < dU)
  let B := Finset.univ.filter (fun j : Fin N => dU ≤ (j : ℕ) ∧ (j : ℕ) < dV)
  let C := Finset.univ.filter (fun j : Fin N => dV ≤ (j : ℕ))
  have hAB : Disjoint A B := by
    refine Finset.disjoint_left.mpr ?_
    intro j hjA hjB
    simp only [A, Finset.mem_filter, Finset.mem_univ, true_and] at hjA
    simp only [B, Finset.mem_filter, Finset.mem_univ, true_and] at hjB
    omega
  have hABC : Disjoint (A ∪ B) C := by
    refine Finset.disjoint_left.mpr ?_
    intro j hjAB hjC
    rw [Finset.mem_union] at hjAB
    simp only [C, Finset.mem_filter, Finset.mem_univ, true_and] at hjC
    rcases hjAB with hjA | hjB
    · simp only [A, Finset.mem_filter, Finset.mem_univ, true_and] at hjA
      omega
    · simp only [B, Finset.mem_filter, Finset.mem_univ, true_and] at hjB
      omega
  have hcover : A ∪ B ∪ C = Finset.univ := by
    ext j
    simp only [A, B, C, Finset.mem_union, Finset.mem_filter, Finset.mem_univ,
      true_and, iff_true]
    omega
  have hABeq : A ∪ B = Finset.univ.filter (fun j : Fin N => (j : ℕ) < dV) := by
    ext j
    simp only [A, B, Finset.mem_union, Finset.mem_filter, Finset.mem_univ, true_and]
    omega
  have hcardA : A.card = dU := by
    rw [show A = Finset.univ.filter (fun j : Fin N => (j : ℕ) < dU) from rfl,
      Fin.card_filter_val_lt, Nat.min_eq_right (le_trans hdUV hdVN)]
  have hcardAB : (A ∪ B).card = dV := by
    rw [hABeq, Fin.card_filter_val_lt, Nat.min_eq_right hdVN]
  have hcardB_le : B.card ≤ R1 := by
    rw [Finset.card_union_of_disjoint hAB, hcardA] at hcardAB
    omega
  have hfourdim_nat : 4 * dU ≤ 4 * R2 + 2 * S := by
    omega
  have hfourdim : 4 * (dU : ℝ) ≤ 4 * (R2 : ℝ) + 2 * (S : ℝ) := by
    exact_mod_cast hfourdim_nat
  have hsqA_base :
      4 * (∑ j ∈ A, a j) - 4 * (A.card : ℝ) ≤ ∑ j ∈ A, a j ^ 2 := by
    calc
      4 * (∑ j ∈ A, a j) - 4 * (A.card : ℝ)
          = ∑ j ∈ A, (4 * a j - 4) := by simp [Finset.mul_sum]; ring
      _ ≤ ∑ j ∈ A, a j ^ 2 := by
        refine Finset.sum_le_sum fun j hj => ?_
        nlinarith [sq_nonneg (a j - 2)]
  have hsqA :
      4 * (∑ j ∈ A, a j) - 4 * (R2 : ℝ) - 2 * (S : ℝ)
        ≤ ∑ j ∈ A, a j ^ 2 := by
    rw [hcardA] at hsqA_base
    linarith
  have hsqB_base :
      2 * (∑ j ∈ B, a j) - (B.card : ℝ) ≤ ∑ j ∈ B, a j ^ 2 := by
    calc
      2 * (∑ j ∈ B, a j) - (B.card : ℝ)
          = ∑ j ∈ B, (2 * a j - 1) := by simp [Finset.mul_sum]
      _ ≤ ∑ j ∈ B, a j ^ 2 := by
        refine Finset.sum_le_sum fun j hj => ?_
        nlinarith [sq_nonneg (a j - 1)]
  have hcardB_real : (B.card : ℝ) ≤ (R1 : ℝ) := by exact_mod_cast hcardB_le
  have hsecondB : (∑ j ∈ B, a j) ≤ (R1 : ℝ) := hsecond
  have hsqB : 4 * (∑ j ∈ B, a j) - 3 * (R1 : ℝ)
      ≤ ∑ j ∈ B, a j ^ 2 := by
    linarith
  have hsqC : 4 * (∑ j ∈ C, a j) ≤ ∑ j ∈ C, a j ^ 2 := by
    calc
      4 * (∑ j ∈ C, a j) = ∑ j ∈ C, 4 * a j := by rw [Finset.mul_sum]
      _ ≤ ∑ j ∈ C, a j ^ 2 := by
        refine Finset.sum_le_sum fun j hj => ?_
        have hj' : dV ≤ (j : ℕ) := by simpa [C] using hj
        have ha := hthird j hj'
        nlinarith [sq_nonneg (a j)]
  have hsum (f : Fin N → ℝ) :
      ∑ j, f j = (∑ j ∈ A, f j) + (∑ j ∈ B, f j) + ∑ j ∈ C, f j := by
    rw [← hcover, Finset.sum_union hABC, Finset.sum_union hAB]
  rw [hsum a] at hmult ⊢
  rw [hsum (fun j => a j ^ 2)]
  linarith

/-- **Lower bound for the distinct elements.** -/
@[zz_tag "prop_distinct_lower"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
