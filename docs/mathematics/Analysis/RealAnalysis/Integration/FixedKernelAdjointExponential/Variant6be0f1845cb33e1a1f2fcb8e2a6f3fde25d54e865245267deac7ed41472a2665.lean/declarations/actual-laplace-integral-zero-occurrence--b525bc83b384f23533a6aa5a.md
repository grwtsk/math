# actual_laplace_integral_zero_occurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "887ffb60a1988b3fe946bbe3884c96e745ff7f65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 541,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fc7d65b-fa3b-55ce-a413-bea3d72220ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e39073f6-95b3-08ef-3d9e-88631e7098a4",
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
  "slug": "actual-laplace-integral-zero-occurrence--b525bc83b384f23533a6aa5a",
  "source": {
    "blob": "887ffb60a1988b3fe946bbe3884c96e745ff7f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 541,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b525bc83b384f23533a6aa5a7721ac2c706752879209019c23bba1aa470d5142",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39073f6-95b3-08ef-3d9e-88631e7098a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–574.

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


/-!
# The actual causal operator and its exponential adjoint witnesses

Weak inner-product transport uses genuine L2 shifts, extension/restriction duality,
and an admitted Bochner integral. Original right-half-plane source zeros yield
nonzero adjoint-kernel vectors; their exclusion remains a separate arithmetic task.
-/

set_option autoImplicit false
namespace FixedKernelAdjointExponentialScratch
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel FixedKernelAdmission
open FullLineConvolutionScratch HalfLineExtensionScratch HalfLineDualityScratch
open HalfLineOperatorScratch FixedLaplaceContinuationScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- Inverse translations cancel in the genuine full-line L2 quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887ffb60a1988b3fe946bbe3884c96e745ff7f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
