# primitiveCorrelationZero_contDiff_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:084a7dd6-2cf0-d45e-4d4b-e116cb9fc664",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_contDiff_four",
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
  "slug": "primitivecorrelationzero-contdiff-four--57b35fe2ef832b1dde46b9a8",
  "source": {
    "blob": "8b5f70251cc04d008ef571f95fa7a88236287f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b35fe2ef832b1dde46b9a84a94a46cb045ba41cde1fb6ac529e2a912792d71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:084a7dd6-2cf0-d45e-4d4b-e116cb9fc664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationZero_contDiff_four {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 4 (primitiveCorrelationZero A) := by
  have hc2 := primitiveCorrelationZero_contDiff_two hA
  have hd2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) := by
    have he : deriv (deriv (primitiveCorrelationZero A)) =
        fun t => -primitiveCorrelationOne A t :=
      funext (primitiveCorrelationZero_second_deriv_eq_neg_one hA)
    rw [he]
    exact (primitiveCorrelationOne_contDiff_two hA).neg
  have hd3 : ContDiff ℝ 3 (deriv (primitiveCorrelationZero A)) := by
    have hc1 : ContDiff ℝ 1 (deriv (primitiveCorrelationZero A)) := hc2.deriv'
    rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hc1.differentiable (by norm_num), by norm_num, hd2⟩
  rw [show (4 : WithTop ℕ∞) = 3 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨hc2.differentiable (by norm_num), by norm_num, hd3⟩

end FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5f70251cc04d008ef571f95fa7a88236287f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
