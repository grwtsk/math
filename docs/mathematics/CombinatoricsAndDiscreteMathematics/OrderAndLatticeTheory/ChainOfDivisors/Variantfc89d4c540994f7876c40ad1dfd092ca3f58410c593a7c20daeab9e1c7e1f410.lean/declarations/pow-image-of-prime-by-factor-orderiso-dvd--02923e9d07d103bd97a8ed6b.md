# pow_image_of_prime_by_factor_orderIso_dvd

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
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:919629e9-7f5a-cfd6-b525-d313293a0c7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d545925-4dab-8046-7524-69e76573f55a",
  "kind": "theorem",
  "lexical_name": "pow_image_of_prime_by_factor_orderIso_dvd",
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
  "slug": "pow-image-of-prime-by-factor-orderiso-dvd--02923e9d07d103bd97a8ed6b",
  "source": {
    "blob": "32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02923e9d07d103bd97a8ed6b2e2939bf059f7f048a7b08a801b98bed059409f0",
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

Occurrence: `result:8d545925-4dab-8046-7524-69e76573f55a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_image_of_prime_by_factor_orderIso_dvd
    {m p : Associates M} {n : Associates N} (hn : n ≠ 0) (hp : p ∈ normalizedFactors m)
    (d : Set.Iic m ≃o Set.Iic n) {s : ℕ} (hs' : p ^ s ≤ m) :
    (d ⟨p, dvd_of_mem_normalizedFactors hp⟩ : Associates N) ^ s ≤ n := by
  by_cases hs : s = 0
  · simp [← Associates.bot_eq_one, hs]
  suffices (d ⟨p, dvd_of_mem_normalizedFactors hp⟩ : Associates N) ^ s =
      (d ⟨p ^ s, hs'⟩) by
    rw [this]
    apply Subtype.prop (d ⟨p ^ s, hs'⟩)
  obtain ⟨c₁, rfl, hc₁', hc₁''⟩ := exists_chain_of_prime_pow hs (prime_of_normalized_factor p hp)
  let c₂ : Fin (s + 1) → Associates N := fun t => d ⟨c₁ t, le_trans (hc₁''.2 ⟨t, by simp⟩) hs'⟩
  have c₂_def : ∀ t, c₂ t = d ⟨c₁ t, _⟩ := fun t => rfl
  rw [← c₂_def]
  refine (eq_pow_second_of_chain_of_has_chain hs (fun t u h => ?_)
    (@fun r => ⟨@fun hr => ?_, ?_⟩) ?_).symm
  · rw [c₂_def, c₂_def, Subtype.coe_lt_coe, d.lt_iff_lt, Subtype.mk_lt_mk, hc₁'.lt_iff_lt]
    exact h
  · have : r ≤ n := hr.trans (d ⟨c₁ 1 ^ s, _⟩).2
    suffices d.symm ⟨r, this⟩ ≤ ⟨c₁ 1 ^ s, hs'⟩ by
      obtain ⟨i, hi⟩ := hc₁''.1 this
      use i
      simp only [c₂_def, ← hi, d.apply_symm_apply, Subtype.coe_eta, Subtype.coe_mk]
    conv_rhs => rw [← d.symm_apply_apply ⟨c₁ 1 ^ s, hs'⟩]
    rw [d.symm.le_iff_le]
    simpa only [← Subtype.coe_le_coe, Subtype.coe_mk] using hr
  · rintro ⟨i, hr⟩
    rw [hr, c₂_def, Subtype.coe_le_coe, d.le_iff_le]
    simpa [Subtype.mk_le_mk] using hc₁''.2 ⟨i, rfl⟩
  exact ne_zero_of_dvd_ne_zero hn (Subtype.prop (d ⟨c₁ 1 ^ s, _⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
