# subset_squarefree_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:498e2151-a1d6-99aa-a6a1-893b7f7fd2b5",
  "kind": "theorem",
  "lexical_name": "subset_squarefree_reindex",
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
  "slug": "subset-squarefree-reindex--535d57c22dcc4ef752518974",
  "source": {
    "blob": "c8306cc01af4928e3056636576250f63490b8522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:535d57c22dcc4ef7525189748ae90062e123356d74ab3cc0c54f94f7fa0e48c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498e2151-a1d6-99aa-a6a1-893b7f7fd2b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_squarefree_reindex (N : ℕ) (F : ℕ → ℂ) :
    (∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => primeProduct U ≤ N),
      F (primeProduct U)) =
    ∑ n ∈ (Finset.Icc 1 N).filter Squarefree, F n := by
  classical
  apply Finset.sum_bij (fun U _ => primeProduct U)
  · intro U hU
    rcases Finset.mem_filter.mp hU with ⟨hUP, hUN⟩
    have hPrime : ∀ p ∈ U, p.Prime := fun p hp =>
      Nat.prime_of_mem_primesLE ((Finset.mem_powerset.mp hUP) hp)
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
      ⟨primeProduct_positive U hPrime, hUN⟩, primeProduct_squarefree U hPrime⟩
  · intro U hU V hV hProduct
    apply primeProduct_injective_on_primes U V _ _ hProduct
    · exact fun p hp => Nat.prime_of_mem_primesLE
        ((Finset.mem_powerset.mp (Finset.mem_filter.mp hU).1) hp)
    · exact fun p hp => Nat.prime_of_mem_primesLE
        ((Finset.mem_powerset.mp (Finset.mem_filter.mp hV).1) hp)
  · intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hnIcc, hnSquarefree⟩
    have hnN := (Finset.mem_Icc.mp hnIcc).2
    refine ⟨n.primeFactors, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      constructor
      · apply Finset.mem_powerset.mpr
        intro p hp
        rcases Nat.mem_primeFactors.mp hp with ⟨hpPrime, hpDivides, hnZero⟩
        exact Nat.mem_primesLE.mpr
          ⟨(Nat.le_of_dvd (Nat.pos_of_ne_zero hnZero) hpDivides).trans hnN, hpPrime⟩
      · simpa only [primeProduct, Nat.prod_primeFactors_of_squarefree hnSquarefree] using hnN
    · exact Nat.prod_primeFactors_of_squarefree hnSquarefree
  · intro U _
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8306cc01af4928e3056636576250f63490b8522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
