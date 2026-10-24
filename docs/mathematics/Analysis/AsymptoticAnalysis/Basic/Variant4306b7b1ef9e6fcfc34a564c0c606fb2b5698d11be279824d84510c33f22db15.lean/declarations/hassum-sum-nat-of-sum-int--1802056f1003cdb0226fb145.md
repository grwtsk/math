# HasSum.sum_nat_of_sum_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0e89fb2-311c-cd69-e25d-19887113cb76",
  "kind": "theorem",
  "lexical_name": "HasSum.sum_nat_of_sum_int",
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
  "slug": "hassum-sum-nat-of-sum-int--1802056f1003cdb0226fb145",
  "source": {
    "blob": "f78c46547d30237abb1148ec1ac7495a4b28f744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1102,
    "line": 1048,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1802056f1003cdb0226fb1457035c5befb9bee452d1224820b46353008b4c549",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0e89fb2-311c-cd69-e25d-19887113cb76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1048–1102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSum.sum_nat_of_sum_int {α : Type*} [AddCommMonoid α] [TopologicalSpace α]
    [ContinuousAdd α] {a : α} {f : ℤ → α} (hf : HasSum f a) :
    HasSum (fun n : ℕ => f n + f (-n)) (a + f 0) := by
  apply (hf.add (hasSum_ite_eq (0 : ℤ) (f 0))).hasSum_of_sum_eq fun u => ?_
  refine' ⟨u.image Int.natAbs, fun v' hv' => _⟩
  let u1 := v'.image fun x : ℕ => (x : ℤ)
  let u2 := v'.image fun x : ℕ => -(x : ℤ)
  have A : u ⊆ u1 ∪ u2 := by
    intro x hx
    simp only [mem_union, mem_image, exists_prop]
    rcases le_total 0 x with (h'x | h'x)
    · left
      refine' ⟨Int.natAbs x, hv' _, _⟩
      · simp only [mem_image, exists_prop]
        exact ⟨x, hx, rfl⟩
      · simp only [h'x, Int.coe_natAbs, abs_eq_self]
    · right
      refine' ⟨Int.natAbs x, hv' _, _⟩
      · simp only [mem_image, exists_prop]
        exact ⟨x, hx, rfl⟩
      · simp only [abs_of_nonpos h'x, Int.coe_natAbs, neg_neg]
  refine' ⟨u1 ∪ u2, A, _⟩
  calc
    (∑ x in u1 ∪ u2, (f x + ite (x = 0) (f 0) 0)) =
        (∑ x in u1 ∪ u2, f x) + ∑ x in u1 ∩ u2, f x := by
      rw [sum_add_distrib]
      congr 1
      refine' (sum_subset_zero_on_sdiff inter_subset_union _ _).symm
      · intro x hx
        suffices x ≠ 0 by simp only [this, if_false]
        rintro rfl
        simp at hx
      · intro x hx
        simp only [mem_inter, mem_image, exists_prop] at hx
        have : x = 0 := by
          apply le_antisymm
          · rcases hx.2 with ⟨a, _, rfl⟩
            simp only [Right.neg_nonpos_iff, Nat.cast_nonneg]
          · rcases hx.1 with ⟨a, _, rfl⟩
            simp only [Nat.cast_nonneg]
        simp only [this, eq_self_iff_true, if_true]
    _ = (∑ x in u1, f x) + ∑ x in u2, f x := sum_union_inter
    _ = (∑ b in v', f b) + ∑ b in v', f (-b) := by simp
    _ = ∑ b in v', (f b + f (-b)) := sum_add_distrib.symm
#align has_sum.sum_nat_of_sum_int HasSum.sum_nat_of_sum_int

end Nat

end TopologicalGroup

section UniformGroup

variable [AddCommGroup α] [UniformSpace α]

/-- The **Cauchy criterion** for infinite sums, also known as the **Cauchy convergence test** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean#L1048).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f78c46547d30237abb1148ec1ac7495a4b28f744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
