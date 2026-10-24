# higherPowerWeight_le_tsum_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5910af69a72a3114d884d41b135dc1dd410b97a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc4cf847-f2c4-9472-842f-86d068de9357",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36e4c83f-2e13-bebc-1515-0bb712ed819c",
  "kind": "theorem",
  "lexical_name": "higherPowerWeight_le_tsum_of_summable",
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
  "slug": "higherpowerweight-le-tsum-of-summable--76da176101c6dbfc9cdd741e",
  "source": {
    "blob": "5910af69a72a3114d884d41b135dc1dd410b97a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 196,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76da176101c6dbfc9cdd741e597468f887e209128517779a5a78419db99be2a7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36e4c83f-2e13-bebc-1515-0bb712ed819c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPowerWeight_le_tsum_of_summable
    (hsummable : Summable higherPowerCoefficient) (A : ℝ) :
    higherPowerWeight A ≤ ∑' pk : Nat.Primes × ℕ, higherPowerCoefficient pk := by
  classical
  let s := (higherPowerInventory A).filter IsPrimePow
  have hre (n : {n // n ∈ s}) :
      ∃ pk : Nat.Primes × ℕ, (pk.1 : ℕ) ^ (pk.2 + 3) = n.val := by
    have hs := Finset.mem_filter.mp n.prop
    have hnlow : ¬PrimeOrPrimeSquare n.val :=
      (show n.val ∈ primeIndices A ∧ ¬PrimeOrPrimeSquare n.val from
        by simpa only [higherPowerInventory, Finset.mem_filter] using hs.1).2
    obtain ⟨p, k, h⟩ := exists_higher_prime_power hs.2 hnlow
    exact ⟨(p, k), h⟩
  choose repr repr_spec using hre
  have hinj : Function.Injective repr := by
    intro n m hnm
    apply Subtype.ext
    rw [← repr_spec n, ← repr_spec m, hnm]
  calc
    higherPowerWeight A = ∑ n ∈ s, primeWeight n := by
      unfold higherPowerWeight
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n _
      by_cases hn : IsPrimePow n
      · simp [hn]
      · simp [hn, primeWeight_eq_zero_of_not_prime_power hn]
    _ = ∑ pk ∈ s.attach.image repr, higherPowerCoefficient pk := by
      rw [Finset.sum_image (fun n _ m _ h ↦ hinj h), ← Finset.sum_attach]
      apply Finset.sum_congr rfl
      intro n _
      rw [← repr_spec n, primeWeight_pow_eq_higherPowerCoefficient]
    _ ≤ _ := hsummable.sum_le_tsum _ (fun pk _ ↦ higherPowerCoefficient_nonneg pk)

/-- A fixed, finite bound containing every prime power of exponent at least
three. It depends on no source radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5910af69a72a3114d884d41b135dc1dd410b97a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
