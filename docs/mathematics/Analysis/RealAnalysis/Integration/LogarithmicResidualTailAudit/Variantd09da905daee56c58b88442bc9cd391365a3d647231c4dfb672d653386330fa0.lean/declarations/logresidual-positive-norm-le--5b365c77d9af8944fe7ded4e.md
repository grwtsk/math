# logResidual_positive_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6e0e483-6d7b-db70-d5cc-541a0eb06478",
  "kind": "theorem",
  "lexical_name": "logResidual_positive_norm_le",
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
  "slug": "logresidual-positive-norm-le--5b365c77d9af8944fe7ded4e",
  "source": {
    "blob": "efb4474a026a077ec2f3c3c4de68776a11b3f6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b365c77d9af8944fe7ded4ec2066e8e73d41521726f9c9d40db1d236b2ff677",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6e0e483-6d7b-db70-d5cc-541a0eb06478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_positive_norm_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log Y)).indicator (logResidual X ε))‖ ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y := by
  apply (sq_le_sq₀ (norm_nonneg _) (by positivity)).mp
  rw [indicator_toLp_norm_sq _ (logResidual_memLp X ε hX) _ measurableSet_Ioi,
    div_pow, Real.sq_sqrt (by linarith : 0 ≤ Y)]
  exact logResidual_positive_integral_le X ε hX Y hY

end
end LogarithmicResidualTailScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @LogarithmicResidualTailScratch.dampedCoefficient_reciprocal_sum
#print LogarithmicResidualTailScratch.dampedCoefficient_reciprocal_sum
#print axioms LogarithmicResidualTailScratch.dampedCoefficient_reciprocal_sum
#check @LogarithmicResidualTailScratch.arithmeticResidual_eq_below_one
#print LogarithmicResidualTailScratch.arithmeticResidual_eq_below_one
#print axioms LogarithmicResidualTailScratch.arithmeticResidual_eq_below_one
#check @LogarithmicResidualTailScratch.arithmeticResidual_norm_le
#print LogarithmicResidualTailScratch.arithmeticResidual_norm_le
#print axioms LogarithmicResidualTailScratch.arithmeticResidual_norm_le
#check @LogarithmicResidualTailScratch.logResidual_eq_of_neg
#print LogarithmicResidualTailScratch.logResidual_eq_of_neg
#print axioms LogarithmicResidualTailScratch.logResidual_eq_of_neg
#check @LogarithmicResidualTailScratch.logResidual_norm_le
#print LogarithmicResidualTailScratch.logResidual_norm_le
#print axioms LogarithmicResidualTailScratch.logResidual_norm_le
#check @LogarithmicResidualTailScratch.logResidual_memLp
#print LogarithmicResidualTailScratch.logResidual_memLp
#print axioms LogarithmicResidualTailScratch.logResidual_memLp
#check @LogarithmicResidualTailScratch.logResidual_negative_integral
#print LogarithmicResidualTailScratch.logResidual_negative_integral
#print axioms LogarithmicResidualTailScratch.logResidual_negative_integral
#check @LogarithmicResidualTailScratch.logResidual_positive_integral_le
#print LogarithmicResidualTailScratch.logResidual_positive_integral_le
#print axioms LogarithmicResidualTailScratch.logResidual_positive_integral_le
#check @LogarithmicResidualTailScratch.logResidual_negative_norm
#print LogarithmicResidualTailScratch.logResidual_negative_norm
#print axioms LogarithmicResidualTailScratch.logResidual_negative_norm
#check @LogarithmicResidualTailScratch.logResidual_positive_norm_le
#print LogarithmicResidualTailScratch.logResidual_positive_norm_le
#print axioms LogarithmicResidualTailScratch.logResidual_positive_norm_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efb4474a026a077ec2f3c3c4de68776a11b3f6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
