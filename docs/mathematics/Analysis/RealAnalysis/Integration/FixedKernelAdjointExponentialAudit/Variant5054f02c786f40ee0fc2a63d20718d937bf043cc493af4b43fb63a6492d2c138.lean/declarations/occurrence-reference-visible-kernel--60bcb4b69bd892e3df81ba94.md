# occurrence_reference_visible_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fe2e8d7-c657-fabf-0b47-80febea8cd6b",
  "kind": "theorem",
  "lexical_name": "occurrence_reference_visible_kernel",
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
  "slug": "occurrence-reference-visible-kernel--60bcb4b69bd892e3df81ba94",
  "source": {
    "blob": "5eca0fbd3b582fc115cf671631babc05f2f860dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 718,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60bcb4b69bd892e3df81ba94eafe8975ebfbda88465e5ffb5488cb9f28358740",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fe2e8d7-c657-fabf-0b47-80febea8cd6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem occurrence_reference_visible_kernel (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 =
        2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := by
  exact ⟨exponentialVector (ZeroObject.shiftedValue o) ho, exponentialVector_ne_zero _ ho,
    sourceOperator_adjoint_exponential_zero_occurrence o ho,
    reference_projection_coefficient _ ho, reference_projection_coefficient_pos _ ho⟩

end
end FixedKernelAdjointExponentialScratch

set_option pp.proofs false

#print FixedKernelAdjointExponentialScratch.fullShift_neg_cancel
#print axioms FixedKernelAdjointExponentialScratch.fullShift_neg_cancel

#print FixedKernelAdjointExponentialScratch.zeroExtension_exponential_ae
#print axioms FixedKernelAdjointExponentialScratch.zeroExtension_exponential_ae

#print FixedKernelAdjointExponentialScratch.restriction_backwardShift_exponential
#print axioms FixedKernelAdjointExponentialScratch.restriction_backwardShift_exponential

#print FixedKernelAdjointExponentialScratch.exponential_inner_shift
#print axioms FixedKernelAdjointExponentialScratch.exponential_inner_shift

#print FixedKernelAdjointExponentialScratch.exponential_inner_sourceOperator
#print axioms FixedKernelAdjointExponentialScratch.exponential_inner_sourceOperator

#print FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential
#print axioms FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential

#print FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_of_nontrivial
#print axioms FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_of_nontrivial

#print FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_occurrence
#print axioms FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_occurrence

#print FixedKernelAdjointExponentialScratch.nontrivial_reference_visible_kernel
#print axioms FixedKernelAdjointExponentialScratch.nontrivial_reference_visible_kernel

#print FixedKernelAdjointExponentialScratch.occurrence_reference_visible_kernel
#print axioms FixedKernelAdjointExponentialScratch.occurrence_reference_visible_kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eca0fbd3b582fc115cf671631babc05f2f860dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
