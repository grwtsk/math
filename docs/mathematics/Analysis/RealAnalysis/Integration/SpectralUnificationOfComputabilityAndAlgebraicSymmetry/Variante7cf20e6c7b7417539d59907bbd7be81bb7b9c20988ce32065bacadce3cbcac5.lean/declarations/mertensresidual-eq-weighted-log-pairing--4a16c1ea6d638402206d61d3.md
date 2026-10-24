# mertensResidual_eq_weighted_log_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3899d7c-182f-ad5b-6b30-079de2804f8e",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_weighted_log_pairing",
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
  "slug": "mertensresidual-eq-weighted-log-pairing--4a16c1ea6d638402206d61d3",
  "source": {
    "blob": "116a2e8e67c38f51b239ae950b0cd0e9760bca1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 458,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a16c1ea6d638402206d61d34d0474576579095275661aac33129a3d857b5345",
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

Occurrence: `result:a3899d7c-182f-ad5b-6b30-079de2804f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_weighted_log_pairing (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      -(∫ s in (0 : ℝ)..(2*A),
        weightedMobiusPrimitive s * deriv (sourceLogKernel A) s) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (measurableSet_Ioc (a := (0 : ℝ)) (b := 2*A))
    (fun s _ ↦ (Real.hasDerivAt_exp s).hasDerivWithinAt)
    (fun x _ y _ hxy ↦ Real.exp_injective hxy)
    (fun x ↦ weightedMertens x * deriv (weightedSourceKernel A) x)
  rw [Real.image_exp_Ioc, Real.exp_zero] at h
  rw [mertensResidual_eq_weighted_abel A hA, sourceUpper, h,
    intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ 2*A)]
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioc
  intro s hs
  dsimp only
  rw [abs_of_pos (Real.exp_pos s), smul_eq_mul, weightedMobiusPrimitive_eq,
    ← weightedSourceKernel_deriv_exp A s hA]
  ring


end
end EstimateWeightedMobiusPairing
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116a2e8e67c38f51b239ae950b0cd0e9760bca1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
