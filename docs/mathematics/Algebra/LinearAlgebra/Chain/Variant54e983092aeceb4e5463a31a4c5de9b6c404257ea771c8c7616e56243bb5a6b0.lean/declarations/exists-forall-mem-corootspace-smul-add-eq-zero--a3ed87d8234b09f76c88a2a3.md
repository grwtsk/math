# exists_forall_mem_corootSpace_smul_add_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19ec6bfc-beb6-1a13-1549-00ce697aa8ed",
  "kind": "lemma",
  "lexical_name": "exists_forall_mem_corootSpace_smul_add_eq_zero",
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
  "slug": "exists-forall-mem-corootspace-smul-add-eq-zero--a3ed87d8234b09f76c88a2a3",
  "source": {
    "blob": "3fc58bb502930835c633147e29541e0886c1ed48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ed87d8234b09f76c88a2a3882eb2360780e3540ccb01725e1a86a3a553cd93",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ec6bfc-beb6-1a13-1549-00ce697aa8ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_forall_mem_corootSpace_smul_add_eq_zero
    [IsDomain R] [IsPrincipalIdealRing R] [CharZero R] [NoZeroSMulDivisors R M] [IsNoetherian R M]
    (hα : α ≠ 0) (hχ : genWeightSpace M χ ≠ ⊥) :
    ∃ a b : ℤ, 0 < b ∧ ∀ x ∈ corootSpace α, (a • α + b • χ) x = 0 := by
  obtain ⟨p, hp₀, q, hq₀, hp, hq⟩ := exists₂_genWeightSpace_smul_add_eq_bot M α χ hα
  let a := ∑ i ∈ Finset.Ioo p q, finrank R (genWeightSpace M (i • α + χ)) • i
  let b := ∑ i ∈ Finset.Ioo p q, finrank R (genWeightSpace M (i • α + χ))
  have hb : 0 < b := by
    replace hχ : Nontrivial (genWeightSpace M χ) := by rwa [LieSubmodule.nontrivial_iff_ne_bot]
    refine Finset.sum_pos' (fun _ _ ↦ zero_le _) ⟨0, Finset.mem_Ioo.mpr ⟨hp₀, hq₀⟩, ?_⟩
    rw [zero_smul, zero_add]
    exact finrank_pos
  refine ⟨a, b, Int.ofNat_pos.mpr hb, fun x hx ↦ ?_⟩
  let N : ℤ → Submodule R M := fun k ↦ genWeightSpace M (k • α + χ)
  have h₁ : iSupIndep fun (i : Finset.Ioo p q) ↦ N i := by
    rw [LieSubmodule.iSupIndep_toSubmodule]
    refine (iSupIndep_genWeightSpace R H M).comp fun i j hij ↦ ?_
    exact SetCoe.ext <| smul_left_injective ℤ hα <| by rwa [add_left_inj] at hij
  have h₂ : ∀ i, MapsTo (toEnd R H M x) ↑(N i) ↑(N i) := fun _ _ ↦ LieSubmodule.lie_mem _
  have h₃ : genWeightSpaceChain M α χ p q = ⨆ i ∈ Finset.Ioo p q, N i := by
    simp_rw [N, genWeightSpaceChain_def', LieSubmodule.iSup_toSubmodule]
  rw [← trace_toEnd_genWeightSpaceChain_eq_zero M α χ p q hp hq hx,
    ← LieSubmodule.toEnd_restrict_eq_toEnd]
  -- The lines below illustrate the cost of treating `LieSubmodule` as both a
  -- `Submodule` and a `LieSubmodule` simultaneously.
  erw [LinearMap.trace_eq_sum_trace_restrict_of_eq_biSup _ h₁ h₂ (genWeightSpaceChain M α χ p q) h₃]
  simp_rw [N, LieSubmodule.toEnd_restrict_eq_toEnd]
  dsimp [N]
  convert_to _ =
    ∑ k ∈ Finset.Ioo p q, (LinearMap.trace R { x // x ∈ (genWeightSpace M (k • α + χ)) })
      ((toEnd R { x // x ∈ H } { x // x ∈ genWeightSpace M (k • α + χ) }) x)
  simp_rw [a, b, trace_toEnd_genWeightSpace, Pi.add_apply, Pi.smul_apply, smul_add,
    ← smul_assoc, Finset.sum_add_distrib, ← Finset.sum_smul, natCast_zsmul]

end IsCartanSubalgebra

end LieSubalgebra

section

variable {M}
variable [LieRing.IsNilpotent L]
variable [NoZeroSMulDivisors ℤ R] [NoZeroSMulDivisors R M] [IsNoetherian R M]
variable (α : L → R) (β : Weight R L M)

/-- This is the largest `n : ℕ` such that `i • α + β` is a weight for all `0 ≤ i ≤ n`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc58bb502930835c633147e29541e0886c1ed48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
