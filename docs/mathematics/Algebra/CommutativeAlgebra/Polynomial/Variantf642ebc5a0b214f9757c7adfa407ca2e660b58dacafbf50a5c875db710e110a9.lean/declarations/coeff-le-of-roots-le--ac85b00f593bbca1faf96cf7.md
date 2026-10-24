# coeff_le_of_roots_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3eff023-6239-3e22-bae1-e9f726f06367",
  "kind": "theorem",
  "lexical_name": "coeff_le_of_roots_le",
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
  "slug": "coeff-le-of-roots-le--ac85b00f593bbca1faf96cf7",
  "source": {
    "blob": "ff7cc5c14f3429a3badd33da6317ab0f01cb295d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 161,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac85b00f593bbca1faf96cf71ece7fc4fbcc8b962f5f99c923062448d0caf031",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3eff023-6239-3e22-bae1-e9f726f06367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_le_of_roots_le {p : F[X]} {f : F →+* K} {B : ℝ} (i : ℕ) (h1 : p.Monic)
    (h2 : Splits f p) (h3 : ∀ z ∈ (map f p).roots, ‖z‖ ≤ B) :
    ‖(map f p).coeff i‖ ≤ B ^ (p.natDegree - i) * p.natDegree.choose i := by
  obtain hB | hB := lt_or_le B 0
  · rw [eq_one_of_roots_le hB h1 h2 h3, Polynomial.map_one, natDegree_one, zero_tsub, pow_zero,
      one_mul, coeff_one]
    split_ifs with h <;> simp [h]
  rw [← h1.natDegree_map f]
  obtain hi | hi := lt_or_le (map f p).natDegree i
  · rw [coeff_eq_zero_of_natDegree_lt hi, norm_zero]
    positivity
  rw [coeff_eq_esymm_roots_of_splits ((splits_id_iff_splits f).2 h2) hi, (h1.map _).leadingCoeff,
    one_mul, norm_mul, norm_pow, norm_neg, norm_one, one_pow, one_mul]
  apply ((norm_multiset_sum_le _).trans <| sum_le_card_nsmul _ _ fun r hr => _).trans
  · rw [Multiset.map_map, card_map, card_powersetCard, ← natDegree_eq_card_roots' h2,
      Nat.choose_symm hi, mul_comm, nsmul_eq_mul]
  intro r hr
  simp_rw [Multiset.mem_map] at hr
  obtain ⟨_, ⟨s, hs, rfl⟩, rfl⟩ := hr
  rw [mem_powersetCard] at hs
  lift B to ℝ≥0 using hB
  rw [← coe_nnnorm, ← NNReal.coe_pow, NNReal.coe_le_coe, ← nnnormHom_apply, ← MonoidHom.coe_coe,
    MonoidHom.map_multiset_prod]
  refine (prod_le_pow_card _ B fun x hx => ?_).trans_eq (by rw [card_map, hs.2])
  obtain ⟨z, hz, rfl⟩ := Multiset.mem_map.1 hx
  exact h3 z (mem_of_le hs.1 hz)

/-- The coefficients of the monic polynomials of bounded degree with bounded roots are
uniformly bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff7cc5c14f3429a3badd33da6317ab0f01cb295d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
