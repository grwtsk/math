# closure_cycle_adjacent_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:061a6ba1-081c-cbe7-e0a0-689fa0861d39",
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
  "slug": "closure-cycle-adjacent-swap--e4c7f62b43c8b08c0cce0d1b",
  "source": {
    "blob": "e1236902e9efefc01e7cdb36701b03d0a12c6614",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 51,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4c7f62b43c8b08c0cce0d1bc2e518c425c855e74e0b1a77d8f7de01a1bd42ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:061a6ba1-081c-cbe7-e0a0-689fa0861d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_cycle_adjacent_swap {σ : Perm α} (h1 : IsCycle σ) (h2 : σ.support = univ) (x : α) :
    closure ({σ, swap x (σ x)} : Set (Perm α)) = ⊤ := by
  let H := closure ({σ, swap x (σ x)} : Set (Perm α))
  have h3 : σ ∈ H := subset_closure (Set.mem_insert σ _)
  have h4 : swap x (σ x) ∈ H := subset_closure (Set.mem_insert_of_mem _ (Set.mem_singleton _))
  have step1 : ∀ n : ℕ, swap ((σ ^ n) x) ((σ ^ (n + 1) : Perm α) x) ∈ H := by
    intro n
    induction n with
    | zero => exact subset_closure (Set.mem_insert_of_mem _ (Set.mem_singleton _))
    | succ n ih =>
      convert H.mul_mem (H.mul_mem h3 ih) (H.inv_mem h3)
      simp_rw [mul_swap_eq_swap_mul, mul_inv_cancel_right, pow_succ', coe_mul, comp_apply]
  have step2 : ∀ n : ℕ, swap x ((σ ^ n) x) ∈ H := by
    intro n
    induction n with
    | zero =>
      simp only [pow_zero, coe_one, id_eq, swap_self, Set.mem_singleton_iff]
      convert H.one_mem
    | succ n ih =>
      by_cases h5 : x = (σ ^ n) x
      · rw [pow_succ', mul_apply, ← h5]
        exact h4
      by_cases h6 : x = (σ ^ (n + 1) : Perm α) x
      · rw [← h6, swap_self]
        exact H.one_mem
      rw [swap_comm, ← swap_mul_swap_mul_swap h5 h6]
      exact H.mul_mem (H.mul_mem (step1 n) ih) (step1 n)
  have step3 : ∀ y : α, swap x y ∈ H := by
    intro y
    have hx : x ∈ univ := Finset.mem_univ x
    rw [← h2, mem_support] at hx
    have hy : y ∈ univ := Finset.mem_univ y
    rw [← h2, mem_support] at hy
    obtain ⟨n, hn⟩ := IsCycle.exists_pow_eq h1 hx hy
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1236902e9efefc01e7cdb36701b03d0a12c6614` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
