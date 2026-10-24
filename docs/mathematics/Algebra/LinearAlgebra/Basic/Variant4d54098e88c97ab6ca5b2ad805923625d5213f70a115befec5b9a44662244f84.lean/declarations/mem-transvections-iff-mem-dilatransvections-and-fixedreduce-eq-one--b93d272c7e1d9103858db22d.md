# mem_transvections_iff_mem_dilatransvections_and_fixedReduce_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b605b2e2057e1a7db1edbabbbb4e8f971572c314",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d94b741-e6d6-fad2-842d-0ae9282e3a9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fac7811-9ebf-e95e-887b-1df8c89aa78e",
  "kind": "theorem",
  "lexical_name": "mem_transvections_iff_mem_dilatransvections_and_fixedReduce_eq_one",
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
  "slug": "mem-transvections-iff-mem-dilatransvections-and-fixedreduce-eq-one--b93d272c7e1d9103858db22d",
  "source": {
    "blob": "b605b2e2057e1a7db1edbabbbb4e8f971572c314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 426,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b93d272c7e1d9103858db22d1ed90d0c3b0151727801c91ec9758506e7e443b4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fac7811-9ebf-e95e-887b-1df8c89aa78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_transvections_iff_mem_dilatransvections_and_fixedReduce_eq_one
    [Module.Finite K V] (e : V ≃ₗ[K] V) :
    e ∈ transvections K V ↔ e ∈ dilatransvections K V ∧ e.fixedReduce = 1 := by
  refine ⟨fun ⟨f, v, hfv, he⟩ ↦ ?_, fun ⟨he, he'⟩ ↦ ?_⟩
  · constructor
    · rw [he]
      exact transvection_mem_dilatransvections hfv
    · rw [one_eq_refl, fixedReduce_eq_one, he]
      intro x
      apply ker_le_fixedSubmodule_transvection hfv
      rw [transvection.apply]
      simp [hfv]
  · by_cases he_one : e = 1
    · use 0, 0, by simp, by aesop
    have hefixed_ne_top : e.fixedSubmodule ≠ ⊤ := by
      rwa [ne_eq, LinearEquiv.fixedSubmodule_eq_top_iff]
    obtain ⟨w : V, hw : w ∉ e.fixedSubmodule⟩ :=
      SetLike.exists_not_mem_of_ne_top e.fixedSubmodule hefixed_ne_top rfl
    obtain ⟨f, hfw, hf⟩ := Submodule.exists_dual_map_eq_bot_of_notMem hw inferInstance
    rw [mem_dilatransvections_iff_finrank_quotient] at he
    have hf' : e.fixedSubmodule = LinearMap.ker f := by
      suffices finrank K (V ⧸ LinearMap.ker f) = 1 by
        apply Submodule.eq_of_le_of_finrank_le
        · intro x
          rw [mem_ker, ← Submodule.mem_bot K, ← hf]
          exact mem_map_of_mem
        rw [← Nat.add_le_add_iff_right, finrank_quotient_add_finrank] at he
        have := (LinearMap.ker f).finrank_quotient_add_finrank
        linarith
      rw [← Nat.add_left_inj, Submodule.finrank_quotient_add_finrank]
      rw [← f.finrank_ker_add_one_of_ne_zero, add_comm]
      aesop
    have eq_top : e.fixedSubmodule ⊔ Submodule.span K {w} = ⊤ := by
      rw [Submodule.sup_span_singleton_eq_top_iff hw]
      apply le_antisymm he
      apply Nat.one_le_of_lt
      rw [← Nat.ne_zero_iff_zero_lt]
      contrapose hefixed_ne_top
      apply eq_top_of_finrank_eq
      rw [← Nat.add_left_cancel_iff, finrank_quotient_add_finrank, hefixed_ne_top, zero_add]
    set v := (f w)⁻¹ • (e w - w)
    suffices hfv : f v = 0 by
      use f, v, hfv
      rw [← LinearEquiv.toLinearMap_inj,
        ← sub_eq_zero, ← LinearMap.ker_eq_top, eq_top_iff, ← eq_top]
      simp only [LinearEquiv.transvection.coe_toLinearMap,
        sup_le_iff, Submodule.span_singleton_le_iff_mem, LinearMap.mem_ker, LinearMap.sub_apply,
        LinearEquiv.coe_coe]
      constructor
      · intro x hx
        suffices f x = 0 by
          simpa [this, LinearMap.transvection.apply, sub_eq_zero] using hx
        rwa [hf', LinearMap.mem_ker] at hx
      · simp_all [v, LinearMap.transvection.apply]
    suffices e w - w ∈ LinearMap.ker f by
      simp only [LinearMap.mem_ker, map_sub] at this
      simp only [v, LinearMap.map_smul, map_sub, this, smul_zero]
    rw [← hf', ← Submodule.ker_mkQ e.fixedSubmodule, LinearMap.mem_ker]
    simp [Submodule.mkQ_apply, Submodule.Quotient.mk_sub, ← fixedReduce_mk, he']

end divisionRing

end LinearEquiv.dilatransvections

section baseChange

open IsBaseChange LinearMap LinearEquiv Module

open scoped TensorProduct

section

variable
    {R V : Type*} [CommSemiring R] [AddCommMonoid V] [Module R V]
    (A : Type*) [CommSemiring A] [Algebra R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b605b2e2057e1a7db1edbabbbb4e8f971572c314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
