# Submonoid.closure_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24ae56ff-f70c-a6a0-4afd-e6d04e43608e",
  "kind": "lemma",
  "lexical_name": "Submonoid.closure_irreducible",
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
  "slug": "submonoid-closure-irreducible--f4062d210990a294999a0506",
  "source": {
    "blob": "3f210cc8fd07e86f4f86d714d002b31c553960d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4062d210990a294999a05062f76d8bc15c26685219c2e4397a038f47bee8ec5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24ae56ff-f70c-a6a0-4afd-e6d04e43608e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submonoid.closure_irreducible [Monoid.FG M] :
    Submonoid.closure {p : M | Irreducible p} = ⊤ := by
  classical
  -- Pick a minimal set `S` generating `M`.
  obtain ⟨S, hSgen, hSmax⟩ := Submonoid.exists_minimal_closure_eq_top M
  -- We claim that `S` is the set of irreducible elements of `M`.
  convert! hSgen
  -- We already know that `S` contains all irreducible elements...
  refine (irreducible_subset_of_submonoidClosure_eq_top hSgen).antisymm fun r hrS ↦ ?_
  -- So let us for contradiction assume that `r ∈ S` is reducible.
  by_contra hrirred
  -- If `r = 1`, then `S` isn't minimal. Contradiction.
  obtain rfl | hr₀ := eq_or_ne r 1
  · simpa using hSmax (y := S \ {1}) (by simpa) Finset.sdiff_subset hrS
  -- Else find `a`, `b` non-units such that `a * b = r`.
  simp only [irreducible_iff, Set.mem_ofPred_eq, not_and, not_forall, not_or] at hrirred
  obtain ⟨a, b, hr, ha, hb⟩ := hrirred <| by simpa
  -- Write `a = ∏ s ∈ S, s ^ m s`, `b = ∏ s ∈ S, s ^ n s` for some coefficients `m`, `n`.
  obtain ⟨m, -, hm⟩ := Submonoid.mem_closure_finset (x := a).mp (by rw [hSgen]; exact mem_top _)
  obtain ⟨n, -, hn⟩ := Submonoid.mem_closure_finset (x := b).mp (by rw [hSgen]; exact mem_top _)
  -- Single out the `r` term in the two products.
  replace hm : a = r ^ m r * ∏ s ∈ S \ {r}, s ^ m s := by
    rw [← hm, Finset.sdiff_singleton_eq_erase, ← Finset.mul_prod_erase _ _ hrS]
  replace hn : b = r ^ n r * ∏ s ∈ S \ {r}, s ^ n s := by
    rw [← hn, Finset.sdiff_singleton_eq_erase, ← Finset.mul_prod_erase _ _ hrS]
  -- Multiply the two equations together to write `r` as a power (namely `m r + n r`) of itself
  -- times a product of elements of `S \ {r}` (namely `∏ s ∈ S \ {r}, s ^ (m s + n s)`).
  have hr' : r = r ^ (m r + n r) * (∏ s ∈ S \ {r}, s ^ m s) * ∏ s ∈ S \ {r}, s ^ n s := by
    rwa [pow_add, mul_assoc, mul_assoc, ← mul_assoc (r ^ n r), mul_comm (r ^ n r) _, mul_assoc,
      ← hn, ← mul_assoc, ← hm]
  -- Case on whether that power is `0`, `1` or at least `2`.
  match hr : m r + n r with
  -- If that power is `0`, then `r` can be written as a product of elements of `S \ {r}` and `S` was
  -- not minimal. Contradiction.
  | 0 =>
    have : ({r} : Set M) ⊆ closure (S \ {r}) := by
      simp only [hr, pow_zero, one_mul] at hr'
      rw [hr', Set.singleton_subset_iff]
      refine mul_mem ?_ ?_ <;> refine prod_mem _ fun s hs ↦ pow_mem (subset_closure ?_) _ <;>
        rw [← hr'] <;> simpa using hs
    specialize hSmax (y := S \ {r}) (by simp [Submonoid.closure_sdiff_eq_closure this, hSgen])
      Finset.sdiff_subset
    simpa using hSmax hrS
  -- Assume that power is `1`.
  | 1 =>
    -- By cancelling on both sides we get `∏ s ∈ S \ {r}, s ^ (m s + n s) = 1`.
    simp only [hr, pow_one, mul_assoc, eq_comm (a := r), mul_eq_left, mul_eq_one,
      Finset.prod_eq_one_iff] at hr'
    -- Since `M` has a single unit, this means that
    -- `∏ s ∈ S \ {r}, s ^ m s = ∏ s ∈ S \ {r}, s ^ n s = 1`.
    -- Furthermore, `m r + n r = 1` implies that one of `m r` or `n r` is zero.
    -- Therefore one of `a` or `b` is `1`, contradicting the fact that they are non-units.
    obtain h | h : m r = 0 ∨ n r = 0 := by lia
    · obtain rfl : a = 1 := by simpa [h, Finset.prod_eq_one hr'.1] using hm
      simp at ha
    · obtain rfl : b = 1 := by simpa [h, Finset.prod_eq_one hr'.2] using hn
      simp at hb
  -- If that power is at least `2`, then we can write `1` as `r` times something.
  -- Since `M` has a single unit, this means that `r = 1`. Contradiction.
  | N + 2 => simp [hr, hr₀, pow_add, mul_assoc, mul_left_comm] at hr'

end CancelCommMonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f210cc8fd07e86f4f86d714d002b31c553960d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
