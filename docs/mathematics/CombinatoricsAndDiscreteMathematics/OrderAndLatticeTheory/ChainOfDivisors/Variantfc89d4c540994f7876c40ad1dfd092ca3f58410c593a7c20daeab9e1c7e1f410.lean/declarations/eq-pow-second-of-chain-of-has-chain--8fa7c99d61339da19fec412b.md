# eq_pow_second_of_chain_of_has_chain

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
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:351a4b30-8d5e-7d25-fa6c-f3088bf47ecf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9d3b190-1f4a-de7d-47ea-b1567bc74815",
  "kind": "theorem",
  "lexical_name": "eq_pow_second_of_chain_of_has_chain",
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
  "slug": "eq-pow-second-of-chain-of-has-chain--8fa7c99d61339da19fec412b",
  "source": {
    "blob": "32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa7c99d61339da19fec412b86b5ac48fd3a5142494b890b6d06aeba94ee5b55",
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

Occurrence: `result:f9d3b190-1f4a-de7d-47ea-b1567bc74815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_second_of_chain_of_has_chain {q : Associates M} {n : ℕ} (hn : n ≠ 0)
    {c : Fin (n + 1) → Associates M} (h₁ : StrictMono c)
    (h₂ : ∀ {r : Associates M}, r ≤ q ↔ ∃ i, r = c i) (hq : q ≠ 0) : q = c 1 ^ n := by
  classical
    obtain ⟨i, hi'⟩ := element_of_chain_eq_pow_second_of_chain hn h₁ (@fun r => h₂) (dvd_refl q) hq
    convert hi'
    refine (Nat.lt_succ_iff.1 i.prop).antisymm' (Nat.le_of_succ_le_succ ?_)
    calc
      n + 1 = (Finset.univ : Finset (Fin (n + 1))).card := (Finset.card_fin _).symm
      _ = (Finset.univ.image c).card := (Finset.card_image_iff.mpr h₁.injective.injOn).symm
      _ ≤ (Finset.univ.image fun m : Fin (i + 1) => c 1 ^ (m : ℕ)).card :=
        (Finset.card_le_card ?_)
      _ ≤ (Finset.univ : Finset (Fin (i + 1))).card := Finset.card_image_le
      _ = i + 1 := Finset.card_fin _
    intro r hr
    obtain ⟨j, -, rfl⟩ := Finset.mem_image.1 hr
    have := h₂.2 ⟨j, rfl⟩
    rw [hi'] at this
    have h := (dvd_prime_pow (show Prime (c 1) from ?_) i).1 this
    · rcases h with ⟨u, hu, hu'⟩
      refine Finset.mem_image.mpr ⟨u, Finset.mem_univ _, ?_⟩
      rw [associated_iff_eq] at hu'
      rw [Fin.val_cast_of_lt (Nat.lt_succ_of_le hu), hu']
    · rw [← irreducible_iff_prime]
      exact second_of_chain_is_irreducible hn h₁ (@h₂) hq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
