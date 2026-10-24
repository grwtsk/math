# cycleFactorsFinset_mul_inv_mem_eq_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53cb57df-2d70-89c6-6482-e6b9e7ca1756",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30ca71f7-63c2-27ed-799f-2c051696fab0",
  "kind": "theorem",
  "lexical_name": "cycleFactorsFinset_mul_inv_mem_eq_sdiff",
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
  "slug": "cyclefactorsfinset-mul-inv-mem-eq-sdiff--20e01d0c3aee58c2d24772bc",
  "source": {
    "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1603,
    "line": 1551,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e01d0c3aee58c2d24772bc20f32af4d841b6ea37decbc94c28f0f3889c9aaa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30ca71f7-63c2-27ed-799f-2c051696fab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1551–1603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleFactorsFinset_mul_inv_mem_eq_sdiff [Fintype α] {f g : Perm α}
    (h : f ∈ cycleFactorsFinset g) : cycleFactorsFinset (g * f⁻¹) = cycleFactorsFinset g \ {f} := by
  revert f
  refine'
    cycle_induction_on (P := fun {g : Perm α} ↦
      ∀ {f}, (f ∈ cycleFactorsFinset g)
        → cycleFactorsFinset (g * f⁻¹) = cycleFactorsFinset g \ {f}) _ _ _ _
  · simp
  · intro σ hσ f hf
    simp only [cycleFactorsFinset_eq_singleton_self_iff.mpr hσ, mem_singleton] at hf ⊢
    simp [hf]
  · intro σ τ hd _ hσ hτ f
    simp_rw [hd.cycleFactorsFinset_mul_eq_union, mem_union]
    -- if only `wlog` could work here...
    rintro (hf | hf)
    · rw [hd.commute.eq, union_comm, union_sdiff_distrib, sdiff_singleton_eq_erase,
        erase_eq_of_not_mem, mul_assoc, Disjoint.cycleFactorsFinset_mul_eq_union, hσ hf]
      · rw [mem_cycleFactorsFinset_iff] at hf
        intro x
        cases' hd.symm x with hx hx
        · exact Or.inl hx
        · refine' Or.inr _
          by_cases hfx : f x = x
          · rw [← hfx]
            simpa [hx] using hfx.symm
          · rw [mul_apply]
            rw [← hf.right _ (mem_support.mpr hfx)] at hx
            contradiction
      · exact fun H =>
        not_mem_empty _ (hd.disjoint_cycleFactorsFinset.le_bot (mem_inter_of_mem hf H))
    · rw [union_sdiff_distrib, sdiff_singleton_eq_erase, erase_eq_of_not_mem, mul_assoc,
        Disjoint.cycleFactorsFinset_mul_eq_union, hτ hf]
      · rw [mem_cycleFactorsFinset_iff] at hf
        intro x
        cases' hd x with hx hx
        · exact Or.inl hx
        · refine' Or.inr _
          by_cases hfx : f x = x
          · rw [← hfx]
            simpa [hx] using hfx.symm
          · rw [mul_apply]
            rw [← hf.right _ (mem_support.mpr hfx)] at hx
            contradiction
      · exact fun H =>
        not_mem_empty _ (hd.disjoint_cycleFactorsFinset.le_bot (mem_inter_of_mem H hf))
#align equiv.perm.cycle_factors_finset_mul_inv_mem_eq_sdiff Equiv.Perm.cycleFactorsFinset_mul_inv_mem_eq_sdiff

section Generation

variable [Finite β]

open Subgroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean#L1551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2605e1918b96eecdca633b14ca542208f1b1c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
