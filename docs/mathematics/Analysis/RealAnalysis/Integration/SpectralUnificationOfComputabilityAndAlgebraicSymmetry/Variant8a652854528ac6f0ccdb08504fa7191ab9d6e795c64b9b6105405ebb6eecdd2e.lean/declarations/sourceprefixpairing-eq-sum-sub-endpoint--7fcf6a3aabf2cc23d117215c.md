# sourcePrefixPairing_eq_sum_sub_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17edcbf8-7b80-902b-e349-2c40116079e1",
  "kind": "theorem",
  "lexical_name": "sourcePrefixPairing_eq_sum_sub_endpoint",
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
  "slug": "sourceprefixpairing-eq-sum-sub-endpoint--7fcf6a3aabf2cc23d117215c",
  "source": {
    "blob": "84fe698ebfdd6fc6d0046540ca40a7a23a2a53ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fcf6a3aabf2cc23d117215cd9d630387bef5cea1a108746961513f5bb38f03a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17edcbf8-7b80-902b-e349-2c40116079e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePrefixPairing_eq_sum_sub_endpoint (A S : ℝ) (hA : 1 ≤ A)
    (hS : 0 ≤ S) (hSA : S ≤ 2 * A) :
    sourcePrefixPairing A S =
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp S⌋₊, realMoebius d * sourceMobiusKernel A d) -
        weightedMobiusPrimitive S * sourceLogKernel A S := by
  have hderiv : IntegrableOn (deriv (weightedSourceKernel A)) (Icc 1 (Real.exp S)) :=
    (weightedSourceKernel_deriv_integrable A hA).mono_set
      (Icc_subset_Icc le_rfl (Real.exp_le_exp.mpr hSA))
  have habel := sum_mul_eq_sub_integral_mul₀ weightedMoebius weightedMoebius_zero
    (Real.exp S)
    (fun x hx ↦ weightedSourceKernel_differentiableAt A x hA (zero_lt_one.trans_le hx.1))
    hderiv
  rw [weightedSourceKernel_sum_mul_eq A, weightedSourceKernel_exp A S] at habel
  have hInt : (∫ x in Ioc 1 (Real.exp S),
      deriv (weightedSourceKernel A) x * ∑ d ∈ Finset.Icc 0 ⌊x⌋₊, weightedMoebius d) =
      ∫ x in Ioc 1 (Real.exp S),
        weightedMertens x * deriv (weightedSourceKernel A) x := by
    apply integral_congr_ae
    filter_upwards with x
    simp only [weightedMertens, mul_comm]
  rw [hInt] at habel
  rw [sourcePrefixPairing_eq_real_integral A S hA hS, weightedMobiusPrimitive_eq]
  change _ = _ - weightedMertens (Real.exp S) * sourceLogKernel A S
  change _ = sourceLogKernel A S * weightedMertens (Real.exp S) - _ at habel
  linarith

/-- At the initial atom the endpoint cancels the unit term exactly.
This regression protects the endpoint from being silently omitted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84fe698ebfdd6fc6d0046540ca40a7a23a2a53ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
