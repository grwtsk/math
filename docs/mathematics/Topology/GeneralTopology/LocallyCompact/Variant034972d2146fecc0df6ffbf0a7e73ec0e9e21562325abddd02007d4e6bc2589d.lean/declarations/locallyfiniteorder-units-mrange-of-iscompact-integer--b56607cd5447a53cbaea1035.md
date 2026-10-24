# locallyFiniteOrder_units_mrange_of_isCompact_integer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cfe8b70-a686-f42c-f8c0-84aed69efad8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:926b5db2-a344-c782-9a0a-18fc24573956",
  "kind": "lemma",
  "lexical_name": "locallyFiniteOrder_units_mrange_of_isCompact_integer",
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
  "slug": "locallyfiniteorder-units-mrange-of-iscompact-integer--b56607cd5447a53cbaea1035",
  "source": {
    "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b56607cd5447a53cbaea1035610ebca5ec7cdf416b90687468fd4c28f332e58f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:926b5db2-a344-c782-9a0a-18fc24573956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locallyFiniteOrder_units_mrange_of_isCompact_integer (hc : IsCompact (X := K) 𝒪[K]) :
    Nonempty (LocallyFiniteOrder (MonoidHom.mrange (Valued.v : Valuation K Γ₀))ˣ) := by
  -- This `change` line will become unnecessary once `MonoidHom.mrange` accepts `MonoidHom`
  -- directly instead of a `MonoidHomClass` instance.
  change Nonempty (LocallyFiniteOrder (MonoidHom.mrange
      (MonoidWithZeroHom.ofClass (Valued.v (R := K))))ˣ)
  -- TODO: generalize to `Valuation.Integer`, which will require showing that `IsCompact`
  -- pulls back across `TopologicalSpace.induced` from a `LocallyCompactSpace`.
  constructor
  refine LocallyFiniteOrder.ofFiniteIcc ?_
  -- We only need to show that we can construct a finite set for some set between
  -- a non-zero `z : Γ₀` and 1, because we can scale/invert this set to cover the whole group.
  suffices ∀ z : (MonoidHom.mrange (MonoidWithZeroHom.ofClass (Valued.v (R := K))))ˣ,
      (Set.Icc z 1).Finite by
    rintro x y
    rcases lt_trichotomy y x with hxy | rfl | hxy
    · rw [Set.Icc_eq_empty_of_lt]
      · exact Set.finite_empty
      · simp [hxy]
    · simp
    wlog! h : x ≤ 1 generalizing x y
    · specialize this y⁻¹ x⁻¹ (inv_lt_inv' hxy) (inv_le_one_of_one_le (h.trans hxy).le)
      refine (this.inv).subset ?_
      rw [Set.inv_Icc]
      intro
      simp +contextual
    generalize_proofs _ _ _ _ hxu hyu
    rcases le_total y 1 with hy | hy
    · exact (this x).subset (Set.Icc_subset_Icc_right hy)
    · have H : (Set.Icc y⁻¹ 1).Finite := this _
      refine ((this x).union H.inv).subset (le_of_eq ?_)
      rw [Set.inv_Icc, inv_one, Set.Icc_union_Icc_eq_Icc] <;>
      simp [h, hy]
  -- We can construct a family of spheres at every single element of the valuation ring
  -- outside of a closed ball, which will cover.
  -- Since we are in a compact space, this cover has a finite subcover.
  -- First, we need to pick a threshold element with a nontrivial valuation less than 1,
  -- which will form -- the inner closed ball of the cover, which we need to cover 0.
  intro z
  obtain ⟨a, ha⟩ := z.val.prop
  rcases lt_or_ge 1 z with hz1 | hz1
  · rw [Set.Icc_eq_empty_of_lt]
    · exact Set.finite_empty
    · simp [hz1]
  have z0' : 0 < (z : MonoidHom.mrange (MonoidWithZeroHom.ofClass (Valued.v (R := K)))) := by simp
  have z0 : 0 < ((z : MonoidHom.mrange (MonoidWithZeroHom.ofClass (Valued.v (R := K)))) : Γ₀) :=
    Subtype.coe_lt_coe.mpr z0'
  have a0 : 0 < v a := by simpa [← ha] using z0
  -- Construct our cover, which has an inner closed ball, and spheres for each element
  -- outside of the closed ball. These are all open sets by the nonarchimedean property.
  let U : K → Set K := fun y ↦ if v (y : K) ≤ z
    then {w | v (w : K) ≤ z}
    else {w | v (w : K) = v (y : K)}
  have := hc.elim_finite_subcover U
  specialize this ?_ ?_
  · intro w
    simp only [U]
    split_ifs with hw
    · obtain ⟨b, hb⟩ := MonoidHom.mem_mrange.mp z.1.2
      rw [← hb] at z0 ⊢
      simp only [MonoidWithZeroHom.coe_ofClass, ← v.restrict_le_iff]
      refine Valued.isOpen_closedBall _ ?_
      rw [ne_eq, ← map_zero v.restrict, v.restrict_inj, map_zero]
      exact z0.ne'
    · simp_rw [← v.restrict_inj]
      refine Valued.isOpen_sphere _ ?_
      push Not at hw
      rw [← map_zero v.restrict, ne_eq, v.restrict_inj]
      refine (hw.trans' ?_).ne'
      simp [z0]
  · intro w
    simp only [integer, SetLike.mem_coe, Valuation.mem_integer_iff, Set.mem_iUnion, U]
    intro hw
    use if v w ≤ z then a else w
    split_ifs <;>
    simp_all
  -- For each element of the valuation ring that is bigger than our threshold element above,
  -- there must be something in the cover that has the precise valuation of the element,
  -- because it must be outside the inner closed ball, and thus is covered by some sphere.
  obtain ⟨t, ht⟩ := this
  refine (t.finite_toSet.dependent_image ?_).subset ?_
  · refine fun i hi ↦ if hi' : v i ≤ z then z else Units.mk0 ⟨(v i), by simp⟩ ?_
    push Not at hi'
    exact Subtype.coe_injective.ne_iff.mp (hi'.trans' z0).ne'
  · intro i
    simp only [Set.mem_Icc, Finset.mem_coe, exists_prop, Set.mem_ofPred_eq, and_imp]
    -- we get the `c` from the cover that covers our arbitrary `i` with its set
    obtain ⟨c, hc⟩ := i.val.prop
    intro hzi hi1
    have hj := ht (hc.trans_le hi1)
    simp only [Set.mem_iUnion, exists_prop, U] at hj
    obtain ⟨j, hj, hj'⟩ := hj
    use j, hj
    -- and this `c` is either less than or greater than (or equal to) the threshold element
    simp only [MonoidWithZeroHom.coe_ofClass] at hc
    split_ifs at hj' with hcj
    · simp only [Set.mem_ofPred_eq, hc, Subtype.coe_le_coe, Units.val_le_val] at hj'
      simp [hcj, le_antisymm hj' hzi]
    · simp only [Set.mem_ofPred_eq] at hj'
      rw [dite_eq_right hcj]
      simp [← hj', hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b10b0450b575b7fa75d3b4a0530403c61ed5040b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
