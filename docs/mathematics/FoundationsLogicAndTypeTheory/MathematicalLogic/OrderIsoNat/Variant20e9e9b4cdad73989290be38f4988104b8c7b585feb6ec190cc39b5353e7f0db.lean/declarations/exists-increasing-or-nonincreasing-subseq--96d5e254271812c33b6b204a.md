# exists_increasing_or_nonincreasing_subseq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0aa729a63612b8d577bb05dfc5c1bb6966e2524",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2da3084-9a56-a49b-3841-0996d7d65403",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4398fb9b-9577-6cc9-765d-1b16f2e47b64",
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
  "slug": "exists-increasing-or-nonincreasing-subseq--96d5e254271812c33b6b204a",
  "source": {
    "blob": "c0aa729a63612b8d577bb05dfc5c1bb6966e2524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96d5e254271812c33b6b204a356c87d6a99a1deeb23c9f302e6c7d625506d437",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4398fb9b-9577-6cc9-765d-1b16f2e47b64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_increasing_or_nonincreasing_subseq' (r : α → α → Prop) (f : ℕ → α) :
    ∃ g : ℕ ↪o ℕ,
      (∀ n : ℕ, r (f (g n)) (f (g (n + 1)))) ∨ ∀ m n : ℕ, m < n → ¬r (f (g m)) (f (g n)) := by
  classical
    let bad : Set ℕ := { m | ∀ n, m < n → ¬r (f m) (f n) }
    by_cases hbad : Infinite bad
    · haveI := hbad
      refine ⟨Nat.orderEmbeddingOfSet bad, Or.intro_right _ fun m n mn => ?_⟩
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
        simp only [bad, exists_prop, not_not, Set.mem_setOf_eq, not_forall] at h
        obtain ⟨n', hn1, hn2⟩ := h
        refine ⟨n + n' - n - m, by omega, ?_⟩
        convert hn2
        omega
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0aa729a63612b8d577bb05dfc5c1bb6966e2524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
