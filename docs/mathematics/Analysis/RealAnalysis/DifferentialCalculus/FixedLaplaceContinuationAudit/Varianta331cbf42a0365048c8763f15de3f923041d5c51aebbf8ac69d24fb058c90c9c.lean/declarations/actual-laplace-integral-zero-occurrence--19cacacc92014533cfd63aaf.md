# actual_laplace_integral_zero_occurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:979c9b2f-e852-9654-00bb-ba47fbb6d737",
  "kind": "theorem",
  "lexical_name": "actual_laplace_integral_zero_occurrence",
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
  "slug": "actual-laplace-integral-zero-occurrence--19cacacc92014533cfd63aaf",
  "source": {
    "blob": "b7c0b80f4bae43b74324c71115204488fe96c571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19cacacc92014533cfd63aaf5dcfc65b539c6021f0ffd0837485f3be250ebc3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:979c9b2f-e852-9654-00bb-ba47fbb6d737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_laplace_integral_zero_occurrence
    (o : ZeroObject.ZeroOccurrence)
    (ho : 0 <
      (ZeroObject.shiftedValue o).re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-ZeroObject.shiftedValue o) *
        (t : ℂ))) = 0 := by
  rw [actual_laplace_integral_eq_repairedTransfer _ ho]
  exact repairedTransfer_zero_occurrence o

end
end FixedLaplaceContinuationScratch

set_option pp.proofs false

#print FixedLaplaceContinuationScratch.actualLaplace
#print axioms FixedLaplaceContinuationScratch.actualLaplace

#print FixedLaplaceContinuationScratch.actualLaplace_differentiableAt
#print axioms FixedLaplaceContinuationScratch.actualLaplace_differentiableAt

#print FixedLaplaceContinuationScratch.V_differentiableAt_of_ne_zero
#print axioms FixedLaplaceContinuationScratch.V_differentiableAt_of_ne_zero

#print FixedLaplaceContinuationScratch.repairedTransfer_differentiableAt_of_ne
#print axioms FixedLaplaceContinuationScratch.repairedTransfer_differentiableAt_of_ne

#print FixedLaplaceContinuationScratch.repairedTransfer_analyticAt_pole
#print axioms FixedLaplaceContinuationScratch.repairedTransfer_analyticAt_pole

#print FixedLaplaceContinuationScratch.repairedTransfer_differentiableOn_positive
#print axioms FixedLaplaceContinuationScratch.repairedTransfer_differentiableOn_positive

#print FixedLaplaceContinuationScratch.actualLaplace_analyticOn_positive
#print axioms FixedLaplaceContinuationScratch.actualLaplace_analyticOn_positive

#print FixedLaplaceContinuationScratch.actualLaplace_eq_repairedTransfer
#print axioms FixedLaplaceContinuationScratch.actualLaplace_eq_repairedTransfer

#print FixedLaplaceContinuationScratch.actualLaplace_at_pole
#print axioms FixedLaplaceContinuationScratch.actualLaplace_at_pole

#print FixedLaplaceContinuationScratch.actualLaplace_pole_ne_zero
#print axioms FixedLaplaceContinuationScratch.actualLaplace_pole_ne_zero

#print FixedLaplaceContinuationScratch.actual_laplace_integral_eq_repairedTransfer
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_eq_repairedTransfer

#print FixedLaplaceContinuationScratch.actual_laplace_integral_at_pole
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_at_pole

#print FixedLaplaceContinuationScratch.actual_laplace_integral_zero_of_nontrivial
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_zero_of_nontrivial

#print FixedLaplaceContinuationScratch.actual_laplace_integral_zero_occurrence
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_zero_occurrence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationAudit/Varianta331cbf42a0365048c8763f15de3f923041d5c51aebbf8ac69d24fb058c90c9c.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7c0b80f4bae43b74324c71115204488fe96c571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
