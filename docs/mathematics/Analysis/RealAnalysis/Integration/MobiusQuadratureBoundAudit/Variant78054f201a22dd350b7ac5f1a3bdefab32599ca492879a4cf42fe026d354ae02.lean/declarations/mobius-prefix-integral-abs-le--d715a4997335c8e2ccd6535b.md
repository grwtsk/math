# mobius_prefix_integral_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77f8a0b4-7ab5-4556-7e9b-704230a6d45b",
  "kind": "theorem",
  "lexical_name": "mobius_prefix_integral_abs_le",
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
  "slug": "mobius-prefix-integral-abs-le--d715a4997335c8e2ccd6535b",
  "source": {
    "blob": "a5881e4e90c32c468900f00c025d41b736ef2f07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d715a4997335c8e2ccd6535b08150e9ee367062deda13f051ca429bec69af6f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f8a0b4-7ab5-4556-7e9b-704230a6d45b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_prefix_integral_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |(∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) -
      (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∫ t in 1..x / (d : ℝ), Real.log t ^ 2)| ≤ 2 * x := by
  rw [mobius_prefix_eq_integral_add_error]
  simpa only [add_sub_cancel_left] using mobiusQuadratureError_abs_le x hx

end
end MobiusQuadratureBoundScratch

set_option pp.universes true
#print MobiusQuadratureBoundScratch.logRatioSquare
#print axioms MobiusQuadratureBoundScratch.logRatioSquare
#print MobiusQuadratureBoundScratch.logRatioPrimitive
#print axioms MobiusQuadratureBoundScratch.logRatioPrimitive
#print MobiusQuadratureBoundScratch.logRatioSquare_nonneg
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_nonneg
#print MobiusQuadratureBoundScratch.logRatioSquare_le_rpow
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_le_rpow
#print MobiusQuadratureBoundScratch.logRatioSquare_integrableOn
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_integrableOn
#print MobiusQuadratureBoundScratch.logRatioSquare_intervalIntegrable
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_intervalIntegrable
#print MobiusQuadratureBoundScratch.logRatioPrimitive_hasDerivAt
#print axioms MobiusQuadratureBoundScratch.logRatioPrimitive_hasDerivAt
#print MobiusQuadratureBoundScratch.logRatioPrimitive_tendsto_zero
#print axioms MobiusQuadratureBoundScratch.logRatioPrimitive_tendsto_zero
#print MobiusQuadratureBoundScratch.integral_logRatioSquare
#print axioms MobiusQuadratureBoundScratch.integral_logRatioSquare
#print MobiusQuadratureBoundScratch.logRatioSquare_antitone
#print axioms MobiusQuadratureBoundScratch.logRatioSquare_antitone
#print MobiusQuadratureBoundScratch.sum_logRatioSquare_le_integral
#print axioms MobiusQuadratureBoundScratch.sum_logRatioSquare_le_integral
#print MobiusQuadratureBoundScratch.sum_logRatioSquare_le
#print axioms MobiusQuadratureBoundScratch.sum_logRatioSquare_le
#print MobiusQuadratureBoundScratch.mobiusQuadratureError
#print axioms MobiusQuadratureBoundScratch.mobiusQuadratureError
#print MobiusQuadratureBoundScratch.quotient_ge_one
#print axioms MobiusQuadratureBoundScratch.quotient_ge_one
#print MobiusQuadratureBoundScratch.mobiusQuadratureError_abs_le
#print axioms MobiusQuadratureBoundScratch.mobiusQuadratureError_abs_le
#print MobiusQuadratureBoundScratch.mobius_prefix_eq_integral_add_error
#print axioms MobiusQuadratureBoundScratch.mobius_prefix_eq_integral_add_error
#print MobiusQuadratureBoundScratch.mobius_prefix_integral_abs_le
#print axioms MobiusQuadratureBoundScratch.mobius_prefix_integral_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5881e4e90c32c468900f00c025d41b736ef2f07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
