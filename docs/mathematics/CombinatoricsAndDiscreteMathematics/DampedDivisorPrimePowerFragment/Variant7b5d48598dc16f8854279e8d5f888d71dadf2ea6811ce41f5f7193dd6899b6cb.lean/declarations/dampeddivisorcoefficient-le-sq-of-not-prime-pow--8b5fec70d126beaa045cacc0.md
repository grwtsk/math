# dampedDivisorCoefficient_le_sq_of_not_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e998cab590c2f6c33aca301123b0d0534ab6cd44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ce27254-2397-b5d7-70dd-5b13a79e92ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19b452a1-ea96-4399-d7ec-c9d7838dbf5c",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_le_sq_of_not_prime_pow",
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
  "slug": "dampeddivisorcoefficient-le-sq-of-not-prime-pow--8b5fec70d126beaa045cacc0",
  "source": {
    "blob": "e998cab590c2f6c33aca301123b0d0534ab6cd44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerFragment/Variant7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b5fec70d126beaa045cacc06b81e37c30ffc112197e3fad52d61fd668cdf7be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerFragment/Variant7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19b452a1-ea96-4399-d7ec-c9d7838dbf5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_le_sq_of_not_prime_pow (ε : ℝ) (hε : 0 ≤ ε)
    (n : ℕ) (hn : 2 ≤ n) (hnp : ¬IsPrimePow n) :
    dampedDivisorCoefficient ε n ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
  obtain ⟨p, hp, q, hq, hpq⟩ := (Nat.not_isPrimePow_iff_nontrivial_of_two_le hn).mp hnp
  let f : ℕ → ℝ := fun r => 1 - Real.exp (-ε * Real.log (r : ℝ))
  have hf0 (r : ℕ) (hr : r ∈ n.primeFactors) : 0 ≤ f r := by
    have hr1 : (1 : ℝ) ≤ r := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).one_le
    exact sub_nonneg.mpr (Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hr1)))
  have hf1 (r : ℕ) : f r ≤ 1 := sub_le_self _ (Real.exp_nonneg _)
  have hflog (r : ℕ) (hr : r ∈ n.primeFactors) : f r ≤ ε * Real.log (n : ℝ) := by
    have h0 : 0 < (r : ℝ) := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).pos
    have hle : (r : ℝ) ≤ n := by exact_mod_cast Nat.le_of_mem_primeFactors hr
    have hl := Real.log_le_log h0 hle
    have hlow := Real.add_one_le_exp (-ε * Real.log (r : ℝ))
    calc
      f r ≤ ε * Real.log (r : ℝ) := by dsimp only [f]; linarith
      _ ≤ _ := mul_le_mul_of_nonneg_left hl hε
  have hsub : ({p, q} : Finset ℕ) ⊆ n.primeFactors := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl
    · exact hp
    · exact hq
  have hprod : (∏ r ∈ n.primeFactors, f r) ≤ f p * f q := by
    have hb := Finset.prod_le_prod_of_subset_of_le_one hsub hf0 (fun r _ _ => hf1 r)
    simpa only [Finset.prod_pair hpq] using hb
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε n (by omega)]
  calc
    _ ≤ f p * f q := hprod
    _ ≤ (ε * Real.log (n : ℝ)) * (ε * Real.log (n : ℝ)) :=
      mul_le_mul (hflog p hp) (hflog q hq) (hf0 q hq)
        (mul_nonneg hε (Real.log_nonneg (by exact_mod_cast (show 1 ≤ n by omega))))
    _ = _ := by ring

end
end DampedDivisorPrimePowerScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerFragment/Variant7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DampedDivisorPrimePowerFragment/Variant7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e998cab590c2f6c33aca301123b0d0534ab6cd44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
