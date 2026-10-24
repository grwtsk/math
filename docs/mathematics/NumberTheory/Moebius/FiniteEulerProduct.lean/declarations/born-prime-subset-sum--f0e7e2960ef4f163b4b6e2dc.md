# born_prime_subset_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeb960b9-6c02-5ee4-9ab9-bd0a8becd5f3",
  "kind": "theorem",
  "lexical_name": "born_prime_subset_sum",
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
  "slug": "born-prime-subset-sum--f0e7e2960ef4f163b4b6e2dc",
  "source": {
    "blob": "49a0c950106c27253ef900e21866b01cd4a25dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0e7e2960ef4f163b4b6e2dc06a0d510f442fa0aaba57236d4e9e26f3ec031c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteEulerProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb960b9-6c02-5ee4-9ab9-bd0a8becd5f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem born_prime_subset_sum (f : ArithmeticFunction R) (N : ℕ) :
    (∑ S ∈ (Nat.primesLE N).powerset.filter (fun S => (∏ p ∈ S, p) ≤ N),
      (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p)) =
    ∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n := by
  classical
  apply Finset.sum_bij_ne_zero (fun S _ _ => ∏ p ∈ S, p)
  · intro S hS _
    rcases Finset.mem_filter.mp hS with ⟨hS, hcut⟩
    have hpr : ∀ p ∈ S, p.Prime := fun p hp =>
      Nat.prime_of_mem_primesLE (Finset.mem_powerset.mp hS hp)
    have hpos : 1 ≤ ∏ p ∈ S, p :=
      Nat.one_le_iff_ne_zero.mpr (Finset.prod_ne_zero_iff.mpr fun p hp =>
        (hpr p hp).ne_zero)
    exact Finset.mem_Icc.mpr ⟨hpos, hcut⟩
  · intro A hA _ B hB _ hab
    have hAf := Nat.primeFactors_prod (fun p hp =>
      Nat.prime_of_mem_primesLE (Finset.mem_powerset.mp (Finset.mem_filter.mp hA).1 hp))
    have hBf := Nat.primeFactors_prod (fun p hp =>
      Nat.prime_of_mem_primesLE (Finset.mem_powerset.mp (Finset.mem_filter.mp hB).1 hp))
    exact hAf.symm.trans ((congrArg Nat.primeFactors hab).trans hBf)
  · intro n hn hne
    have hnI := Finset.mem_Icc.mp hn
    have hsf : Squarefree n := by
      by_contra h
      exact hne (by simp [ArithmeticFunction.moebius_eq_zero_of_not_squarefree h])
    have heq := Nat.prod_primeFactors_of_squarefree hsf
    refine ⟨n.primeFactors, Finset.mem_filter.mpr ⟨Finset.mem_powerset.mpr ?_, ?_⟩,
      ?_, heq⟩
    · intro p hp
      have hpf := Nat.mem_primeFactors.mp hp
      exact Nat.mem_primesLE.mpr
        ⟨(Nat.le_of_dvd (by omega) hpf.2.1).trans hnI.2, hpf.1⟩
    · simpa only [heq] using hnI.2
    · simpa only [heq] using hne
  · intro S _ _
    rfl

/-- Exact cutoff identity for every multiplicative arithmetic weight over any
commutative ring. The full signed above-cutoff remainder is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteEulerProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a0c950106c27253ef900e21866b01cd4a25dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
