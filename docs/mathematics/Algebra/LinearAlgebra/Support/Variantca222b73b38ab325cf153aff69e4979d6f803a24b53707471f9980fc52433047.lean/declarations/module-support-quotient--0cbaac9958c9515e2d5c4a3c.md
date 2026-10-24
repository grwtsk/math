# Module.support_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56dba341-7720-d56b-ca9c-9d0760dfe70f",
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
  "slug": "module-support-quotient--0cbaac9958c9515e2d5c4a3c",
  "source": {
    "blob": "bd342f966bb6ed409a6ca538a13a7883fb33050a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cbaac9958c9515e2d5c4a3ca6d4aaa9459ab0de9aefae4907b3418736ff8af8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56dba341-7720-d56b-ca9c-9d0760dfe70f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–286.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd342f966bb6ed409a6ca538a13a7883fb33050a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
