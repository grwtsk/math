# exists_orderEmbedding_of_isChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b64a56e684a27db95e3f25558fcd30be78a6dce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 723,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e457d219-efa0-69bd-6780-e7d0140694eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1eb2070-2e29-8589-687e-689b8c00c7d7",
  "kind": "theorem",
  "lexical_name": "exists_orderEmbedding_of_isChain",
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
  "slug": "exists-orderembedding-of-ischain--bc7388199f87516d60e763bb",
  "source": {
    "blob": "3b64a56e684a27db95e3f25558fcd30be78a6dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 723,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7388199f87516d60e763bb5e735fb351d79c4b865586b9525ea2a1805970ba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1eb2070-2e29-8589-687e-689b8c00c7d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orderEmbedding_of_isChain [Finite G] {p n : ℕ} (hp : p.Prime)
    (hdvd : p ^ n ∣ Nat.card G) {s : Set (Subgroup G)} (hchain : IsChain (· ≤ ·) s)
    (hcard : ∀ H ∈ s, Nat.card H ∣ p ^ n) :
    ∃ f : Fin (n + 1) ↪o Subgroup G, s ⊆ Set.range f ∧ ∀ k, Nat.card (f k) = p ^ k.val := by
  suffices ∀ (n : ℕ) (H : Subgroup G) (hdvd : p ^ n ∣ Nat.card H) (s : Set (Subgroup G))
      (hchain : IsChain (· ≤ ·) s) (hcard : ∀ K ∈ s, Nat.card K ∣ p ^ n) (hle : ∀ K ∈ s, K ≤ H),
      ∃ f : Fin (n + 1) ↪o Subgroup G, s ⊆ Set.range f ∧
        ∀ k, Nat.card (f k) = p ^ k.val ∧ f k ≤ H by
    obtain ⟨f, hf⟩ := this n ⊤ (by simpa) s hchain hcard (by simp)
    grind
  intro n H hdvd s hchain hcard hle
  classical
  have : Fact p.Prime := ⟨hp⟩
  induction n generalizing H s with
  | zero => exact ⟨.ofStrictMono ![⊥] (by simp), by simpa using hcard⟩
  | succ n ih =>
    have h : ∃ T ≤ H, Nat.card T ∣ p ^ (n + 1) ∧ ∀ K ∈ s, K ≤ T := by
      let : LinearOrder s := hchain.lt_of_le.linearOrder
      by_cases! h : Nonempty s
      · obtain ⟨⟨t, hts⟩, ht⟩ := Finite.exists_max (fun x : s ↦ x)
        exact ⟨t, hle t hts, hcard t hts, fun g hg ↦ ht ⟨g, hg⟩⟩
      · exact ⟨⊥, by simp [s.eq_empty_of_isEmpty]⟩
    obtain ⟨T, hTH, hTcard, hsT⟩ : ∃ t ≤ H, Nat.card t = p ^ (n + 1) ∧ ∀ K ∈ s, K ≤ t := by
      obtain ⟨T, hTH, hTcard, hsT⟩ := h
      obtain ⟨T, hcardT, hleT, hTle⟩ := exists_subgroup_card_pow_prime_le_le hp hTcard hdvd hTH
      exact ⟨T, hTle, hcardT, fun g hg ↦ (hsT g hg).trans hleT⟩
    have hcard' (K : Subgroup G) (hg : K ∈ s \ {T}) : Nat.card K ∣ p ^ n := by
      obtain ⟨m, hmn, hm⟩ := (Nat.dvd_prime_pow hp).mp (hcard K hg.1)
      have hlt : Nat.card K < Nat.card T := card_lt_of_lt <| (hsT K hg.1).lt_of_ne hg.2
      rw [hm, hTcard, pow_lt_pow_iff_right₀ hp.one_lt, Nat.lt_add_one_iff] at hlt
      exact hm ▸ pow_dvd_pow p hlt
    obtain ⟨f', hsf', hf'⟩ := ih T (by simp [hTcard, pow_add]) (s \ {T})
      (hchain.mono Set.sdiff_subset) hcard' fun g hg ↦ hsT g hg.1
    have hf : StrictMono (Fin.snoc f' T) := fun x y h ↦ by
      obtain ⟨x, rfl⟩ := Fin.exists_castSucc_eq.mpr (Fin.ne_last_of_lt h)
      rcases y.eq_castSucc_or_eq_last with ⟨y, rfl⟩ | rfl
      · simpa
      · rw [Fin.snoc_castSucc, Fin.snoc_last]
        apply lt_of_le_of_ne (hf' x).2
        grind [Nat.pow_right_inj hp.one_lt]
    refine ⟨.ofStrictMono (Fin.snoc f' T) hf, fun K hK ↦ ?_, fun x ↦ ?_⟩
    · rw [OrderEmbedding.coe_ofStrictMono, Fin.range_snoc]
      exact Set.sdiff_singleton_subset_iff.mp hsf' hK
    · rcases x.eq_castSucc_or_eq_last with ⟨x, rfl⟩ | rfl
      · simp [(hf' x).1, (hf' x).2.trans hTH]
      · simp [hTcard, hTH]

/-- A corollary of **Sylow's first theorem**. If `p ^ n` divides the order of the group, then
there is a tower of subgroups of orders `p ^ 0, …, p ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b64a56e684a27db95e3f25558fcd30be78a6dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
