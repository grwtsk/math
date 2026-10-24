# element_of_chain_eq_pow_second_of_chain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cde5794-6712-3e3b-d546-897c2c2af013",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02282763-efd8-d1d5-05d5-40d8daf5f4a5",
  "kind": "theorem",
  "lexical_name": "element_of_chain_eq_pow_second_of_chain",
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
  "slug": "element-of-chain-eq-pow-second-of-chain--0fae3bb11243445c3d7bd9de",
  "source": {
    "blob": "32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fae3bb11243445c3d7bd9de2bc032da0cfdfdae7d178c7ec23345b213363c14",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02282763-efd8-d1d5-05d5-40d8daf5f4a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem element_of_chain_eq_pow_second_of_chain {q r : Associates M} {n : ℕ} (hn : n ≠ 0)
    {c : Fin (n + 1) → Associates M} (h₁ : StrictMono c) (h₂ : ∀ {r}, r ≤ q ↔ ∃ i, r = c i)
    (hr : r ∣ q) (hq : q ≠ 0) : ∃ i : Fin (n + 1), r = c 1 ^ (i : ℕ) := by
  classical
    let i := Multiset.card (normalizedFactors r)
    have hi : normalizedFactors r = Multiset.replicate i (c 1) := by
      apply Multiset.eq_replicate_of_mem
      intro b hb
      refine
        eq_second_of_chain_of_prime_dvd hn h₁ (@fun r' => h₂) (prime_of_normalized_factor b hb) hr
          (dvd_of_mem_normalizedFactors hb)
    have H : r = c 1 ^ i := by
      have := UniqueFactorizationMonoid.prod_normalizedFactors (ne_zero_of_dvd_ne_zero hq hr)
      rw [associated_iff_eq, hi, Multiset.prod_replicate] at this
      rw [this]
    refine ⟨⟨i, ?_⟩, H⟩
    have : (Finset.univ.image fun m : Fin (i + 1) => c 1 ^ (m : ℕ)).card = i + 1 := by
      conv_rhs => rw [← Finset.card_fin (i + 1)]
      cases n
      · contradiction
      rw [Finset.card_image_iff]
      refine Set.injOn_of_injective (fun m m' h => Fin.ext ?_)
      refine
        pow_injective_of_not_isUnit (element_of_chain_not_isUnit_of_index_ne_zero (by simp) h₁) ?_ h
      exact Irreducible.ne_zero (second_of_chain_is_irreducible hn h₁ (@h₂) hq)
    suffices H' : ∀ r ∈ Finset.univ.image fun m : Fin (i + 1) => c 1 ^ (m : ℕ), r ≤ q by
      simp only [← Nat.succ_le_iff, Nat.succ_eq_add_one, ← this]
      apply card_subset_divisors_le_length_of_chain (@h₂) H'
    simp only [Finset.mem_image]
    rintro r ⟨a, _, rfl⟩
    refine dvd_trans ?_ hr
    use c 1 ^ (i - (a : ℕ))
    rw [pow_mul_pow_sub (c 1)]
    · exact H
    · exact Nat.succ_le_succ_iff.mp a.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
