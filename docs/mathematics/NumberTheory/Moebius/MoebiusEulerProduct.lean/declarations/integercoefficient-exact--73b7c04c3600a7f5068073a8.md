# integerCoefficient_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fa1d7ff07ba3b97bf45d7a4d239018d43187a08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/NumberTheory/Moebius/MoebiusEulerProduct.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:affacf59-14ec-a1ac-d2a1-70045dfa1bb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20e2ec04-ece8-8e25-883b-c67e54ace930",
  "kind": "theorem",
  "lexical_name": "integerCoefficient_exact",
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
  "slug": "integercoefficient-exact--73b7c04c3600a7f5068073a8",
  "source": {
    "blob": "3fa1d7ff07ba3b97bf45d7a4d239018d43187a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 19,
    "path": "GRWTSK/NumberTheory/Moebius/MoebiusEulerProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73b7c04c3600a7f5068073a868500ef0ddb7901959d8437800320ef970363dc3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20e2ec04-ece8-8e25-883b-c67e54ace930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerCoefficient_exact (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (n : ℕ) :
    integerCoefficient P n =
      if Squarefree n ∧ n.primeFactors ⊆ P then ArithmeticFunction.moebius n else 0 := by
  classical
  by_cases hn : Squarefree n ∧ n.primeFactors ⊆ P
  · rw [if_pos hn, integerCoefficient]
    have hprod : ASBNP04.FiniteProduct.primeProduct n.primeFactors = n :=
      Nat.prod_primeFactors_of_squarefree hn.1
    have hmem : n.primeFactors ∈ P.powerset := Finset.mem_powerset.mpr hn.2
    rw [Finset.sum_eq_single n.primeFactors]
    · rw [if_pos hprod]
      rw [← ASBNP04.FiniteProduct.moebius_primeProduct n.primeFactors
        (fun p hp => Nat.prime_of_mem_primeFactors hp), hprod]
    · intro U hU hne
      have hUP : U ⊆ P := Finset.mem_powerset.mp hU
      have hfalse : ASBNP04.FiniteProduct.primeProduct U ≠ n := by
        intro he
        apply hne
        exact ASBNP04.FiniteProduct.primeProduct_injective_on_primes U n.primeFactors
          (fun p hp => hP p (hUP hp))
          (fun p hp => Nat.prime_of_mem_primeFactors hp) (he.trans hprod.symm)
      simp [hfalse]
    · exact fun h => False.elim (h hmem)
  · rw [if_neg hn, integerCoefficient]
    apply Finset.sum_eq_zero
    intro U hU
    have hUP : U ⊆ P := Finset.mem_powerset.mp hU
    have hpr : ∀ p ∈ U, p.Prime := fun p hp => hP p (hUP hp)
    have hfalse : ASBNP04.FiniteProduct.primeProduct U ≠ n := by
      intro he
      apply hn
      constructor
      · rw [← he]
        exact ASBNP04.FiniteProduct.primeProduct_squarefree U hpr
      · rw [← he, ASBNP04.FiniteProduct.primeProduct_primeFactors U hpr]
        exact hUP
    simp [hfalse]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MoebiusEulerProduct.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fa1d7ff07ba3b97bf45d7a4d239018d43187a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
