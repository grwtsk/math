# Nat.modEq_iff_forall_prime_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09a7055b-e629-5312-3807-feb51c75b3be",
  "kind": "theorem",
  "lexical_name": "Nat.modEq_iff_forall_prime_dvd",
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
  "slug": "nat-modeq-iff-forall-prime-dvd--e48a76c4fa5e00ed17dc8d73",
  "source": {
    "blob": "38573c6f572f30b2301419d823e696edb0f225e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e48a76c4fa5e00ed17dc8d73b11ac6c0e0ec626388ded5b8c29d834b31437074",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09a7055b-e629-5312-3807-feb51c75b3be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.modEq_iff_forall_prime_dvd {a b n : ℕ} :
    a ≡ b [MOD n] ↔ ∀ p : ℕ, p ∣ n → p.Prime → a ≡ b [MOD p ^ multiplicity p n] := by
  by_cases hn₀ : n = 0
  · subst hn₀
    simp_rw [modEq_zero_iff, dvd_zero, true_imp_iff]
    constructor
    · rintro rfl; exact fun _ _ ↦ by rfl
    · intro h
      obtain ⟨p, hbp, hp⟩ := exists_infinite_primes (a + b + 1)
      specialize h p hp
      rw [multiplicity_zero_right, pow_one] at h
      exact h.eq_of_lt_of_lt (by linarith) (by linarith)
  · conv_lhs => rw [← factorization_prod_pow_eq_self hn₀]
    rw [Finsupp.prod, modEq_finset_prod_iff]
    · simp_rw [support_factorization, mem_primeFactors_of_ne_zero hn₀, and_comm, and_imp]
      refine forall_congr' fun p ↦ imp_congr_right fun hpn ↦ imp_congr_right fun hp ↦ ?_
      rw [multiplicity_eq_factorization hp hn₀]
    · refine fun p q hp ↦ coprime_pow_primes _ _ ?_ ?_ <| by grind
      · exact ((mem_primeFactors_of_ne_zero hn₀).mp p.2).1
      · exact ((mem_primeFactors_of_ne_zero hn₀).mp q.2).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38573c6f572f30b2301419d823e696edb0f225e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
