# quo_mul_prod_pow_add_sum_rem_mul_prod_pow_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7b7672f-1d0b-b37d-2fcb-d1c42d7950d8",
  "kind": "theorem",
  "lexical_name": "quo_mul_prod_pow_add_sum_rem_mul_prod_pow_unique",
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
  "slug": "quo-mul-prod-pow-add-sum-rem-mul-prod-pow-unique--aa912a5d3f39f018236a5491",
  "source": {
    "blob": "a7d428a0106e2389422edfbed7ffe3a903f744e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 303,
    "path": "GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa912a5d3f39f018236a5491ceec05720366df713fa46c3315eb49502ebe0247",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b7672f-1d0b-b37d-2fcb-d1c42d7950d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quo_mul_prod_pow_add_sum_rem_mul_prod_pow_unique {ι : Type*} [DecidableEq ι]
    {s : Finset ι} {g : ι → R[X]} (hg : ∀ i ∈ s, (g i).Monic)
    (hgg : Set.Pairwise s fun i j => IsCoprime (g i) (g j)) {n : ι → ℕ}
    {q₁ q₂ : R[X]} {r₁ r₂ : (i : ι) → Fin (n i) → R[X]}
    (hr₁ : ∀ i ∈ s, ∀ j, (r₁ i j).degree < (g i).degree)
    (hr₂ : ∀ i ∈ s, ∀ j, (r₂ i j).degree < (g i).degree)
    (hf : q₁ * (∏ i ∈ s, g i ^ n i) +
        ∑ i ∈ s, ∑ j, r₁ i j * g i ^ j.1 * ∏ k ∈ s.erase i, g k ^ n k =
      q₂ * (∏ i ∈ s, g i ^ n i) +
        ∑ i ∈ s, ∑ j, r₂ i j * g i ^ j.1 * ∏ k ∈ s.erase i, g k ^ n k) :
    q₁ = q₂ ∧ ∀ i ∈ s, r₁ i = r₂ i := by
  nontriviality R
  simp only [← Finset.sum_mul] at hf
  have hrd {r : (i : ι) → Fin (n i) → R[X]} (hr : ∀ i ∈ s, ∀ j, (r i j).degree < (g i).degree)
      (i : ι) (hi : i ∈ s) : (∑ j, r i j * g i ^ j.1).degree < (g i ^ n i).degree := by
    refine (degree_sum_le _ _).trans_lt ((Finset.sup_lt_iff ?_).2 fun j _ => ?_)
    · rw [bot_lt_iff_ne_bot, degree_ne_bot]
      exact ((hg i hi).pow (n i)).ne_zero
    · refine (degree_mul_le _ _).trans_lt ?_
      rw [degree_eq_natDegree ((hg i hi).pow j.1).ne_zero, (hg i hi).natDegree_pow,
        degree_eq_natDegree ((hg i hi).pow (n i)).ne_zero, (hg i hi).natDegree_pow]
      conv_rhs => rw [← Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.2 j.neZero.ne)]
      rw [Nat.add_one_mul, Nat.add_comm, Nat.cast_add, ← degree_eq_natDegree (hg i hi).ne_zero]
      refine WithBot.add_lt_add_of_lt_of_le (WithBot.natCast_ne_bot _) (hr i hi j) ?_
      exact Nat.cast_le.2 (Nat.mul_le_mul_right _ (Nat.le_sub_one_of_lt j.isLt))
  obtain ⟨hq, hr⟩ := quo_mul_prod_add_sum_rem_mul_prod_unique
    (fun i hi => (hg i hi).pow (n i)) (hgg.imp fun i j hij => hij.pow) (hrd hr₁) (hrd hr₂) hf
  refine ⟨hq, fun i hi => ?_⟩
  exact (quo_mul_pow_add_sum_rem_mul_pow_unique (hg i hi) (hr₁ i hi) (hr₂ i hi)
    (congrArg (0 * g i ^ n i + ·) (hr i hi))).2

end ManyDenominators

end Mul

section Div
variable {K : Type*} [CommRing K] [Algebra R[X] K]

/-- Let `R` be a commutative ring and `f : R[X]`. Let `s` be a finite index set.
Let `g i` be a collection of monic and pairwise coprime polynomials indexed by `s`,
and for each `g i` let `n i` be a natural number.
Let `K` be an algebra over `R[X]` containing inverses `gi i` for each `g i`.
Then a fraction of the form `f * ∏ i ∈ s, gi i ^ n i` can be rewritten as
`q + ∑ i ∈ s, ∑ j : Fin (n i), r i j * gi i ^ (j + 1)`, where `degree (r i j) < degree (g i)`.
See `mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse` for the
uniqueness of this representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d428a0106e2389422edfbed7ffe3a903f744e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
