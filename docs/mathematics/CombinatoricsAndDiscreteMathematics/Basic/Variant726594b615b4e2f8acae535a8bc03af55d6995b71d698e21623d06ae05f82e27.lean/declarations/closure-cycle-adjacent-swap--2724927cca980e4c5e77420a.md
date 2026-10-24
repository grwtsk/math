# closure_cycle_adjacent_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f611b85-eef2-faa5-6385-43ca95d51428",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c1507b3-0c59-3db0-81b3-05b4cbce0594",
  "kind": "theorem",
  "lexical_name": "closure_cycle_adjacent_swap",
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
  "slug": "closure-cycle-adjacent-swap--2724927cca980e4c5e77420a",
  "source": {
    "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1662,
    "line": 1613,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2724927cca980e4c5e77420a790c404e9c70838a83309d3525dec92586f008e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c1507b3-0c59-3db0-81b3-05b4cbce0594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1613–1662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_cycle_adjacent_swap {σ : Perm α} (h1 : IsCycle σ) (h2 : σ.support = ⊤) (x : α) :
    closure ({σ, swap x (σ x)} : Set (Perm α)) = ⊤ := by
  let H := closure ({σ, swap x (σ x)} : Set (Perm α))
  have h3 : σ ∈ H := subset_closure (Set.mem_insert σ _)
  have h4 : swap x (σ x) ∈ H := subset_closure (Set.mem_insert_of_mem _ (Set.mem_singleton _))
  have step1 : ∀ n : ℕ, swap ((σ ^ n) x) ((σ ^ (n + 1) : Perm α) x) ∈ H := by
    intro n
    induction' n with n ih
    · exact subset_closure (Set.mem_insert_of_mem _ (Set.mem_singleton _))
    · convert H.mul_mem (H.mul_mem h3 ih) (H.inv_mem h3)
      simp_rw [mul_swap_eq_swap_mul, mul_inv_cancel_right, pow_succ]
      rfl
  have step2 : ∀ n : ℕ, swap x ((σ ^ n) x) ∈ H := by
    intro n
    induction' n with n ih
    · simp only [Nat.zero_eq, pow_zero, coe_one, id_eq, swap_self, Set.mem_singleton_iff]
      convert H.one_mem
    · by_cases h5 : x = (σ ^ n) x
      · rw [pow_succ, mul_apply, ← h5]
        exact h4
      by_cases h6 : x = (σ ^ (n + 1) : Perm α) x
      · rw [← h6, swap_self]
        exact H.one_mem
      rw [swap_comm, ← swap_mul_swap_mul_swap h5 h6]
      exact H.mul_mem (H.mul_mem (step1 n) ih) (step1 n)
  have step3 : ∀ y : α, swap x y ∈ H := by
    intro y
    have hx : x ∈ (⊤ : Finset α) := Finset.mem_univ x
    rw [← h2, mem_support] at hx
    have hy : y ∈ (⊤ : Finset α) := Finset.mem_univ y
    rw [← h2, mem_support] at hy
    cases' IsCycle.exists_pow_eq h1 hx hy with n hn
    rw [← hn]
    exact step2 n
  have step4 : ∀ y z : α, swap y z ∈ H := by
    intro y z
    by_cases h5 : z = x
    · rw [h5, swap_comm]
      exact step3 y
    by_cases h6 : z = y
    · rw [h6, swap_self]
      exact H.one_mem
    rw [← swap_mul_swap_mul_swap h5 h6, swap_comm z x]
    exact H.mul_mem (H.mul_mem (step3 y) (step3 z)) (step3 y)
  rw [eq_top_iff, ← closure_isSwap, closure_le]
  rintro τ ⟨y, z, _, h6⟩
  rw [h6]
  exact step4 y z
#align equiv.perm.closure_cycle_adjacent_swap Equiv.Perm.closure_cycle_adjacent_swap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean#L1613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2605e1918b96eecdca633b14ca542208f1b1c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
