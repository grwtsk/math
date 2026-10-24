# coeff_prod_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06eca4e9e8f5368c23adfa93631e01d414ce4755",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db6b5a12-fec1-2986-e9c6-09049270c086",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f06cebe-b435-7ab6-c858-98cda4286d99",
  "kind": "theorem",
  "lexical_name": "coeff_prod_range",
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
  "slug": "coeff-prod-range--ef7cc126cd3f912b556a97da",
  "source": {
    "blob": "06eca4e9e8f5368c23adfa93631e01d414ce4755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 195,
    "path": "GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7cc126cd3f912b556a97dae0de95c60210eb0e96c7ed5f419dd149cd388fdb",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f06cebe-b435-7ab6-c858-98cda4286d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_prod_range [CommSemiring α] {ι : Type _} (s : Finset ι) (f : ι → PowerSeries α)
    (n : ℕ) : coeff α n (∏ j in s, f j) = ∑ l in cut s n, ∏ i in s, coeff α (l i) (f i) := by
  revert n
  induction s using Finset.induction_on with
  | empty =>
    rintro ⟨_ | n⟩
    · simp
    simp [cut_empty_succ, if_neg (Nat.succ_ne_zero _)]
  | @insert a s hi ih =>
    intro n
    rw [cut_insert _ _ _ hi, prod_insert hi, coeff_mul, sum_biUnion]
    · congr with i
      simp only [sum_map, Pi.add_apply, Function.Embedding.coeFn_mk, prod_insert hi, if_pos rfl, ih,
        mul_sum]
      apply sum_congr rfl _
      intro x hx
      rw [mem_cut] at hx
      rw [hx.2 a hi, zero_add]
      congr 1
      apply prod_congr rfl
      intro k hk
      rw [if_neg, add_zero]
      exact ne_of_mem_of_not_mem hk hi
    · simp only [Set.PairwiseDisjoint, Set.Pairwise, Prod.forall, not_and, Ne.def,
        Nat.mem_antidiagonal, disjoint_left, mem_map, exists_prop, Function.Embedding.coeFn_mk,
        exists_imp, not_exists, Finset.mem_coe, Function.onFun, mem_cut, and_imp]
      rintro p₁ q₁ rfl p₂ q₂ h t x p hp _ hp3 q hq _ hq3
      have z := hp3.trans hq3.symm
      have := sum_congr (Eq.refl s) fun x _ => Function.funext_iff.1 z x
      obtain rfl : q₁ = q₂ := by simpa [sum_add_distrib, hp, hq, if_neg hi] using this
      obtain rfl : p₂ = p₁ := by simpa using h
      exact (t rfl).elim
#align theorems_100.coeff_prod_range Theorems100.coeff_prod_range

/-- A convenience constructor for the power series whose coefficients indicate a subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06eca4e9e8f5368c23adfa93631e01d414ce4755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
