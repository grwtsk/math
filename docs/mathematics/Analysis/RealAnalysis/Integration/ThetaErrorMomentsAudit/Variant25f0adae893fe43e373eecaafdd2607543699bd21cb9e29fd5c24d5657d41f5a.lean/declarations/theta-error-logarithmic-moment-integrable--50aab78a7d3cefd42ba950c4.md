# theta_error_logarithmic_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb9938c5-9ef8-8c15-394d-97c7c8ce1a09",
  "kind": "theorem",
  "lexical_name": "theta_error_logarithmic_moment_integrable",
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
  "slug": "theta-error-logarithmic-moment-integrable--50aab78a7d3cefd42ba950c4",
  "source": {
    "blob": "749692eff05ad85662ed039e9fb026876b9fe043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 199,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50aab78a7d3cefd42ba950c47e8775ec54aed3280e9c3917cdc9ed55dc8f4a23",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb9938c5-9ef8-8c15-394d-97c7c8ce1a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_error_logarithmic_moment_integrable (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k *
      |(Chebyshev.theta (Real.exp u) - Real.exp u) * Real.exp (-u)|) (Ioi 0) := by
  simpa only [thetaLogError_eq] using thetaLogError_moment_integrable k

end
end ThetaErrorMomentsScratch

#print ThetaErrorMomentsScratch.sourcePrimePrefix
#print axioms ThetaErrorMomentsScratch.sourcePrimePrefix
#print ThetaErrorMomentsScratch.sourcePrimePrefix_eq_theta
#print axioms ThetaErrorMomentsScratch.sourcePrimePrefix_eq_theta
#print ThetaErrorMomentsScratch.thetaLogError
#print axioms ThetaErrorMomentsScratch.thetaLogError
#print ThetaErrorMomentsScratch.thetaLogError_eq
#print axioms ThetaErrorMomentsScratch.thetaLogError_eq
#print ThetaErrorMomentsScratch.thetaLogError_measurable
#print axioms ThetaErrorMomentsScratch.thetaLogError_measurable
#print ThetaErrorMomentsScratch.thetaLogError_abs_le_global
#print axioms ThetaErrorMomentsScratch.thetaLogError_abs_le_global
#print ThetaErrorMomentsScratch.thetaLogError_abs_le_psi_error
#print axioms ThetaErrorMomentsScratch.thetaLogError_abs_le_psi_error
#print ThetaErrorMomentsScratch.thetaLogError_eventual_bound
#print axioms ThetaErrorMomentsScratch.thetaLogError_eventual_bound
#print ThetaErrorMomentsScratch.polynomial_stretched_integrable
#print axioms ThetaErrorMomentsScratch.polynomial_stretched_integrable
#print ThetaErrorMomentsScratch.thetaLogError_moment_prefix_integrable
#print axioms ThetaErrorMomentsScratch.thetaLogError_moment_prefix_integrable
#print ThetaErrorMomentsScratch.thetaLogError_moment_integrable
#print axioms ThetaErrorMomentsScratch.thetaLogError_moment_integrable
#print ThetaErrorMomentsScratch.thetaLogError_integrable
#print axioms ThetaErrorMomentsScratch.thetaLogError_integrable
#print ThetaErrorMomentsScratch.thetaLogError_first_moment_integrable
#print axioms ThetaErrorMomentsScratch.thetaLogError_first_moment_integrable
#print ThetaErrorMomentsScratch.thetaLogError_second_moment_integrable
#print axioms ThetaErrorMomentsScratch.thetaLogError_second_moment_integrable
#print ThetaErrorMomentsScratch.theta_error_logarithmic_moment_integrable
#print axioms ThetaErrorMomentsScratch.theta_error_logarithmic_moment_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749692eff05ad85662ed039e9fb026876b9fe043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
