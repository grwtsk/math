# range_cut_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:044adee6-b3b9-14a0-1a6e-02ed58aebeea",
  "kind": "lemma",
  "lexical_name": "range_cut_partition",
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
  "slug": "range-cut-partition--0a223317dc2b0c5319eca151",
  "source": {
    "blob": "f9230d0e1cf3676bffc7b702877c6614d6fc8e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a223317dc2b0c5319eca15147e2ce197798eb65c66a92ec149e522671b44b20",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:044adee6-b3b9-14a0-1a6e-02ed58aebeea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_cut_partition (f : C_c(X, ℝ)) (a : ℝ) {ε : ℝ} (hε : 0 < ε) (N : ℕ)
    (hf : range f ⊆ Ioo a (a + N * ε)) : ∃ (E : Fin N → Set X), tsupport f = ⋃ j, E j ∧
    univ.PairwiseDisjoint E ∧ (∀ n : Fin N, ∀ x ∈ E n, a + ε * n < f x ∧ f x ≤ a + ε * (n + 1)) ∧
    ∀ n : Fin N, MeasurableSet (E n) := by
  let b := a + N * ε
  let y : Fin N → ℝ := fun n ↦ a + ε * (n + 1)
  -- By definition `y n` and `y m` are separated by at least `ε`.
  have hy {n m : Fin N} (h : n < m) : y n + ε ≤ y m := calc
    _ ≤ a + ε * m + ε := by
      exact add_le_add_three (by rfl) ((mul_le_mul_iff_of_pos_left hε).mpr (by norm_cast)) (by rfl)
    _ = _ := by dsimp [y]; rw [mul_add, mul_one, add_assoc]
  -- Define `E n` as the inverse image of the interval `(y n - ε, y n]`.
  let E (n : Fin N) := (f ⁻¹' Ioc (y n - ε) (y n)) ∩ (tsupport f)
  use E
  refine ⟨?_, ?_, ?_, ?_⟩
  · -- The sets `E n` are a partition of the support of `f`.
    have partition_aux : range f ⊆ ⋃ n, Ioc (y n - ε) (y n) := calc
      _ ⊆ Ioc (a + (0 : ℕ) * ε) (a + N * ε) := by
        intro _ hz
        simpa using Ioo_subset_Ioc_self (hf hz)
      _ ⊆ ⋃ i ∈ Finset.range N, Ioc (a + ↑i * ε) (a + ↑(i + 1) * ε) :=
        Ioc_subset_biUnion_Ioc N (fun n ↦ a + n * ε)
      _ ⊆ _ := by
        intro z
        simp only [Finset.mem_range, mem_iUnion, mem_Ioc, forall_exists_index, and_imp, y]
        refine fun n hn _ _ ↦ ⟨⟨n, hn⟩, ⟨by linarith, by simp_all [mul_comm ε _]⟩⟩
    simp only [E, ← iUnion_inter, ← preimage_iUnion, eq_comm (a := tsupport _), inter_eq_right]
    exact fun x _ ↦ partition_aux (mem_range_self x)
  · -- The sets `E n` are pairwise disjoint.
    intro m _ n _ hmn
    apply Disjoint.preimage
    simp_rw [mem_preimage, mem_Ioc, disjoint_left]
    intro x hx
    rw [mem_setOf_eq, and_assoc] at hx
    simp_rw [mem_setOf_eq, not_and_or, not_lt, not_le, or_assoc]
    rcases (by omega : m < n ∨ n < m) with hc | hc
    · left
      exact le_trans hx.2.1 (le_tsub_of_add_le_right (hy hc))
    · right; left
      exact lt_of_le_of_lt (le_tsub_of_add_le_right (hy hc)) hx.1
  · -- Upper and lower bound on `f x` follow from the definition of `E n` .
    intro _ _ hx
    simp only [mem_inter_iff, mem_preimage, mem_Ioc, E, y] at hx
    constructor <;> linarith
  · exact fun _ ↦ (f.1.measurable measurableSet_Ioc).inter measurableSet_closure

omit [LocallyCompactSpace X] in
/-- Given a set `E`, a function `f : C_c(X, ℝ)`, `0 < ε` and `∀ x ∈ E, f x < c`, there exists an
open set `V` such that `E ⊆ V` and the sets are similar in measure and `∀ x ∈ V, f x < c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9230d0e1cf3676bffc7b702877c6614d6fc8e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
