# spectralNorm_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca5211cc-fdfa-b4ed-2972-edb9e1909cdd",
  "kind": "theorem",
  "lexical_name": "spectralNorm_unique",
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
  "slug": "spectralnorm-unique--8bb5ce59bd6e190c9fdd6996",
  "source": {
    "blob": "966cc62fcc2a5f696404037c9fc864e171e85938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 777,
    "line": 707,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb5ce59bd6e190c9fdd699685e727d4e8269eb709bc2b6bf5761531a843174f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca5211cc-fdfa-b4ed-2972-edb9e1909cdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–777.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralNorm_unique [CompleteSpace K] {f : AlgebraNorm K L} (hf_pm : IsPowMul f) :
    f = spectralAlgNorm K L := by
  apply eq_of_powMul_faithful f hf_pm _ spectralAlgNorm_isPowMul
  intro x
  let E : Type v := id K⟮x⟯
  let : Field E := id <| show Field K⟮x⟯ by infer_instance
  let : Module K E := id <| show Module K K⟮x⟯ by infer_instance
  let id1 : K⟮x⟯ →ₗ[K] E := LinearMap.id
  let id2 : E →ₗ[K] K⟮x⟯ := LinearMap.id
  set hs_norm : RingNorm E :=
    { toFun y := spectralNorm K L (id2 y : L)
      map_zero' := by simp [map_zero, spectralNorm_zero, ZeroMemClass.coe_zero]
      add_le' a b := by
        simp only [← spectralAlgNorm_def]
        exact map_add_le_add _ _ _
      neg' a := by simp [map_neg, NegMemClass.coe_neg, ← spectralAlgNorm_def, map_neg_eq_map]
      mul_le' a b := by
        simp only [← spectralAlgNorm_def]
        exact map_mul_le_mul _ _ _
      eq_zero_of_map_eq_zero' a ha := by
        simpa [id_eq, eq_mpr_eq_cast, cast_eq, LinearMap.coe_mk, ← spectralAlgNorm_def,
          map_eq_zero_iff_eq_zero, ZeroMemClass.coe_eq_zero] using! ha }
  let n1 : NormedRing E := RingNorm.toNormedRing hs_norm
  let N1 : NormedSpace K E :=
    { one_smul e := by simp [one_smul]
      mul_smul k1 k2 e := by simp [mul_smul]
      smul_zero e := by simp
      smul_add k e_1 e_ := by simp [smul_add]
      add_smul k1 k2 e := by simp [add_smul]
      zero_smul e := by simp [zero_smul]
      norm_smul_le k y := by
        change (spectralAlgNorm K L (id2 (k • y) : L) : ℝ) ≤
          ‖k‖ * spectralAlgNorm K L (id2 y : L)
        rw [map_smul, IntermediateField.coe_smul, map_smul_eq_mul] }
  set hf_norm : RingNorm K⟮x⟯ :=
    { toFun y := f ((algebraMap K⟮x⟯ L) y)
      map_zero' := map_zero _
      add_le' a b := map_add_le_add _ _ _
      neg' y := by simp [(algebraMap K⟮x⟯ L).map_neg y]
      mul_le' a b := map_mul_le_mul _ _ _
      eq_zero_of_map_eq_zero' a ha := by
        simpa [map_eq_zero_iff_eq_zero, map_eq_zero] using! ha }
  let n2 : NormedRing K⟮x⟯ := RingNorm.toNormedRing hf_norm
  let N2 : NormedSpace K K⟮x⟯ :=
    { one_smul e := by simp [one_smul]
      mul_smul k1 k2 e := by simp [mul_smul]
      smul_zero e := by simp
      smul_add k e1 e2 := by simp [smul_add]
      add_smul k1 k2 e := by simp [add_smul]
      zero_smul e := by simp [zero_smul]
      norm_smul_le k y := by
        change (f ((algebraMap K⟮x⟯ L) (k • y)) : ℝ) ≤ ‖k‖ * f (algebraMap K⟮x⟯ L y)
        have : (algebraMap (↥K⟮x⟯) L) (k • y) = k • algebraMap (↥K⟮x⟯) L y := by
          simp [IntermediateField.algebraMap_apply]
        rw [this, map_smul_eq_mul] }
  have hKx_fin : FiniteDimensional K ↥K⟮x⟯ :=
    IntermediateField.adjoin.finiteDimensional (Algebra.IsAlgebraic.isAlgebraic x).isIntegral
  have : FiniteDimensional K E := hKx_fin
  set Id1 : K⟮x⟯ →L[K] E := ⟨id1, id1.continuous_of_finiteDimensional⟩
  set Id2 : E →L[K] K⟮x⟯ := ⟨id2, id2.continuous_of_finiteDimensional⟩
  obtain ⟨C1, hC1_pos, hC1⟩ : ∃ C1 : ℝ, 0 < C1 ∧ ∀ y : K⟮x⟯, ‖id1 y‖ ≤ C1 * ‖y‖ :=
    Id1.isBoundedLinearMap.bound
  obtain ⟨C2, hC2_pos, hC2⟩ : ∃ C2 : ℝ, 0 < C2 ∧ ∀ y : E, ‖id2 y‖ ≤ C2 * ‖y‖ :=
    Id2.isBoundedLinearMap.bound
  exact ⟨ C2, C1, hC2_pos, hC1_pos,
    forall_and.mpr ⟨fun y ↦ hC2 ⟨y, (IntermediateField.algebra_adjoin_le_adjoin K _) y.2⟩,
      fun y ↦ hC1 ⟨y, (IntermediateField.algebra_adjoin_le_adjoin K _) y.2⟩⟩⟩

/-- If `K` is a field complete with respect to a nontrivial nonarchimedean multiplicative norm and
  `L/K` is an algebraic extension, then any multiplicative ring norm on `L` extending the norm on
  `K` coincides with the spectral norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966cc62fcc2a5f696404037c9fc864e171e85938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
