# smooth_kernel_admission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a95e67f-dbd7-8a5a-89f9-530b4bf76691",
  "kind": "theorem",
  "lexical_name": "smooth_kernel_admission",
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
  "slug": "smooth-kernel-admission--5e8427a67f6a48f227e6ffc6",
  "source": {
    "blob": "b425f973f9833ebb51b75823e783d29be23875f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 344,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e8427a67f6a48f227e6ffc6f4d2bc90e4571ace37a1b7f3d3644cdfedd4db16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a95e67f-dbd7-8a5a-89f9-530b4bf76691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smooth_kernel_admission (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (hε1 : ε ≤ 1) :
    ContDiff ℝ 2 (smoothKernel A ε hε) ∧
    HasCompactSupport (smoothKernel A ε hε) ∧
    Function.support (smoothKernel A ε hε) ⊆
      Icc (-(2 * (A + 1))) (2 * (A + 1)) ∧
    Function.Even (smoothKernel A ε hε) ∧
    (∀ z : ℂ, smoothKernelFT A ε hε (z / Complex.I) =
      smoothedBilateralTransform A ε hε z ^ 2) ∧
    Summable (fun o : ZeroOccurrence ↦
      smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2) := by
  let f := smoothedTest A ε hε
  have hf : ContDiff ℝ ∞ f := smoothedTest_contDiff A ε hA hε
  have hfc : HasCompactSupport f := smoothedTest_hasCompactSupport A ε hA hε
  have hfe : Function.Even f := smoothedTest_even A ε hA hε
  have hfs : Function.support f ⊆ Icc (-(A + 1)) (A + 1) := by
    intro x hx
    have hs := smoothedTest_support_subset A ε hA hε hx
    constructor <;> linarith [hs.1, hs.2]
  have hcorr : ContDiff ℝ ∞ (correlation f) := correlation_contDiff f hf hfc hfe
  have hsupport : Function.support (correlation f) ⊆
      Icc (-(2 * (A + 1))) (2 * (A + 1)) :=
    correlation_support_subset f hfe (A + 1) hfs
  have hkcompact : HasCompactSupport (smoothKernel A ε hε) := by
    apply (isCompact_Icc : IsCompact (Icc (-(2 * (A + 1))) (2 * (A + 1)))).of_isClosed_subset
      isClosed_closure
    apply closure_minimal _ isClosed_Icc
    intro t ht
    apply hsupport
    intro hz
    exact ht (by change ((correlation f t : ℝ) : ℂ) = 0; rw [hz]; rfl)
  refine ⟨?_, hkcompact, ?_, ?_, ?_, smoothed_squares_summable A ε hA hε⟩
  · exact (Complex.ofRealCLM.contDiff.comp hcorr).of_le
      (ENat.natCast_le_of_coe_top_le_withTop le_rfl 2)
  · intro t ht
    apply hsupport
    intro hz
    exact ht (by change ((correlation f t : ℝ) : ℂ) = 0; rw [hz]; rfl)
  · intro t
    change ((correlation f (-t) : ℝ) : ℂ) = ((correlation f t : ℝ) : ℂ)
    rw [correlation_even f hfe]
  · exact fun z ↦ smoothKernelFT_shifted A ε hA hε z

end
end FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b425f973f9833ebb51b75823e783d29be23875f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
