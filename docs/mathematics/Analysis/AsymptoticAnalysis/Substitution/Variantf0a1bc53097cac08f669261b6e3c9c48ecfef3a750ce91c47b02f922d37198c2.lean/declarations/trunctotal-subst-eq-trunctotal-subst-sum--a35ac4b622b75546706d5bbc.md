# truncTotal_subst_eq_truncTotal_subst_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d20d5640-85ce-3b74-6daf-3f48bf6e126d",
  "kind": "theorem",
  "lexical_name": "truncTotal_subst_eq_truncTotal_subst_sum",
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
  "slug": "trunctotal-subst-eq-trunctotal-subst-sum--a35ac4b622b75546706d5bbc",
  "source": {
    "blob": "8a91e921819b605ae2907dddfea54663b2e353ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 555,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a35ac4b622b75546706d5bbc2f9a756b0a18e73fbe5b83435c23f070c5caaf99",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d20d5640-85ce-3b74-6daf-3f48bf6e126d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncTotal_subst_eq_truncTotal_subst_sum (ha : HasSubst a)
    (ha₁ : ∀ i, (a i).constantCoeff = 0) :
    truncTotal k (f.subst a) =
      ((∑ i ∈ range k, (f.homogeneousComponent i)).subst a).truncTotal k := by
  ext d
  by_cases hd : d.degree < k
  · simp_rw [coeff_truncTotal _ hd, coeff_subst ha]
    have h1 := coeff_subst_finite ha f d
    have h2 := coeff_subst_finite ha (∑ i ∈ range k, (homogeneousComponent i) f) d
    rw [finsum_eq_sum _ h1, finsum_eq_sum _ h2]
    have : h2.toFinset ⊆ h1.toFinset := by simp +contextual [coeff_homogeneousComponent]
    have aux {n : σ →₀ ℕ} : coeff d (n.prod fun s e ↦ a s ^ e) ≠ 0 → n.degree ≤ d.degree := by
      contrapose!
      intro hc
      rw [Finsupp.prod]
      refine coeff_of_lt_order (lt_of_lt_of_le (Nat.cast_lt.mpr hc)
        (.trans ?_ (le_order_prod _ n.support)))
      exact_mod_cast sum_le_sum fun i hi => le_order_pow_of_constantCoeff_eq_zero _ (ha₁ i)
    rw [← Finset.sum_subset this]
    · congr! 2 with n hn
      simp only [map_sum, coeff_homogeneousComponent, sum_ite_eq, mem_range, left_eq_ite_iff,
        not_lt]
      have : n.degree ≤ d.degree := by
        simp only [map_sum, Set.Finite.mem_toFinset, Function.mem_support, ne_eq] at hn
        exact aux (right_ne_zero_of_smul hn)
      grind
    · simp +contextual only [Set.Finite.mem_toFinset, Function.mem_support, ne_eq, map_sum,
        coeff_homogeneousComponent, sum_ite_eq, mem_range, ite_smul, zero_smul, ite_eq_right_iff,
        imp_false, not_lt, not_le]
      grind [right_ne_zero_of_smul]
  simp_rw [coeff_truncTotal_eq_zero _ (not_lt.mp hd)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a91e921819b605ae2907dddfea54663b2e353ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
