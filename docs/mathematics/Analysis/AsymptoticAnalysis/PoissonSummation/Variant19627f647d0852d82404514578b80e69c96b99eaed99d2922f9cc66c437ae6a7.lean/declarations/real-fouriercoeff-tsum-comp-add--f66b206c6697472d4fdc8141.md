# Real.fourierCoeff_tsum_comp_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07ea4e1a5eb724e2e068edc41691f1e2ed36683f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a0c0ef6-c4f8-8373-cd3b-d7518d7ceb72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:044e57d4-0a03-9585-d712-fbcecd78fa3a",
  "kind": "theorem",
  "lexical_name": "Real.fourierCoeff_tsum_comp_add",
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
  "slug": "real-fouriercoeff-tsum-comp-add--f66b206c6697472d4fdc8141",
  "source": {
    "blob": "07ea4e1a5eb724e2e068edc41691f1e2ed36683f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 49,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66b206c6697472d4fdc81418542e566112d426a002f3159c9d6b7c5d56c193d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:044e57d4-0a03-9585-d712-fbcecd78fa3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.fourierCoeff_tsum_comp_add {f : C(ℝ, ℂ)}
    (hf : ∀ K : Compacts ℝ, Summable fun n : ℤ => ‖(f.comp (ContinuousMap.addRight n)).restrict K‖)
    (m : ℤ) : fourierCoeff (Periodic.lift <| f.periodic_tsum_comp_add_zsmul 1) m = 𝓕 f m := by
  -- NB: This proof can be shortened somewhat by telescoping together some of the steps in the calc
  -- block, but I think it's more legible this way. We start with preliminaries about the integrand.
  let e : C(ℝ, ℂ) := (fourier (-m)).comp ⟨((↑) : ℝ → UnitAddCircle), continuous_quotient_mk'⟩
  have neK : ∀ (K : Compacts ℝ) (g : C(ℝ, ℂ)), ‖(e * g).restrict K‖ = ‖g.restrict K‖ := by
    have (x : ℝ) : ‖e x‖ = 1 := (AddCircle.toCircle (-m • x)).norm_coe
    intro K g
    simp_rw [norm_eq_iSup_norm, restrict_apply, mul_apply, norm_mul, this, one_mul]
  have eadd : ∀ (n : ℤ), e.comp (ContinuousMap.addRight n) = e := by
    intro n; ext1 x
    have : Periodic e 1 := Periodic.comp (fun x => AddCircle.coe_add_period 1 x) (fourier (-m))
    simpa only [mul_one] using this.int_mul n x
  -- Now the main argument. First unwind some definitions.
  calc
    fourierCoeff (Periodic.lift <| f.periodic_tsum_comp_add_zsmul 1) m =
        ∫ x in (0 : ℝ)..1, e x * (∑' n : ℤ, f.comp (ContinuousMap.addRight n)) x := by
      simp_rw [fourierCoeff_eq_intervalIntegral _ m 0, div_one, one_smul, zero_add, e, comp_apply,
        coe_mk, Periodic.lift_coe, zsmul_one, smul_eq_mul]
    -- Transform sum in C(ℝ, ℂ) evaluated at x into pointwise sum of values.
    _ = ∫ x in (0 : ℝ)..1, ∑' n : ℤ, (e * f.comp (ContinuousMap.addRight n)) x := by
      simp_rw [coe_mul, Pi.mul_apply,
        ← ContinuousMap.tsum_apply (summable_of_locally_summable_norm hf), tsum_mul_left]
    -- Swap sum and integral.
    _ = ∑' n : ℤ, ∫ x in (0 : ℝ)..1, (e * f.comp (ContinuousMap.addRight n)) x := by
      refine (intervalIntegral.tsum_intervalIntegral_eq_of_summable_norm ?_).symm
      convert hf ⟨uIcc 0 1, isCompact_uIcc⟩ using 1
      exact funext fun n => neK _ _
    _ = ∑' n : ℤ, ∫ x in (0 : ℝ)..1, (e * f).comp (ContinuousMap.addRight n) x := by
      simp only [ContinuousMap.comp_apply, mul_comp] at eadd ⊢
      simp_rw [eadd]
    -- Rearrange sum of interval integrals into an integral over `ℝ`.
    _ = ∫ x, e x * f x := by
      suffices Integrable (e * f) from this.hasSum_intervalIntegral_comp_add_int.tsum_eq
      apply integrable_of_summable_norm_Icc
      convert hf ⟨Icc 0 1, isCompact_Icc⟩ using 1
      simp_rw [mul_comp] at eadd ⊢
      simp_rw [eadd]
      exact funext fun n => neK ⟨Icc 0 1, isCompact_Icc⟩ _
    -- Minor tidying to finish
    _ = 𝓕 f m := by
      rw [fourierIntegral_real_eq_integral_exp_smul]
      congr 1 with x : 1
      rw [smul_eq_mul, comp_apply, coe_mk, coe_mk, ContinuousMap.toFun_eq_coe, fourier_coe_apply]
      congr 2
      push_cast
      ring

/-- **Poisson's summation formula**, most general form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ea4e1a5eb724e2e068edc41691f1e2ed36683f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
