# selbergBoundingSum_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:732f4edd-f9cb-b55e-759b-a901dff84b44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f411817f-26a4-a189-a7c7-33224140935d",
  "kind": "theorem",
  "lexical_name": "selbergBoundingSum_ge",
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
  "slug": "selbergboundingsum-ge--e283777af38b5ae42117e81a",
  "source": {
    "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 310,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e283777af38b5ae42117e81a0a1b12127ca188e02fa36aa0dec8a03bd848afa3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f411817f-26a4-a189-a7c7-33224140935d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selbergBoundingSum_ge {d : ℕ} (hdP : d ∣ P) :
    S ≥ γ d * ↑(μ d) * S := by
  calc
  _ = (∑ k ∈ divisors P, ∑ l ∈ divisors P, if k = d.gcd l ∧ l ^ 2 ≤ y then g l else 0) := by
    dsimp only [selbergBoundingSum]
    rw [sum_comm, sum_congr rfl]; intro l _
    simp_rw [ite_and]
    rw [sum_ite_eq_of_mem']
    · rw [mem_divisors]
      exact ⟨(Nat.gcd_dvd_left d l).trans (hdP), prodPrimes_ne_zero⟩
  _ = (∑ k ∈ divisors P,
          if k ∣ d then
            g k * ∑ m ∈ divisors P, if (k * m) ^ 2 ≤ y ∧ m.Coprime d then g m else 0
          else 0) := by
    apply sum_congr rfl; intro k hk
    rw [mul_sum]
    split_ifs with hkd
    swap
    · rw [sum_eq_zero]; intro l _
      rw [if_neg]
      push Not; intro h; exfalso
      rw [h] at hkd
      exact hkd <| Nat.gcd_dvd_left d l
    rw [sum_mul_subst k P, sum_congr rfl]
    · intro m hm
      rw [mul_ite_zero, ← ite_and]
      apply if_ctx_congr _ _ fun _ => rfl
      · exact_mod_cast s._helper hkd hk hm
      · intro h
        apply (selbergTerms_mult _).map_mul_of_coprime
        rw [gcd_comm]; apply h.2.coprime_dvd_right hkd
    · intro l _ hkl; apply if_neg
      push Not; intro h; exfalso
      rw [h] at hkl; exact hkl (Nat.gcd_dvd_right d l)
  _ ≥ (∑ k ∈ divisors P, if k ∣ d
          then g k * ∑ m ∈ divisors P, if (d * m) ^ 2 ≤ y ∧ m.Coprime d then g m else 0
          else 0 ) := by
    apply sum_le_sum; intro k _
    split_ifs with hkd
    swap
    · rfl
    apply mul_le_mul le_rfl _ _ (le_of_lt <| selbergTerms_pos _ k <| hkd.trans hdP)
    · apply sum_le_sum; intro m hm
      split_ifs with h h' h'
      · rfl
      · exfalso; apply h'
        refine ⟨?_, h.2⟩
        · trans ((d*m)^2:ℝ)
          · norm_cast; gcongr
            refine Nat.le_of_dvd ?_ hkd
            apply Nat.pos_of_ne_zero; apply ne_zero_of_dvd_ne_zero prodPrimes_ne_zero hdP
          exact h.1
      · refine le_of_lt <| selbergTerms_pos _ m <| dvd_of_mem_divisors hm
      · rfl
    apply sum_nonneg; intro m hm
    split_ifs
    · apply le_of_lt <| selbergTerms_pos _ m <| dvd_of_mem_divisors hm
    · rfl
  _ = _ := by
    conv => enter [1, 2, k]; rw [← ite_zero_mul]
    rw [←sum_mul, conv_selbergTerms_eq_selbergTerms_mul_nu _ hdP]
    trans (S * S⁻¹ * (μ d:ℝ)^2 * (ν d)⁻¹ * g d * (∑ m ∈ divisors P, if (d*m) ^ 2 ≤ y ∧
      Coprime m d then g m else 0))
    · rw [mul_inv_cancel₀, ←Int.cast_pow, moebius_sq_eq_one_of_squarefree]
      · ring
      · exact Squarefree.squarefree_of_dvd hdP s.prodPrimes_squarefree
      · exact _root_.ne_of_gt <| s.selbergBoundingSum_pos
    dsimp only [selbergWeights]; rw [if_pos hdP]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ebcce06b6944c9d13099895314b98acc3835c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
