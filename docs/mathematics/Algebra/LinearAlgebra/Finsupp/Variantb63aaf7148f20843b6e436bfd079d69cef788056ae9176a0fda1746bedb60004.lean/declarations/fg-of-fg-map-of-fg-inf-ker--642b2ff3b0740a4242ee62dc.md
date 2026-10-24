# fg_of_fg_map_of_fg_inf_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e874c1e2-9d1c-e83b-de21-1c7992edc14a",
  "kind": "theorem",
  "lexical_name": "fg_of_fg_map_of_fg_inf_ker",
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
  "slug": "fg-of-fg-map-of-fg-inf-ker--642b2ff3b0740a4242ee62dc",
  "source": {
    "blob": "d2e7aed1ee7a4e68944b7214107d1859914cac15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:642b2ff3b0740a4242ee62dcea330b19092773499151c84bb76055f91f0c6781",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e874c1e2-9d1c-e83b-de21-1c7992edc14a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_of_fg_map_of_fg_inf_ker (f : M →ₗ[R] P) {s : Submodule R M}
    (hs1 : (s.map f).FG)
    (hs2 : (s ⊓ LinearMap.ker f).FG) : s.FG := by
  haveI := Classical.decEq R
  haveI := Classical.decEq M
  haveI := Classical.decEq P
  obtain ⟨t1, ht1⟩ := hs1
  obtain ⟨t2, ht2⟩ := hs2
  have : ∀ y ∈ t1, ∃ x ∈ s, f x = y := by
    intro y hy
    have : y ∈ s.map f := by
      rw [← ht1]
      exact subset_span hy
    rcases mem_map.1 this with ⟨x, hx1, hx2⟩
    exact ⟨x, hx1, hx2⟩
  have : ∃ g : P → M, ∀ y ∈ t1, g y ∈ s ∧ f (g y) = y := by
    choose g hg1 hg2 using this
    exists fun y => if H : y ∈ t1 then g y H else 0
    intro y H
    constructor
    · simp only [dif_pos H]
      apply hg1
    · simp only [dif_pos H]
      apply hg2
  obtain ⟨g, hg⟩ := this
  clear this
  exists t1.image g ∪ t2
  rw [Finset.coe_union, span_union, Finset.coe_image]
  apply le_antisymm
  · refine sup_le (span_le.2 <| image_subset_iff.2 ?_) (span_le.2 ?_)
    · intro y hy
      exact (hg y hy).1
    · intro x hx
      have : x ∈ span R t2 := subset_span hx
      rw [ht2] at this
      exact this.1
  intro x hx
  have : f x ∈ s.map f := by
    rw [mem_map]
    exact ⟨x, hx, rfl⟩
  rw [← ht1, ← Set.image_id (t1 : Set P), Finsupp.mem_span_image_iff_linearCombination] at this
  rcases this with ⟨l, hl1, hl2⟩
  refine
    mem_sup.2
      ⟨(linearCombination R id).toFun ((lmapDomain R R g : (P →₀ R) → M →₀ R) l), ?_,
        x - linearCombination R id ((lmapDomain R R g : (P →₀ R) → M →₀ R) l), ?_,
        add_sub_cancel _ _⟩
  · rw [← Set.image_id (g '' ↑t1), Finsupp.mem_span_image_iff_linearCombination]
    refine ⟨_, ?_, rfl⟩
    haveI : Inhabited P := ⟨0⟩
    rw [← Finsupp.lmapDomain_supported _ _ g, mem_map]
    refine ⟨l, hl1, ?_⟩
    rfl
  rw [ht2, mem_inf]
  constructor
  · apply s.sub_mem hx
    rw [Finsupp.linearCombination_apply, Finsupp.lmapDomain_apply, Finsupp.sum_mapDomain_index]
    · refine s.sum_mem ?_
      intro y hy
      exact s.smul_mem _ (hg y (hl1 hy)).1
    · exact zero_smul _
    · exact fun _ _ _ => add_smul _ _ _
  · rw [LinearMap.mem_ker, f.map_sub, ← hl2]
    rw [Finsupp.linearCombination_apply, Finsupp.linearCombination_apply, Finsupp.lmapDomain_apply]
    rw [Finsupp.sum_mapDomain_index, Finsupp.sum, Finsupp.sum, map_sum]
    · rw [sub_eq_zero]
      refine Finset.sum_congr rfl fun y hy => ?_
      unfold id
      rw [f.map_smul, (hg y (hl1 hy)).2]
    · exact zero_smul _
    · exact fun _ _ _ => add_smul _ _ _

/-- The kernel of the composition of two linear maps is finitely generated if both kernels are and
the first morphism is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e7aed1ee7a4e68944b7214107d1859914cac15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
