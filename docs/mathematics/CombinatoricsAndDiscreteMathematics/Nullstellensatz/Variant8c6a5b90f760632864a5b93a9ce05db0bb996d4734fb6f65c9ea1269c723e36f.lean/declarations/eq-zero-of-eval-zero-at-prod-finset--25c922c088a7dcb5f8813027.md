# eq_zero_of_eval_zero_at_prod_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:425f3677-9110-5771-6f1c-0c0e69e25c52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0ed5b9c-1af7-23e7-6a6a-4a4be155f2be",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_eval_zero_at_prod_finset",
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
  "slug": "eq-zero-of-eval-zero-at-prod-finset--25c922c088a7dcb5f8813027",
  "source": {
    "blob": "dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c922c088a7dcb5f88130275145fa0f3c244656152c4214f87932a0156b2628",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ed5b9c-1af7-23e7-6a6a-4a4be155f2be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_eval_zero_at_prod_finset {σ : Type*} [Finite σ] [IsDomain R]
    (P : MvPolynomial σ R) (S : σ → Finset R)
    (Hdeg : ∀ i, P.degreeOf i < #(S i))
    (Heval : ∀ (x : σ → R), (∀ i, x i ∈ S i) → eval x P = 0) :
    P = 0 := by
  induction σ using Finite.induction_empty_option with
  | @of_equiv σ τ e h =>
    suffices MvPolynomial.rename e.symm P = 0 by
      have that := MvPolynomial.rename_injective (R := R) e.symm (e.symm.injective)
      rw [RingHom.injective_iff_ker_eq_bot] at that
      rwa [← RingHom.mem_ker, that] at this
    apply h _ (fun i ↦ S (e i))
    · intro i
      classical
      convert Hdeg (e i)
      conv_lhs => rw [← e.symm_apply_apply i, degreeOf_rename_of_injective e.symm.injective]
    · intro x hx
      simp only [MvPolynomial.eval_rename]
      apply Heval
      intro s
      simp only [Function.comp_apply]
      convert hx (e.symm s)
      simp only [Equiv.apply_symm_apply]
  | h_empty =>
    suffices P = C (constantCoeff P) by
      specialize Heval default (fun i ↦ PEmpty.elim i)
      rw [this, eval_C] at Heval
      rw [this, Heval, C_0]
    ext m
    suffices m = 0 by simp [this, ← constantCoeff_eq]
    ext d; exact PEmpty.elim d
  | @h_option σ _ h =>
    set Q := optionEquivLeft R σ P with hQ
    suffices Q = 0 by
      rw [← AlgEquiv.symm_apply_apply (optionEquivLeft R σ) P, ← hQ, this, map_zero]
    have Heval' (x : σ → R) (hx : ∀ i, x i ∈ S (some i)) : Polynomial.map (eval x) Q = 0 := by
      apply Polynomial.eq_zero_of_natDegree_lt_card_of_eval_eq_zero' _ (S none)
      · intro y hy
        rw [← optionEquivLeft_elim_eval]
        apply Heval
        simp only [Option.forall, Option.elim_none, hy, Option.elim_some, hx, implies_true,
          and_self]
      · apply lt_of_le_of_lt _ (Hdeg none)
        rw [Polynomial.natDegree_le_iff_coeff_eq_zero]
        intro d hd
        simp only [hQ]
        rw [MvPolynomial.coeff_eval_eq_eval_coeff]
        convert map_zero (MvPolynomial.eval x)
        ext m
        simp only [coeff_zero, optionEquivLeft_coeff_coeff]
        set n := (embDomain Function.Embedding.some m).update none d with hn
        rw [eq_option_embedding_update_none_iff] at hn
        rw [← hn.1, ← hn.2, optionEquivLeft_coeff_coeff]
        by_contra hm
        apply not_le.mpr hd
        rw [MvPolynomial.degreeOf_eq_sup]
        rw [← ne_eq, ← MvPolynomial.mem_support_iff] at hm
        convert Finset.le_sup hm
        exact hn.1.symm
    ext m d
    simp only [Polynomial.coeff_zero, coeff_zero]
    suffices Q.coeff m = 0 by simp only [this, coeff_zero]
    apply h _ (fun i ↦ S (some i))
    · intro i
      apply lt_of_le_of_lt _ (Hdeg (some i))
      simp only [degreeOf_eq_sup, Finset.sup_le_iff, mem_support_iff, ne_eq]
      intro e he
      set n := (embDomain Function.Embedding.some e).update none m with hn
      rw [eq_option_embedding_update_none_iff] at hn
      rw [hQ, ← hn.1, ← hn.2, optionEquivLeft_coeff_coeff, ← ne_eq,
        ← MvPolynomial.mem_support_iff] at he
      convert Finset.le_sup he
      rw [← hn.2, some_apply]
    · intro x hx
      specialize Heval' x hx
      rw [Polynomial.ext_iff] at Heval'
      simpa only [Polynomial.coeff_map, Polynomial.coeff_zero] using Heval' m

open MonomialOrder

/- Here starts the actual proof of the combinatorial Nullstellensatz -/

variable {σ : Type*}

/-- The polynomial in `X i` that vanishes at all elements of `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
