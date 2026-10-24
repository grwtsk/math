# pickup_eq_prime_note_cascade

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ef5bc3-92ae-b89c-dd51-aa7696574f27",
  "kind": "theorem",
  "lexical_name": "pickup_eq_prime_note_cascade",
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
  "slug": "pickup-eq-prime-note-cascade--83e1a27a71d6b89e09315c74",
  "source": {
    "blob": "93f40c8579ed255545301f8961f6e29a2d12cb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83e1a27a71d6b89e09315c74e37ccd3c0b39d4efca3e398809f91482d60fdfe3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26ef5bc3-92ae-b89c-dd51-aa7696574f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_eq_prime_note_cascade {u T : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u = primeNoteCascade (pickupPrimes T) u := by
  rw [wholePickup_fixed_inventory hu huT]
  let P := pickupPrimes T
  let S := (Finset.Icc 1 ⌊Real.exp T⌋₊).filter Squarefree
  have hP : ∀ p ∈ P, p.Prime := fun p hp ↦ (Finset.mem_filter.mp hp).2
  have hf : (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * pickupResponse n u) = ∑ n ∈ S, moebiusReal n * pickupResponse n u := by
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hns
    have h : ¬Squarefree n := fun hs ↦ hns (Finset.mem_filter.mpr ⟨hn, hs⟩)
    simp [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree h]
  rw [hf]
  unfold primeNoteCascade
  symm
  apply Finset.sum_bij_ne_zero (fun A _ _ ↦ ∏ p ∈ A, p)
  · intro A hA hne
    have hAp := fun p hp ↦ hP p (Finset.mem_powerset.mp hA hp)
    have hpos := prime_product_pos hAp
    have hsf := prime_product_squarefree hAp
    have hcut : (∏ p ∈ A, p) ≤ ⌊Real.exp T⌋₊ := by
      by_contra h
      have hlog : ¬Real.log (∏ p ∈ A, p : ℕ) ≤ u := by
        intro hlu
        have := (pickup_log_le_iff_closed_cutoff hpos T).mp (hlu.trans huT)
        omega
      exact hne (by rw [pickupResponse, if_neg hlog, mul_zero])
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hpos, hcut⟩, hsf⟩
  · intro A hA _ B hB _ hab
    have hAf := Nat.primeFactors_prod (fun p hp ↦ hP p (Finset.mem_powerset.mp hA hp))
    have hBf := Nat.primeFactors_prod (fun p hp ↦ hP p (Finset.mem_powerset.mp hB hp))
    exact hAf.symm.trans ((congrArg Nat.primeFactors hab).trans hBf)
  · intro n hn hne
    have hnS := Finset.mem_filter.mp hn
    refine ⟨n.primeFactors, Finset.mem_powerset.mpr ?_, ?_⟩
    · intro p hp
      have hpf := Nat.mem_primeFactors.mp hp
      exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
        ⟨hpf.1.one_le, (Nat.le_of_dvd (by omega) hpf.2.1).trans
          (Finset.mem_Icc.mp hnS.1).2⟩, hpf.1⟩
    · have heq := Nat.prod_primeFactors_of_squarefree hnS.2
      exact ⟨by simpa only [heq] using hne, heq⟩
  · intro A _ _
    rfl

end GRWTSK.RiemannHypothesis.CCC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f40c8579ed255545301f8961f6e29a2d12cb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
