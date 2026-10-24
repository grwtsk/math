# exists_isSemilinearSet_setOfPred_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaf0a602-4f7b-3295-4509-a1c45b5b5ab3",
  "kind": "theorem",
  "lexical_name": "exists_isSemilinearSet_setOfPred_le",
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
  "slug": "exists-issemilinearset-setofpred-le--c98237cf3582fc25c2b5548b",
  "source": {
    "blob": "e95208e3ec8ffcc28574b45cda7d44c2cc312c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c98237cf3582fc25c2b5548b4d10e8900815c254a7cc957eb4d2daa6132f2e01",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaf0a602-4f7b-3295-4509-a1c45b5b5ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_isSemilinearSet_setOfPred_le {s : Set M} (hs : IsSlice s)
    (hs' : s.Nonempty) :
    ∃ x ∈ s, IsSemilinearSet { y ∈ s | x ≤ y } := by
  classical
  let f (x : M) : AddSubmonoid M :=
    if hx : x ∈ s then
      { carrier := { y | x + y ∈ s }
        zero_mem' := by simpa
        add_mem' := by
          intro a b ha hb
          simp only [mem_ofPred_eq] at *
          rw [← add_assoc]
          exact hs _ hx _ _ ha hb }
    else ⊥
  have hf : ∀ x ∈ s, ∀ y, y ∈ f x ↔ x + y ∈ s := by simp_all [f]
  let g (x : M) : AddSemigroupIdeal M := .closure (f x \ {0})
  have hg : ∀ x ∈ s, ∀ y ∈ s, x ≤ y → g x ≤ g y := by
    intro x hx y hy hxy z hz
    rw [le_iff_exists_add] at hxy
    rcases hxy with ⟨y, rfl⟩
    simp only [AddSemigroupIdeal.mem_closure'', mem_sdiff, SetLike.mem_coe, mem_singleton_iff,
      g] at hz ⊢
    rcases hz with ⟨y', z, ⟨hz₁, hz₂⟩, rfl⟩
    rw [hf _ hx] at hz₁
    refine ⟨y', z, ⟨?_, hz₂⟩, rfl⟩
    rw [hf _ hy]
    exact hs _ hx _ _ hy hz₁
  rcases exists_maximalFor_of_wellFoundedGT (· ∈ s) g hs' with ⟨a, ha⟩
  refine ⟨a, ha.1, ?_⟩
  convert_to IsSemilinearSet (a +ᵥ (f a : Set M))
  · ext x
    simp only [le_iff_exists_add, mem_ofPred_eq, ha.1, ↓reduceDIte, coe_set_mk,
      AddSubsemigroup.coe_set_mk, mem_vadd_set, vadd_eq_add, f]
    grind
  · refine IsSemilinearSet.vadd a (.of_fg (AddSubmonoid.fg_of_subtractive ?_))
    intro x hx y hxy
    rw [hf _ ha.1] at hx
    rw [hf _ ha.1, ← add_assoc] at hxy
    by_cases hy : y = 0
    · simp [hy]
    replace hy : y ∈ g (a + x) := by
      apply AddSemigroupIdeal.subset_closure
      refine Set.mem_sdiff_of_mem ?_ hy
      rwa [SetLike.mem_coe, hf _ hx]
    apply ha.2 hx (hg _ ha.1 _ hx le_self_add) at hy
    simp only [g, AddSemigroupIdeal.mem_closure'', Set.mem_sdiff, SetLike.mem_coe,
      Set.notMem_singleton_iff] at hy
    rcases hy with ⟨w, u, ⟨hu₁, hu₂⟩, rfl⟩
    induction w using WellQuasiOrderedLE.to_wellFoundedLT.induction (α := M) generalizing u with
      | _ w ih
    by_cases hw₁ : w = 0
    · simpa [hw₁]
    have hxu : a + x + u ∈ s := hs _ ha.1 _ _ hx (by rwa [hf _ ha.1] at hu₁)
    have hw₂ : w ∈ g (a + x + u) := by
      apply AddSemigroupIdeal.subset_closure
      refine Set.mem_sdiff_of_mem ?_ hw₁
      rwa [SetLike.mem_coe, hf _ hxu, add_assoc, add_comm u w]
    apply ha.2 hxu (hg _ ha.1 _ hxu (le_add_right le_self_add)) at hw₂
    simp only [g, AddSemigroupIdeal.mem_closure'', Set.mem_sdiff, SetLike.mem_coe,
      Set.notMem_singleton_iff] at hw₂
    rcases hw₂ with ⟨w', u', ⟨hu'₁, hu'₂⟩, rfl⟩
    rw [add_assoc]
    apply ih
    · exact lt_add_of_pos_right _ (pos_of_ne_zero hu'₂)
    · exact add_mem hu'₁ hu₁
    · simp [hu₂, hu'₂]
    · rwa [← add_assoc w']

end IsSlice

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95208e3ec8ffcc28574b45cda7d44c2cc312c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
