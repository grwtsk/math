# adjoin_singleton_eq_top_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53e48948-2d84-375c-b3ca-87c0a495e3bc",
  "kind": "theorem",
  "lexical_name": "adjoin_singleton_eq_top_aux",
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
  "slug": "adjoin-singleton-eq-top-aux--8604f4dcb3037bf3868dede3",
  "source": {
    "blob": "a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 775,
    "line": 745,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8604f4dcb3037bf3868dede394eb750b29bc55989bb207c3c8d77c2493585727",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53e48948-2d84-375c-b3ca-87c0a495e3bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–775.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem adjoin_singleton_eq_top_aux [NumberField K] (F₁ F₂ : IntermediateField ℚ K)
    {n₁ n₂ : ℕ} [NeZero n₁] [NeZero n₂] [IsCyclotomicExtension {n₁} ℚ F₁]
    [IsCyclotomicExtension {n₂} ℚ F₂] {ζ₁ : F₁} (hζ₁ : IsPrimitiveRoot ζ₁ n₁)
    (h₁ : ℤ[hζ₁.toInteger] = ⊤) {ζ₂ : F₂} (hζ₂ : IsPrimitiveRoot ζ₂ n₂)
    (h₂ : ℤ[hζ₂.toInteger] = ⊤) (h : n₁.Coprime n₂) (htop : F₁ ⊔ F₂ = ⊤)
    {ζ : K} (hζ : IsPrimitiveRoot ζ (n₁ * n₂)) :
    ℤ[hζ.toInteger] = ⊤ := by
  have h_cpr : IsCoprime (NumberField.discr F₁) (NumberField.discr F₂) := by
    rw [Int.isCoprime_iff_nat_coprime, natAbs_discr n₁ F₁, natAbs_discr n₂ F₂]
    refine Coprime.coprime_div_left ?_ (prod_primeFactors_pow_totient_ediv_dvd (NeZero.pos _))
    refine Coprime.coprime_div_right ?_ (prod_primeFactors_pow_totient_ediv_dvd (NeZero.pos _))
    exact Coprime.pow_left _ (Coprime.pow_right _ h)
  have h_disj : F₁.LinearDisjoint F₂ := by
    have : IsGalois ℚ F₁ := IsCyclotomicExtension.isGalois {n₁} ℚ F₁
    apply linearDisjoint_of_isGalois_isCoprime_discr
    exact h_cpr
  replace hζ₁ : IsPrimitiveRoot hζ₁.toInteger n₁ := hζ₁.toInteger_isPrimitiveRoot
  replace hζ₁ := hζ₁.map_of_injective (FaithfulSMul.algebraMap_injective (𝓞 F₁) (𝓞 K))
  replace hζ₂ : IsPrimitiveRoot hζ₂.toInteger n₂ := hζ₂.toInteger_isPrimitiveRoot
  replace hζ₂ := hζ₂.map_of_injective (FaithfulSMul.algebraMap_injective (𝓞 F₂) (𝓞 K))
  rw [← IsDedekindDomain.adjoin_union_eq_top_of_isCoprime_differentialIdeal ℤ (𝓞 K) (𝓞 F₁)
    (𝓞 F₂) h_disj _ _ h₁ h₂, Set.image_singleton, Set.image_singleton, Set.singleton_union]
  · refine (IsPrimitiveRoot.adjoin_pair_eq ℤ hζ₁ hζ₂ (NeZero.ne _) (NeZero.ne _) ?_).symm
    rw [Nat.Coprime.lcm_eq_mul h]
    exact toInteger_isPrimitiveRoot hζ
  · simp [← sup_toSubalgebra_of_left, htop]
  · exact isCoprime_differentIdeal_of_isCoprime_discr _ h_cpr

variable {n K}

open IntermediateField Algebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
