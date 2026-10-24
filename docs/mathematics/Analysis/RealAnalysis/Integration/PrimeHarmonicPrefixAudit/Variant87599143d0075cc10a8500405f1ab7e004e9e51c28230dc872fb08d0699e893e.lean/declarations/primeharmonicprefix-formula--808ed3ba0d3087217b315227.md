# primeHarmonicPrefix_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6deeba7-9f49-4175-c13a-114bef28f856",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_formula",
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
  "slug": "primeharmonicprefix-formula--808ed3ba0d3087217b315227",
  "source": {
    "blob": "6b6c60e5e99a997fd8bbe50ab8cbc60681faf208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808ed3ba0d3087217b3152279fc00457a72d10049e409664ddd1fcb6a086d6ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6deeba7-9f49-4175-c13a-114bef28f856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_formula (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u = u + 1 + thetaLogError u + ∫ v in 0..u, thetaLogError v := by
  rw [primeHarmonicPrefix_abel u hu, theta_div_sq_log_substitution,
    intervalIntegral.integral_add (intervalIntegrable_const) (thetaLogError_intervalIntegrable u)]
  simp only [intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_one]
  have he : Chebyshev.theta (Real.exp u) / Real.exp u = 1 + thetaLogError u := by
    rw [thetaLogError_eq, Real.exp_neg]
    field_simp
    ring
  rw [he]
  ring

end
end PrimeHarmonicPrefixScratch

set_option pp.universes true
#print PrimeHarmonicPrefixScratch.primeHarmonicPrefix
#print axioms PrimeHarmonicPrefixScratch.primeHarmonicPrefix
#print PrimeHarmonicPrefixScratch.primeHarmonicPrefix_eq_log_sum
#print axioms PrimeHarmonicPrefixScratch.primeHarmonicPrefix_eq_log_sum
#print PrimeHarmonicPrefixScratch.primeHarmonicPrefix_zero
#print axioms PrimeHarmonicPrefixScratch.primeHarmonicPrefix_zero
#print PrimeHarmonicPrefixScratch.primeHarmonicPrefix_log_two
#print axioms PrimeHarmonicPrefixScratch.primeHarmonicPrefix_log_two
#print PrimeHarmonicPrefixScratch.thetaLogError_zero
#print axioms PrimeHarmonicPrefixScratch.thetaLogError_zero
#print PrimeHarmonicPrefixScratch.theta_div_sq_integrableOn
#print axioms PrimeHarmonicPrefixScratch.theta_div_sq_integrableOn
#print PrimeHarmonicPrefixScratch.primeHarmonicPrefix_abel
#print axioms PrimeHarmonicPrefixScratch.primeHarmonicPrefix_abel
#print PrimeHarmonicPrefixScratch.thetaLogError_intervalIntegrable
#print axioms PrimeHarmonicPrefixScratch.thetaLogError_intervalIntegrable
#print PrimeHarmonicPrefixScratch.theta_div_sq_log_substitution
#print axioms PrimeHarmonicPrefixScratch.theta_div_sq_log_substitution
#print PrimeHarmonicPrefixScratch.primeHarmonicPrefix_formula
#print axioms PrimeHarmonicPrefixScratch.primeHarmonicPrefix_formula
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6c60e5e99a997fd8bbe50ab8cbc60681faf208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
