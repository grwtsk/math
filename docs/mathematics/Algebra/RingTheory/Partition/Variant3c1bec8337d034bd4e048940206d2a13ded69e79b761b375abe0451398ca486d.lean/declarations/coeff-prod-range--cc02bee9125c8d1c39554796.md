# coeff_prod_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d86e97-51ff-2ff0-1713-2065e9a9a758",
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
  "slug": "coeff-prod-range--cc02bee9125c8d1c39554796",
  "source": {
    "blob": "fd3803481cce58398a936482e24df9e892c5ef87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 203,
    "path": "GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc02bee9125c8d1c39554796216ae84fc12c265cfc260f1dbac6562b65efc06a",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d86e97-51ff-2ff0-1713-2065e9a9a758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–237.

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

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3803481cce58398a936482e24df9e892c5ef87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
