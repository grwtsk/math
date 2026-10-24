# isLiouville_of_finiteDimensional_galois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f003949956f3cd2e95fd3daaf83f5d75791b66d22d4e8e9f31afea82f318a402",
  "kind": "instance",
  "lexical_name": "isLiouville_of_finiteDimensional_galois",
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
  "slug": "isliouville-of-finitedimensional-galois--4a669ab9ae5fffefa857966d",
  "source": {
    "blob": "7e2b8ad285a8c71949e545d611536925dd54be74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 123,
    "path": "GRWTSK/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a669ab9ae5fffefa857966daaa361b4b77092254086b318b095060e69362767",
  "verification": {
    "reference": "docs/verification/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f003949956f3cd2e95fd3daaf83f5d75791b66d22d4e8e9f31afea82f318a402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private local instance isLiouville_of_finiteDimensional_galois [FiniteDimensional F K]
    [IsGalois F K] : IsLiouville F K where
  isLiouville (a : F) (ι : Type) [Fintype ι] (c : ι → F) (hc : ∀ x, (c x)′ = 0)
      (u : ι → K) (v : K) (h : a = ∑ x, c x * logDeriv (u x) + v′) := by
    have : CharZero K := charZero_of_injective_algebraMap
      (FaithfulSMul.algebraMap_injective F K)
    -- We sum `e x` over all isomorphisms `e : K ≃ₐ[F] K`.
    -- Because this is a Galois extension each of the relevant values will be in `F`.
    -- We need to divide by `Fintype.card (K ≃ₐ[F] K)` to get the original answer.
    let c₀ (i : ι) := (c i) / (Fintype.card (K ≃ₐ[F] K))
    -- logDeriv turns sums to products, so the new `u` will be the product of the old `u` over all
    -- isomorphisms
    let u₁ (i : ι) := ∏ x : (K ≃ₐ[F] K), x (u i)
    -- Each of the values of u₁ are fixed by all isomorphisms.
    have : ∀ i, u₁ i ∈ fixedField (⊤ : Subgroup (K ≃ₐ[F] K)) := by
      rintro i ⟨e, _⟩
      change e (u₁ i) = u₁ i
      simp only [u₁, map_prod]
      apply Fintype.prod_equiv (Equiv.mulLeft e)
      simp
    have ffb : fixedField ⊤ = ⊥ := (IsGalois.tfae.out 1 2).mp (inferInstance : IsGalois F K)
    simp_rw [ffb, IntermediateField.mem_bot, Set.mem_range] at this
    -- Therefore they are all in `F`. We use `choose` to get their values in `F`.
    choose u₀ hu₀ using this
    -- We do almost the same thing for `v₁`, just with sum instead of product.
    let v₁ := (∑ x : (K ≃ₐ[F] K), x v) / (Fintype.card ((K ≃ₐ[F] K)))
    have : v₁ ∈ fixedField (⊤ : Subgroup (K ≃ₐ[F] K)) := by
      rintro ⟨e, _⟩
      change e v₁ = v₁
      simp only [v₁, map_div₀, map_sum, map_natCast]
      congr 1
      apply Fintype.sum_equiv (Equiv.mulLeft e)
      simp
    rw [ffb, IntermediateField.mem_bot] at this
    obtain ⟨v₀, hv₀⟩ := this
    exists ι, inferInstance, c₀, ?_, u₀, v₀
    · -- We need to prove that all `c₀` are constants.
      -- This is true because they are the division of a constant by
      -- a natural number (which is also constant)
      intro x
      simp [c₀, Derivation.leibniz_div, hc]
    · -- Proving that this works is mostly straightforward algebraic manipulation,
      apply_fun (algebraMap F K)
      case inj =>
        exact FaithfulSMul.algebraMap_injective F K
      simp only [map_add, map_sum, map_mul, ← logDeriv_algebraMap, hu₀, ← deriv_algebraMap, hv₀]
      unfold u₁ v₁ c₀
      clear c₀ u₁ u₀ hu₀ v₁ v₀ hv₀
      push_cast
      rw [Derivation.leibniz_div_const, smul_eq_mul, inv_mul_eq_div]
      case h => simp
      simp only [map_sum, div_mul_eq_mul_div]
      rw [← sum_div, ← add_div]
      field_simp
      -- Here we rewrite logDeriv (∏ x : K ≃ₐ[F] K, x (u i)) to ∑ x : K ≃ₐ[F] K, logDeriv (x (u i))
      conv =>
        enter [2, 1, 2, i, 2]
        equals ∑ x : K ≃ₐ[F] K, logDeriv (x (u i)) =>
          by_cases h : u i = 0 <;>
          simp [logDeriv_prod, h]
      simp_rw [mul_sum]
      rw [sum_comm, ← sum_add_distrib]
      trans ∑ _ : (K ≃ₐ[F] K), a
      · simp [mul_comm]
      · rcongr e
        apply_fun e at h
        simp only [AlgEquiv.commutes, map_add, map_sum, map_mul] at h
        convert! h using 2
        · rcongr x
          simp [logDeriv, algEquiv_deriv']
        · rw [algEquiv_deriv']

/--
We lift `isLiouville_of_finiteDimensional_galois` to non-Galois field extensions by using it for the
normal closure then obtaining it for `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2b8ad285a8c71949e545d611536925dd54be74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
