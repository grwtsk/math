# mem_generateSetAlgebra_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "608224c0d4d0b73137c0cc91b2dc97f5ac357c4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de0997c3-b9bf-bd7c-d866-43ec38d55a2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0c3f067-9a8e-009b-8bfe-6d2b96b9bb87",
  "kind": "theorem",
  "lexical_name": "mem_generateSetAlgebra_elim",
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
  "slug": "mem-generatesetalgebra-elim--f500e01cb38309cdb8cd5f60",
  "source": {
    "blob": "608224c0d4d0b73137c0cc91b2dc97f5ac357c4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 195,
    "path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f500e01cb38309cdb8cd5f6085da9d3b789ee9acb5867d8342967ef9efb11b59",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0c3f067-9a8e-009b-8bfe-6d2b96b9bb87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_generateSetAlgebra_elim (s_mem : s ∈ generateSetAlgebra 𝒜) :
    ∃ A : Set (Set (Set α)), A.Finite ∧ (∀ a ∈ A, a.Finite) ∧
    (∀ᵉ (a ∈ A) (t ∈ a), t ∈ 𝒜 ∨ tᶜ ∈ 𝒜) ∧ s = ⋃ a ∈ A, ⋂ t ∈ a, t := by
  induction s_mem using generateSetAlgebra_induction with
  | base u u_mem =>
    refine ⟨{{u}}, finite_singleton {u},
      fun a ha ↦ eq_of_mem_singleton ha ▸ finite_singleton u,
      fun a ha t ht ↦ ?_, by simp⟩
    rw [eq_of_mem_singleton ha, ha, eq_of_mem_singleton ht, ht] at *
    exact Or.inl u_mem
  | empty => exact ⟨∅, finite_empty, fun _ h ↦ (notMem_empty _ h).elim,
    fun _ ha _ _ ↦ (notMem_empty _ ha).elim, by simp⟩
  | compl u _ u_ind =>
    rcases u_ind with ⟨A, A_fin, mem_A, hA, u_eq⟩
    have := finite_coe_iff.2 A_fin
    have := fun a : A ↦ finite_coe_iff.2 <| mem_A a.1 a.2
    refine ⟨{{(f a).1ᶜ | a : A} | f : (Π a : A, ↑a)}, finite_coe_iff.1 inferInstance,
      fun a ⟨f, hf⟩ ↦ hf ▸ finite_coe_iff.1 inferInstance, fun a ha t ht ↦ ?_, ?_⟩
    · rcases ha with ⟨f, rfl⟩
      rcases ht with ⟨a, rfl⟩
      rw [compl_compl, or_comm]
      exact hA a.1 a.2 (f a).1 (f a).2
    · ext x
      simp only [u_eq, compl_iUnion, compl_iInter, mem_iInter, mem_iUnion, mem_compl_iff,
        exists_prop, Subtype.exists, mem_ofPred_eq, iUnion_exists, iUnion_iUnion_eq',
        iInter_exists]
      constructor <;> intro hx
      · choose f hf using hx
        exact ⟨fun ⟨a, ha⟩ ↦ ⟨f a ha, (hf a ha).1⟩, fun _ a ha h ↦ by rw [← h]; exact (hf a ha).2⟩
      · rcases hx with ⟨f, hf⟩
        exact fun a ha ↦ ⟨f ⟨a, ha⟩, (f ⟨a, ha⟩).2, hf (f ⟨a, ha⟩)ᶜ a ha rfl⟩
  | union u v _ _ u_ind v_ind =>
    rcases u_ind with ⟨Au, Au_fin, mem_Au, hAu, u_eq⟩
    rcases v_ind with ⟨Av, Av_fin, mem_Av, hAv, v_eq⟩
    refine ⟨Au ∪ Av, Au_fin.union Av_fin, ?_, ?_, by rw [u_eq, v_eq, ← biUnion_union]⟩
    · rintro a (ha | ha)
      · exact mem_Au a ha
      · exact mem_Av a ha
    · rintro a (ha | ha) t ht
      · exact hAu a ha t ht
      · exact hAv a ha t ht

/-- If a family of sets is countable then so is the algebra of sets generated by it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `608224c0d4d0b73137c0cc91b2dc97f5ac357c4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
