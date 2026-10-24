# higherPowerWeight_le_tsum_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd4df0ea-baba-134c-52dc-26db8e887bff",
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
  "slug": "higherpowerweight-le-tsum-of-summable--434b1c064ce5f793fdcee7d6",
  "source": {
    "blob": "a7939df0d8a09d8169209dce3167045ebe082a49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 204,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:434b1c064ce5f793fdcee7d644777dc59ab619244ca28836744681e3cf939be3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd4df0ea-baba-134c-52dc-26db8e887bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–239.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f48ae27e876e4bcee636f7235eb2cc9da7e3a06c10662e16c2f1639a61e6dc4.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7939df0d8a09d8169209dce3167045ebe082a49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
