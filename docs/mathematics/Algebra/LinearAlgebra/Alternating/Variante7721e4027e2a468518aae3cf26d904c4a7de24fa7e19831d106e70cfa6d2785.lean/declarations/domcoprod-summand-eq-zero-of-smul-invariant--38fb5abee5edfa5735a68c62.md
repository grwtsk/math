# domCoprod.summand_eq_zero_of_smul_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "842689df5f4245e6656367412382e03726ee3e18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1014,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc37e004-b751-3ff4-fbe3-dcf8c327a7d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3139c0bd-5c29-a821-25ba-d919ce8abcc7",
  "kind": "theorem",
  "lexical_name": "domCoprod.summand_eq_zero_of_smul_invariant",
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
  "slug": "domcoprod-summand-eq-zero-of-smul-invariant--38fb5abee5edfa5735a68c62",
  "source": {
    "blob": "842689df5f4245e6656367412382e03726ee3e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1014,
    "path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38fb5abee5edfa5735a68c624e095c7744ace1c7222ed22d61cc822e7876ecdc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3139c0bd-5c29-a821-25ba-d919ce8abcc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1014–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domCoprod.summand_eq_zero_of_smul_invariant (a : AlternatingMap R' Mᵢ N₁ ιa)
    (b : AlternatingMap R' Mᵢ N₂ ιb) (σ : Perm.ModSumCongr ιa ιb) {v : Sum ιa ιb → Mᵢ}
    {i j : Sum ιa ιb} (hv : v i = v j) (hij : i ≠ j) :
    swap i j • σ = σ → domCoprod.summand a b σ v = 0 := by
  refine Quotient.inductionOn' σ fun σ => ?_
  dsimp only [Quotient.liftOn'_mk'', Quotient.map'_mk'', MultilinearMap.smul_apply,
    MultilinearMap.domDomCongr_apply, MultilinearMap.domCoprod_apply, domCoprod.summand]
  intro hσ
  cases' hi : σ⁻¹ i with val val <;> cases' hj : σ⁻¹ j with val_1 val_1 <;>
    rw [Perm.inv_eq_iff_eq] at hi hj <;> substs hi hj <;> revert val val_1
  -- Porting note: `on_goal` is not available in `case _ | _ =>`, so the proof gets tedious.
  -- the term pairs with and cancels another term
  case inl.inr =>
    intro i' j' _ _ hσ
    obtain ⟨⟨sl, sr⟩, hσ⟩ := QuotientGroup.leftRel_apply.mp (Quotient.exact' hσ)
    replace hσ := Equiv.congr_fun hσ (Sum.inl i')
    dsimp only at hσ
    rw [smul_eq_mul, ← mul_swap_eq_swap_mul, mul_inv_rev, swap_inv, inv_mul_cancel_right] at hσ
    simp at hσ
  case inr.inl =>
    intro i' j' _ _ hσ
    obtain ⟨⟨sl, sr⟩, hσ⟩ := QuotientGroup.leftRel_apply.mp (Quotient.exact' hσ)
    replace hσ := Equiv.congr_fun hσ (Sum.inr i')
    dsimp only at hσ
    rw [smul_eq_mul, ← mul_swap_eq_swap_mul, mul_inv_rev, swap_inv, inv_mul_cancel_right] at hσ
    simp at hσ
  -- the term does not pair but is zero
  case inr.inr =>
    intro i' j' hv hij _
    convert smul_zero (M := ℤˣ) (A := N₁ ⊗[R'] N₂) _
    convert TensorProduct.tmul_zero (R := R') (M := N₁) N₂ _
    exact AlternatingMap.map_eq_zero_of_eq _ _ hv fun hij' => hij (hij' ▸ rfl)
  case inl.inl =>
    intro i' j' hv hij _
    convert smul_zero (M := ℤˣ) (A := N₁ ⊗[R'] N₂) _
    convert TensorProduct.zero_tmul (R := R') N₁ (N := N₂) _
    exact AlternatingMap.map_eq_zero_of_eq _ _ hv fun hij' => hij (hij' ▸ rfl)
#align alternating_map.dom_coprod.summand_eq_zero_of_smul_invariant AlternatingMap.domCoprod.summand_eq_zero_of_smul_invariant

/-- Like `MultilinearMap.domCoprod`, but ensures the result is also alternating.

Note that this is usually defined (for instance, as used in Proposition 22.24 in [Gallier2011Notes])
over integer indices `ιa = Fin n` and `ιb = Fin m`, as
$$
(f \wedge g)(u_1, \ldots, u_{m+n}) =
  \sum_{\operatorname{shuffle}(m, n)} \operatorname{sign}(\sigma)
    f(u_{\sigma(1)}, \ldots, u_{\sigma(m)}) g(u_{\sigma(m+1)}, \ldots, u_{\sigma(m+n)}),
$$
where $\operatorname{shuffle}(m, n)$ consists of all permutations of $[1, m+n]$ such that
$\sigma(1) < \cdots < \sigma(m)$ and $\sigma(m+1) < \cdots < \sigma(m+n)$.

Here, we generalize this by replacing:
* the product in the sum with a tensor product
* the filtering of $[1, m+n]$ to shuffles with an isomorphic quotient
* the additions in the subscripts of $\sigma$ with an index of type `Sum`

The specialized version can be obtained by combining this definition with `finSumFinEquiv` and
`LinearMap.mul'`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean#L1014).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `842689df5f4245e6656367412382e03726ee3e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
