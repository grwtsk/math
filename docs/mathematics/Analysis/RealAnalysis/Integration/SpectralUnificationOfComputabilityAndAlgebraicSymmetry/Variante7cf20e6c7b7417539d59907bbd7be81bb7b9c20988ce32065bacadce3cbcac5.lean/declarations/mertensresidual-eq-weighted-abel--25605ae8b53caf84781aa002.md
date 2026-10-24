# mertensResidual_eq_weighted_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72da7702-18b5-40fb-b53b-670c27165be9",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_weighted_abel",
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
  "slug": "mertensresidual-eq-weighted-abel--25605ae8b53caf84781aa002",
  "source": {
    "blob": "116a2e8e67c38f51b239ae950b0cd0e9760bca1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 374,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25605ae8b53caf84781aa0022d06b17e57955c20920bae54159705d2a524794a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72da7702-18b5-40fb-b53b-670c27165be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_weighted_abel (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      -(∫ x in Ioc 1 (sourceUpper A),
        weightedMertens x * deriv (weightedSourceKernel A) x) := by
  have habel := sum_mul_eq_sub_integral_mul₀ weightedMoebius weightedMoebius_zero
    (sourceUpper A)
    (fun x hx ↦ weightedSourceKernel_differentiableAt A x hA (zero_lt_one.trans_le hx.1))
    (weightedSourceKernel_deriv_integrable A hA)
  have hzero : weightedSourceKernel A (sourceUpper A) = 0 := by
    simp only [weightedSourceKernel, sourceMobiusKernel_upper_zero A hA, mul_zero]
  rw [hzero, zero_mul, zero_sub] at habel
  have hsum : (∑ d ∈ Finset.Icc 0 ⌊sourceUpper A⌋₊,
      weightedSourceKernel A d * weightedMoebius d) =
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A),
        realMoebius d * sourceMobiusKernel A d := by
    have heq : (∑ d ∈ Finset.Icc 0 ⌊sourceUpper A⌋₊,
        weightedSourceKernel A d * weightedMoebius d) =
        ∑ d ∈ Finset.Icc 1 ⌊sourceUpper A⌋₊,
          weightedSourceKernel A d * weightedMoebius d := by
      symm
      apply Finset.sum_subset
      · intro d hd
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hd).2⟩
      · intro d hd hdnot
        have hd0 : d = 0 := by
          simp only [Finset.mem_Icc] at hd hdnot
          omega
        subst d
        simp only [weightedMoebius_zero, mul_zero]
    rw [heq]
    apply Finset.sum_congr rfl
    intro d hd
    have hd0 : (0 : ℝ) < d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    have hs : Real.sqrt (d : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hd0).ne'
    unfold weightedSourceKernel weightedMoebius
    field_simp
  rw [← mertensResidual_eq_full_mobius_sum A hA] at hsum
  rw [hsum] at habel
  convert habel using 1
  congr 1
  apply integral_congr_ae
  filter_upwards with x
  simp only [weightedMertens, mul_comm]


/-- The weighted real kernel is the unchanged logarithmic profile after `x = exp s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116a2e8e67c38f51b239ae950b0cd0e9760bca1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
