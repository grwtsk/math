# positive_divisor_integer_agreement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9280f403-cade-3dfa-c660-6313db7b22e7",
  "kind": "theorem",
  "lexical_name": "positive_divisor_integer_agreement",
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
  "slug": "positive-divisor-integer-agreement--4c85ce6a229dfb20302ba328",
  "source": {
    "blob": "18becace601b9101db72937bc4b7a39dc8968037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c85ce6a229dfb20302ba328f59422142583474cb2eeb5f857d8b62ad9baf062",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9280f403-cade-3dfa-c660-6313db7b22e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_divisor_integer_agreement (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) =
      sourceMobiusKernel A d := by
  have hdpos : 0 < d := hd
  let S := (primePowerInventory (2 * A)).filter (fun n => d ∣ n)
  let K := (admissibleK A d).filter (fun k => 2 ≤ d * k)
  rw [sourceMobiusKernel_eq_admissible_sum A hA d hd]
  calc
    _ = ∑ n ∈ S, Real.log (n / d : ℕ) * closedPrimeWeight A n := by
      unfold S
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n hn
      rw [antidiagonal_first_factor A d n (by
        have := (Finset.mem_Icc.mp hn).1
        omega)]
      simp [hdpos.ne']
    _ = ∑ k ∈ K, sourceKernelTerm A k d := by
      apply Finset.sum_bij (fun n _ => n / d)
      · intro n hn
        have hnS := Finset.mem_filter.mp hn
        have hnI := Finset.mem_Icc.mp hnS.1
        have hprod : d * (n / d) = n := Nat.mul_div_cancel' hnS.2
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨?_, ?_⟩, ?_⟩, ?_⟩
        · exact Nat.div_pos (Nat.le_of_dvd (by omega) hnS.2) hdpos
        · exact (Nat.div_le_self n d).trans hnI.2
        · simpa only [hprod, sourceKernelCutoff, sourceUpper] using hnI.2
        · simpa only [hprod] using hnI.1
      · intro n₁ hn₁ n₂ hn₂ heq
        have h₁ := (Finset.mem_filter.mp hn₁).2
        have h₂ := (Finset.mem_filter.mp hn₂).2
        calc
          n₁ = d * (n₁ / d) := (Nat.mul_div_cancel' h₁).symm
          _ = d * (n₂ / d) := by rw [heq]
          _ = n₂ := Nat.mul_div_cancel' h₂
      · intro k hk
        have hk' := Finset.mem_filter.mp hk
        have hkA := Finset.mem_filter.mp hk'.1
        refine ⟨d * k, Finset.mem_filter.mpr ⟨?_, dvd_mul_right d k⟩, ?_⟩
        · exact Finset.mem_Icc.mpr ⟨hk'.2, hkA.2⟩
        · simp [hdpos.ne']
      · intro n hn
        have hprod := Nat.mul_div_cancel' (Finset.mem_filter.mp hn).2
        unfold sourceKernelTerm closedPrimeWeight
        rw [← Nat.cast_mul, hprod]
    _ = ∑ k ∈ admissibleK A d, sourceKernelTerm A k d := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro k hk hnot
      have hk1 := (Finset.mem_Icc.mp (Finset.mem_filter.mp hk).1).1
      have hsmall : d * k < 2 := by
        apply Nat.lt_of_not_ge
        intro h
        exact hnot (Finset.mem_filter.mpr ⟨hk, h⟩)
      have hkEq : k = 1 := by nlinarith
      subst k
      simp [sourceKernelTerm]

/-- Reindex the small sector at its closed endpoint, including divisor `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18becace601b9101db72937bc4b7a39dc8968037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
