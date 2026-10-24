# actualEvenProductMoment_eq_two_power_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d005c11-14b2-9b5b-526a-aa889e23f4c2",
  "kind": "theorem",
  "lexical_name": "actualEvenProductMoment_eq_two_power_sum",
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
  "slug": "actualevenproductmoment-eq-two-power-sum--2e3c50a1fbdeb2026a858902",
  "source": {
    "blob": "8015827f2ca9cc4b5264fedc059e33cefbb233c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative01/Variant3d1e7ef0e289e83f016c56eab97b91c04a31c974cd0b1bb719e3e0336fca74a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e3c50a1fbdeb2026a8589024eda013f71e8f2cef608389787dbb3e111a0e779",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative01/Variant3d1e7ef0e289e83f016c56eab97b91c04a31c974cd0b1bb719e3e0336fca74a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d005c11-14b2-9b5b-526a-aa889e23f4c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEvenProductMoment_eq_two_power_sum (A : ℝ) :
    actualEvenProductMoment A = ∑ j ∈ actualEvenPowerInventory A,
      vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j) := by
  let S := ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter IsPrimePow
  have hz : actualEvenProductMoment A = ∑ n ∈ S,
      vonMangoldt n * closedPrimeWeight A n := by
    unfold actualEvenProductMoment
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hnot
    have hnnot : ¬IsPrimePow n := by
      intro hp
      exact hnot (Finset.mem_filter.mpr ⟨hn, hp⟩)
    exact source_coefficient_zero_of_not_isPrimePow A hnnot
  rw [hz]
  symm
  apply Finset.sum_bij (fun j _ => 2 ^ j)
  · intro j hj
    obtain ⟨hjI, hjN⟩ := Finset.mem_filter.mp hj
    have hj0 : j ≠ 0 := by have := (Finset.mem_Icc.mp hjI).1; omega
    have hp := Nat.prime_two.isPrimePow.pow hj0
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hp.two_le, hjN⟩, ?_⟩, hp⟩
    exact dvd_pow_self 2 hj0
  · intro j hj k hk heq
    exact Nat.pow_right_injective (by norm_num : 2 ≤ 2) heq
  · intro n hn
    obtain ⟨hnE, hnP⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp hnE
    obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
    have hnN := (Finset.mem_Icc.mp hnI).2
    refine ⟨j, Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hj0, hjn.trans hnN⟩, ?_⟩, hjpow⟩
    simpa [hjpow] using hnN
  · intro j hj
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative01/Variant3d1e7ef0e289e83f016c56eab97b91c04a31c974cd0b1bb719e3e0336fca74a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative01/Variant3d1e7ef0e289e83f016c56eab97b91c04a31c974cd0b1bb719e3e0336fca74a0.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8015827f2ca9cc4b5264fedc059e33cefbb233c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
