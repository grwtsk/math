# primitiveCorrelationZero_contDiff_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8904b03c-b185-22f9-0f32-ae3c01cd8796",
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
  "slug": "primitivecorrelationzero-contdiff-four--38cf43e352423a0768580abe",
  "source": {
    "blob": "9acebdcb4c795318facfd5b7c85b0103d01b7975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38cf43e352423a0768580abebdacbcf4feff67bc8f783884b24caa7bb0aa3e4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8904b03c-b185-22f9-0f32-ae3c01cd8796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9acebdcb4c795318facfd5b7c85b0103d01b7975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
