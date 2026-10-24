# convexHull_range_eq_exists_affineCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6fdd4f6-25a1-9a24-eff7-8aafca7fde60",
  "kind": "theorem",
  "lexical_name": "convexHull_range_eq_exists_affineCombination",
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
  "slug": "convexhull-range-eq-exists-affinecombination--5de73cd0b54b16c62db5e7bb",
  "source": {
    "blob": "7b545e4be70920659c08118cd45bade7baf94040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 281,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de73cd0b54b16c62db5e7bb41526d4243b016da191c5c60be7f99f0d56666cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6fdd4f6-25a1-9a24-eff7-8aafca7fde60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_range_eq_exists_affineCombination (v : ι → E) : convexHull R (range v) =
    { x | ∃ (s : Finset ι) (w : ι → R), (∀ i ∈ s, 0 ≤ w i) ∧ s.sum w = 1 ∧
      s.affineCombination R v w = x } := by
  classical
  refine Subset.antisymm (convexHull_min ?_ ?_) ?_
  · intro x hx
    obtain ⟨i, hi⟩ := Set.mem_range.mp hx
    exact ⟨{i}, Function.const ι (1 : R), by simp, by simp, by simp [hi]⟩
  · rintro x ⟨s, w, hw₀, hw₁, rfl⟩ y ⟨s', w', hw₀', hw₁', rfl⟩ a b ha hb hab
    let W : ι → R := fun i => (if i ∈ s then a * w i else 0) + if i ∈ s' then b * w' i else 0
    have hW₁ : (s ∪ s').sum W = 1 := by
      rw [sum_add_distrib, ← sum_subset subset_union_left,
        ← sum_subset subset_union_right, sum_ite_of_true,
        sum_ite_of_true, ← mul_sum, ← mul_sum, hw₁, hw₁', ← add_mul, hab,
        mul_one] <;> intros <;> simp_all
    refine ⟨s ∪ s', W, ?_, hW₁, ?_⟩
    · rintro i -
      by_cases hi : i ∈ s <;> by_cases hi' : i ∈ s' <;>
        simp [W, hi, hi', add_nonneg, mul_nonneg ha (hw₀ i _), mul_nonneg hb (hw₀' i _)]
    · simp_rw [W, affineCombination_eq_linear_combination (s ∪ s') v _ hW₁,
        affineCombination_eq_linear_combination s v w hw₁,
        affineCombination_eq_linear_combination s' v w' hw₁', add_smul, sum_add_distrib]
      rw [← sum_subset subset_union_left, ← sum_subset subset_union_right]
      · simp only [ite_smul, sum_ite_of_true fun _ hi => hi, mul_smul, ← smul_sum]
      · intro i _ hi'
        simp [hi']
      · intro i _ hi'
        simp [hi']
  · rintro x ⟨s, w, hw₀, hw₁, rfl⟩
    exact affineCombination_mem_convexHull hw₀ hw₁

/--
Convex hull of `s` is equal to the set of all centers of masses of `Finset`s `t`, `z '' t ⊆ s`.
For universe reasons, you shouldn't use this lemma to prove that a given center of mass belongs
to the convex hull. Use convexity of the convex hull instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b545e4be70920659c08118cd45bade7baf94040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
