# Nat.pow_multiplicity_dvd_of_dvd_of_not_dvd_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5987efa-66ca-e7de-7171-167e7b0d45c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f627bc97-826f-453c-baa6-b82211d2d4d8",
  "kind": "theorem",
  "lexical_name": "Nat.pow_multiplicity_dvd_of_dvd_of_not_dvd_div",
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
  "slug": "nat-pow-multiplicity-dvd-of-dvd-of-not-dvd-div--99654d98f8e1e49ebdf6426b",
  "source": {
    "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99654d98f8e1e49ebdf6426bdafe8e2d27b86e71de8a68c1082968e6d4332c49",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f627bc97-826f-453c-baa6-b82211d2d4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.pow_multiplicity_dvd_of_dvd_of_not_dvd_div
    {q n x : ℕ} (hq : q.Prime) (hxn : x ∣ n) (hxnq : ¬ x ∣ n / q) :
    q ^ multiplicity q n ∣ x := by
  by_cases hqn : q ∣ n
  · obtain ⟨n, rfl⟩ := hqn
    rw [Nat.mul_div_cancel_left _ hq.pos] at hxnq
    by_cases hn₀ : n = 0
    · subst hn₀; exact (hxnq <| dvd_zero _).elim
    have hqn₀ : q * n ≠ 0 := mul_ne_zero hq.ne_zero hn₀
    have hx₀ : x ≠ 0 := by rintro rfl; exact hqn₀ <| zero_dvd_iff.mp hxn
    rw [← Nat.factorization_le_iff_dvd hx₀ hn₀] at hxnq
    rw [← Nat.factorization_le_iff_dvd hx₀ hqn₀] at hxn
    rw [Nat.factorization_mul hq.ne_zero hn₀, hq.factorization, add_comm] at hxn
    refine pow_dvd_of_le_multiplicity ?_
    rw [multiplicity_eq_factorization hq hqn₀, multiplicity_eq_factorization hq hx₀,
      Nat.factorization_mul hq.ne_zero hn₀, Finsupp.add_apply, hq.factorization,
      Finsupp.single_apply, if_pos rfl, add_comm]
    refine le_of_not_gt fun h ↦ hxnq fun p ↦ ?_
    by_cases hpq : p = q
    · subst hpq; exact Nat.lt_succ_iff.mp h
    convert hxn p using 1
    rw [Finsupp.add_apply, Finsupp.single_apply, if_neg (Ne.symm hpq), add_zero]
  · rw [multiplicity_eq_zero.mpr hqn, pow_zero]
    exact one_dvd _

/-- Let `N` be a natural number whose primality we want to certify.
Assume we have a partial factorisation `N - 1 = F₁ * R₁`, where `F₁` is fully factorised with
prime factors `pᵢ`.
Now for each `pᵢ` find a pseudo-primitive root `aᵢ` such that `aᵢ ^ (N - 1) ≡ 1 (mod N)` and
`gcd(aᵢ ^ ((N - 1) / pᵢ) - 1, N) = 1`.
Then any prime factor `n` of `N` satisfies `n ≡ 1 (mod F₁)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1b10936ddf9673d6608c8057531ce7b793927a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
