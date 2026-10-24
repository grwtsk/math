# sourcePrefixPairing_eq_real_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca01bfef-c5f4-becd-31f1-8c330ded4be1",
  "kind": "theorem",
  "lexical_name": "sourcePrefixPairing_eq_real_integral",
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
  "slug": "sourceprefixpairing-eq-real-integral--4d0ef8e208de29fbcc8a1ecd",
  "source": {
    "blob": "84fe698ebfdd6fc6d0046540ca40a7a23a2a53ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d0ef8e208de29fbcc8a1ecd3f506321e003bad96ebfca978467c888d91c32a9",
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

Occurrence: `result:ca01bfef-c5f4-becd-31f1-8c330ded4be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePrefixPairing_eq_real_integral (A S : ℝ) (hA : 1 ≤ A) (hS : 0 ≤ S) :
    sourcePrefixPairing A S =
      -(∫ x in Ioc 1 (Real.exp S),
        weightedMertens x * deriv (weightedSourceKernel A) x) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (measurableSet_Ioc (a := (0 : ℝ)) (b := S))
    (fun s _ ↦ (Real.hasDerivAt_exp s).hasDerivWithinAt)
    (fun x _ y _ hxy ↦ Real.exp_injective hxy)
    (fun x ↦ weightedMertens x * deriv (weightedSourceKernel A) x)
  rw [Real.image_exp_Ioc, Real.exp_zero] at h
  rw [sourcePrefixPairing, h, intervalIntegral.integral_of_le hS]
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioc
  intro s hs
  dsimp only
  rw [abs_of_pos (Real.exp_pos s), smul_eq_mul, weightedMobiusPrimitive_eq,
    ← weightedSourceKernel_deriv_exp A s hA]
  ring

/-- Exact prefix Abel identity for all real source scales and all admitted prefix endpoints.
The closed-right weighted endpoint is subtracted, not discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84fe698ebfdd6fc6d0046540ca40a7a23a2a53ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
