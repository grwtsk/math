# Module.support_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0548ef864cf81a5d1a26127852a37b693c94658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdaeb7df-34f9-b535-90aa-dc6a5182c1fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45ec9bf0-4de0-3a0c-269f-d6bfd3f3570c",
  "kind": "theorem",
  "lexical_name": "Module.support_quotient",
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
  "slug": "module-support-quotient--9f060ad53de12bbf246b442d",
  "source": {
    "blob": "d0548ef864cf81a5d1a26127852a37b693c94658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 251,
    "path": "GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f060ad53de12bbf246b442d8bf6aba94d2250ad037564fa684bf88d54eff870",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45ec9bf0-4de0-3a0c-269f-d6bfd3f3570c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.support_quotient (I : Ideal R) :
    support R (M ⧸ (I • ⊤ : Submodule R M)) = support R M ∩ zeroLocus I := by
  apply subset_antisymm
  · refine Set.subset_inter ?_ ?_
    · exact Module.support_subset_of_surjective _ (Submodule.mkQ_surjective _)
    · rw [support_eq_zeroLocus]
      apply PrimeSpectrum.zeroLocus_anti_mono_ideal
      rw [Submodule.annihilator_quotient]
      exact fun x hx ↦ Submodule.mem_colon.mpr fun p hp ↦ Submodule.smul_mem_smul hx hp
  · rintro p ⟨hp₁, hp₂⟩
    rw [Module.mem_support_iff] at hp₁ ⊢
    let Rₚ := Localization.AtPrime p.asIdeal
    let Mₚ := LocalizedModule p.asIdeal.primeCompl M
    set Mₚ' := LocalizedModule p.asIdeal.primeCompl (M ⧸ (I • ⊤ : Submodule R M))
    let Mₚ'' := Mₚ ⧸ I.map (algebraMap R Rₚ) • (⊤ : Submodule Rₚ Mₚ)
    let e : Mₚ' ≃ₗ[Rₚ] Mₚ'' := (localizedQuotientEquiv _ _).symm ≪≫ₗ
      Submodule.quotEquivOfEq _ _ (by rw [Submodule.localized,
        Submodule.localized'_smul, Ideal.localized'_eq_map, Submodule.localized'_top])
    have : Nontrivial Mₚ'' := by
      rw [Submodule.Quotient.nontrivial_iff, ne_comm]
      apply Submodule.top_ne_ideal_smul_of_le_jacobson_annihilator
      refine trans ?_ (IsLocalRing.maximalIdeal_le_jacobson _)
      rw [← Localization.AtPrime.map_eq_maximalIdeal]
      exact Ideal.map_mono hp₂
    exact e.nontrivial

open scoped Pointwise in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0548ef864cf81a5d1a26127852a37b693c94658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
