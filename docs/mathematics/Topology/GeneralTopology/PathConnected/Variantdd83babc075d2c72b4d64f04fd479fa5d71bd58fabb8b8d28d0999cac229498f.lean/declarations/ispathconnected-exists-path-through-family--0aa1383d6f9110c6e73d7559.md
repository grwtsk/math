# IsPathConnected.exists_path_through_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f79ff3e521956a45c84342dd1cf5b96187dc336a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1010,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88b7b75d-0911-3270-ba41-2eea66cff9e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94a62c22-116a-afaf-2dbc-8e12b4afde1e",
  "kind": "theorem",
  "lexical_name": "IsPathConnected.exists_path_through_family",
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
  "slug": "ispathconnected-exists-path-through-family--0aa1383d6f9110c6e73d7559",
  "source": {
    "blob": "f79ff3e521956a45c84342dd1cf5b96187dc336a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1065,
    "line": 1010,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aa1383d6f9110c6e73d7559f1c66a789de910a4ba07588d458ca457b35728a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a62c22-116a-afaf-2dbc-8e12b4afde1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1010–1065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPathConnected.exists_path_through_family {X : Type*} [TopologicalSpace X] {n : ℕ}
    {s : Set X} (h : IsPathConnected s) (p : Fin (n + 1) → X) (hp : ∀ i, p i ∈ s) :
    ∃ γ : Path (p 0) (p n), range γ ⊆ s ∧ ∀ i, p i ∈ range γ := by
  let p' : ℕ → X := fun k => if h : k < n + 1 then p ⟨k, h⟩ else p ⟨0, n.zero_lt_succ⟩
  obtain ⟨γ, hγ⟩ : ∃ γ : Path (p' 0) (p' n), (∀ i ≤ n, p' i ∈ range γ) ∧ range γ ⊆ s := by
    have hp' : ∀ i ≤ n, p' i ∈ s := by
      intro i hi
      simp [Nat.lt_succ_of_le hi, hp]
    clear_value p'
    clear hp p
    induction' n with n hn
    · use Path.refl (p' 0)
      · constructor
        · rintro i hi
          rw [le_zero_iff.mp hi]
          exact ⟨0, rfl⟩
        · rw [range_subset_iff]
          rintro _x
          exact hp' 0 le_rfl
    · rcases hn fun i hi => hp' i <| Nat.le_succ_of_le hi with ⟨γ₀, hγ₀⟩
      rcases h.joinedIn (p' n) (hp' n n.le_succ) (p' <| n + 1) (hp' (n + 1) <| le_rfl) with
        ⟨γ₁, hγ₁⟩
      let γ : Path (p' 0) (p' <| n + 1) := γ₀.trans γ₁
      use γ
      have range_eq : range γ = range γ₀ ∪ range γ₁ := γ₀.trans_range γ₁
      constructor
      · rintro i hi
        by_cases hi' : i ≤ n
        · rw [range_eq]
          left
          exact hγ₀.1 i hi'
        · rw [not_le, ← Nat.succ_le_iff] at hi'
          have : i = n.succ := le_antisymm hi hi'
          rw [this]
          use 1
          exact γ.target
      · rw [range_eq]
        apply union_subset hγ₀.2
        rw [range_subset_iff]
        exact hγ₁
  have hpp' : ∀ k < n + 1, p k = p' k := by
    intro k hk
    simp only [hk, dif_pos]
    congr
    ext
    rw [Fin.val_cast_of_lt hk]
  use γ.cast (hpp' 0 n.zero_lt_succ) (hpp' n n.lt_succ_self)
  simp only [γ.cast_coe]
  refine' And.intro hγ.2 _
  rintro ⟨i, hi⟩
  suffices p ⟨i, hi⟩ = p' i by convert hγ.1 i (Nat.le_of_lt_succ hi)
  rw [← hpp' i hi]
  suffices i = i % n.succ by congr
  rw [Nat.mod_eq_of_lt hi]
#align is_path_connected.exists_path_through_family IsPathConnected.exists_path_through_family

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean#L1010).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f79ff3e521956a45c84342dd1cf5b96187dc336a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
