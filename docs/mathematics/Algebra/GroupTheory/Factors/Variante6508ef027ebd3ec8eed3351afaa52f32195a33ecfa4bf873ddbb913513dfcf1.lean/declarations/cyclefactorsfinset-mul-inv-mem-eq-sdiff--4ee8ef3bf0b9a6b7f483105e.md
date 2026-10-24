# cycleFactorsFinset_mul_inv_mem_eq_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb70e435-1d5c-f245-2d83-bf14a2705ff8",
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
  "slug": "cyclefactorsfinset-mul-inv-mem-eq-sdiff--4ee8ef3bf0b9a6b7f483105e",
  "source": {
    "blob": "22bcdd88db207682520dfc42779dcca1dbf6b45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 817,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ee8ef3bf0b9a6b7f483105e1436c42cd5a50bf3bc0ea7a9752b9785ed0fb35f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb70e435-1d5c-f245-2d83-bf14a2705ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 817–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleFactorsFinset_mul_inv_mem_eq_sdiff [DecidableEq α] [Fintype α] {f g : Perm α}
    (h : f ∈ cycleFactorsFinset g) : cycleFactorsFinset (g * f⁻¹) = cycleFactorsFinset g \ {f} := by
  revert f
  refine
    cycle_induction_on (P := fun {g : Perm α} ↦
      ∀ {f}, (f ∈ cycleFactorsFinset g)
        → cycleFactorsFinset (g * f⁻¹) = cycleFactorsFinset g \ {f}) _ ?_ ?_ ?_
  · simp
  · intro σ hσ f hf
    simp only [cycleFactorsFinset_eq_singleton_self_iff.mpr hσ, mem_singleton] at hf ⊢
    simp [hf]
  · intro σ τ hd _ hσ hτ f
    simp_rw [hd.cycleFactorsFinset_mul_eq_union, mem_union]
    -- if only `wlog` could work here...
    rintro (hf | hf)
    · rw [hd.commute.eq, union_comm, union_sdiff_distrib, sdiff_singleton_eq_erase,
        erase_eq_of_notMem, mul_assoc, Disjoint.cycleFactorsFinset_mul_eq_union, hσ hf]
      · rw [mem_cycleFactorsFinset_iff] at hf
        intro x
        rcases hd.symm x with hx | hx
        · exact Or.inl hx
        · refine Or.inr ?_
          by_cases hfx : f x = x
          · rw [← hfx]
            simpa [hx] using hfx.symm
          · rw [mul_apply]
            rw [← hf.right _ (mem_support.mpr hfx)] at hx
            contradiction
      · exact fun H =>
        notMem_empty _ (hd.disjoint_cycleFactorsFinset.le_bot (mem_inter_of_mem hf H))
    · rw [union_sdiff_distrib, sdiff_singleton_eq_erase, erase_eq_of_notMem, mul_assoc,
        Disjoint.cycleFactorsFinset_mul_eq_union, hτ hf]
      · rw [mem_cycleFactorsFinset_iff] at hf
        intro x
        rcases hd x with hx | hx
        · exact Or.inl hx
        · refine Or.inr ?_
          by_cases hfx : f x = x
          · rw [← hfx]
            simpa [hx] using hfx.symm
          · rw [mul_apply]
            rw [← hf.right _ (mem_support.mpr hfx)] at hx
            contradiction
      · exact fun H =>
        notMem_empty _ (hd.disjoint_cycleFactorsFinset.le_bot (mem_inter_of_mem H hf))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean#L817).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22bcdd88db207682520dfc42779dcca1dbf6b45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
