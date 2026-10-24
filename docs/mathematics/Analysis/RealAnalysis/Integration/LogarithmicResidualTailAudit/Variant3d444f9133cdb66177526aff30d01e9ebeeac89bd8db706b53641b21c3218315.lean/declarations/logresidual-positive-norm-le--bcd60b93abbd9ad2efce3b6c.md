# logResidual_positive_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9644eb15-b8c3-43e8-0469-1ff609a49618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53cded8e-8008-f747-7257-ac5da4b8ad0a",
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
  "slug": "logresidual-positive-norm-le--bcd60b93abbd9ad2efce3b6c",
  "source": {
    "blob": "3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcd60b93abbd9ad2efce3b6cc5ddb086fcb51ab2129afba5d7b37dfed480d4db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53cded8e-8008-f747-7257-ac5da4b8ad0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–216.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
