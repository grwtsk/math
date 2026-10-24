# exists_increasing_or_nonincreasing_subseq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "178cdccc09f1bfd2961ed486fadfa9115e492d77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d05d7fa-cda6-195e-1baf-33d7c37e9ea1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3a4f328-1d4c-6f50-f273-63bb18132356",
  "kind": "theorem",
  "lexical_name": "exists_increasing_or_nonincreasing_subseq'",
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
  "slug": "exists-increasing-or-nonincreasing-subseq--6abc97fe3b3e02d1ca90f26a",
  "source": {
    "blob": "178cdccc09f1bfd2961ed486fadfa9115e492d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6abc97fe3b3e02d1ca90f26a29f2127b3e421bed35175093af54363f065aee24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3a4f328-1d4c-6f50-f273-63bb18132356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_increasing_or_nonincreasing_subseq' (r : α → α → Prop) (f : ℕ → α) :
    ∃ g : ℕ ↪o ℕ,
      (∀ n : ℕ, r (f (g n)) (f (g (n + 1)))) ∨ ∀ m n : ℕ, m < n → ¬r (f (g m)) (f (g n)) := by
  classical
    let bad : Set ℕ := { m | ∀ n, m < n → ¬r (f m) (f n) }
    by_cases hbad : Infinite bad
    · refine ⟨Nat.orderEmbeddingOfSet bad, Or.intro_right _ fun m n mn => ?_⟩
      have h := @Set.mem_range_self _ _ ↑(Nat.orderEmbeddingOfSet bad) m
      rw [Nat.orderEmbeddingOfSet_range bad] at h
      exact h _ ((OrderEmbedding.lt_iff_lt _).2 mn)
    · rw [Set.infinite_coe_iff, Set.Infinite, not_not] at hbad
      obtain ⟨m, hm⟩ : ∃ m, ∀ n, m ≤ n → n ∉ bad := by
        by_cases he : hbad.toFinset.Nonempty
        · refine
            ⟨(hbad.toFinset.max' he).succ, fun n hn nbad =>
              Nat.not_succ_le_self _
                (hn.trans (hbad.toFinset.le_max' n (hbad.mem_toFinset.2 nbad)))⟩
        · exact ⟨0, fun n _ nbad => he ⟨n, hbad.mem_toFinset.2 nbad⟩⟩
      have h : ∀ n : ℕ, ∃ n' : ℕ, n < n' ∧ r (f (n + m)) (f (n' + m)) := by
        intro n
        have h := hm _ (Nat.le_add_left m n)
        simp only [bad, exists_prop, not_not, Set.mem_ofPred_eq, not_forall] at h
        obtain ⟨n', hn1, hn2⟩ := h
        refine ⟨n + n' - n - m, by lia, ?_⟩
        convert! hn2
        lia
      let g' : ℕ → ℕ := @Nat.rec (fun _ => ℕ) m fun n gn => Nat.find (h gn)
      exact
        ⟨(RelEmbedding.natLT (fun n => g' n + m) fun n =>
              Nat.add_lt_add_right (Nat.find_spec (h (g' n))).1 m).orderEmbeddingOfLTEmbedding,
          Or.intro_left _ fun n => (Nat.find_spec (h (g' n))).2⟩

/-- This is the infinitary Erdős–Szekeres theorem, and an important lemma in the usual proof of
Bolzano-Weierstrass for `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `178cdccc09f1bfd2961ed486fadfa9115e492d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
