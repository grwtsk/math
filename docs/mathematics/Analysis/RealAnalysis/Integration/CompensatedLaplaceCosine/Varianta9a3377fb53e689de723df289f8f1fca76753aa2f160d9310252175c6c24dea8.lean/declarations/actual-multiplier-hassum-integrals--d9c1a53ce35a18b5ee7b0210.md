# actual_multiplier_hasSum_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7feea0a7-60ad-75a1-2d07-24ab86fe91ec",
  "kind": "theorem",
  "lexical_name": "actual_multiplier_hasSum_integrals",
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
  "slug": "actual-multiplier-hassum-integrals--d9c1a53ce35a18b5ee7b0210",
  "source": {
    "blob": "4c63da6c036d77103c7bda0672771339b1576024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c1a53ce35a18b5ee7b0210e15e468d61a5b5925658c559ee10ccb320c1e5b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7feea0a7-60ad-75a1-2d07-24ab86fe91ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_multiplier_hasSum_integrals (ξ : ℝ) :
    HasSum (fun n : ℕ => 2 * (∫ t : ℝ in Ioi 0,
      Real.exp (-((2:ℝ)*n+1/2)*t)*(1-Real.cos (ξ*t))))
      (FormalResearch.RiemannHypothesis.SourcePairing.archimedeanMultiplier ξ +
        FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility.archimedeanConstant) := by
  simpa only [← quarter_kernel_integral] using
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource.quarter_series ξ

#print axioms damped_cosine_eq_real
#print axioms damped_cosine_integrable
#print axioms damped_cosine_integral
#print axioms compensated_integrable
#print axioms compensated_nonneg
#print axioms compensated_integral
#print axioms quarter_kernel_integral
#print axioms quarter_compensated_integrable
#print axioms actual_multiplier_hasSum_integrals

end ContinuousResearch.CompensatedLaplaceCosine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c63da6c036d77103c7bda0672771339b1576024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
