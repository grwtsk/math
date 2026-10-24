# quadratic_tail_of_reduced_offAxis_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b96423cb-5a4b-82a4-3f28-d305fbf4937d",
  "kind": "theorem",
  "lexical_name": "quadratic_tail_of_reduced_offAxis_lower",
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
  "slug": "quadratic-tail-of-reduced-offaxis-lower--aa41707f34e12bc63444f9ed",
  "source": {
    "blob": "9ae54a20732771e50b9427461e8e141ffce5de0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisQuadraticSharp/Variant3c37ae860d512322afd12ad445b3bc444fa2219d72cd237e058be202fda3cdbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa41707f34e12bc63444f9edb5c12a274dfb1dd8536b62dba4ff2c84fd80c8ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisQuadraticSharp/Variant3c37ae860d512322afd12ad445b3bc444fa2219d72cd237e058be202fda3cdbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b96423cb-5a4b-82a4-3f28-d305fbf4937d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_tail_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R ≤ A →
      -J - actualReducedZeroEnvelope A0 (max 200 R) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨A0, hA0, hb⟩ := actualReducedZeroTail_norm_bound
  refine ⟨A0, hA0, fun A hA => ?_⟩
  have h200 : 200 ≤ A := (le_max_left _ _).trans hA
  have hA1 : 1 ≤ A := by linarith
  have hh := hhead A ((le_max_right _ _).trans hA)
  have hp := actualOffAxisZeroHeightHead_re_le_full A (actualReducedZeroHeight A) hA1
  have he := congrArg Complex.re (actualSourceQuadraticValue_sub_reducedHead A hA1)
  simp only [Complex.sub_re, Complex.ofReal_re] at he
  have ht := (abs_le.mp ((Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualReducedZeroHeight A))).trans (hb A h200))).1
  have hs := actualReducedZeroEnvelope_le_at_radius hA0 (le_max_left 200 R) hA
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisQuadraticSharp/Variant3c37ae860d512322afd12ad445b3bc444fa2219d72cd237e058be202fda3cdbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisQuadraticSharp/Variant3c37ae860d512322afd12ad445b3bc444fa2219d72cd237e058be202fda3cdbc.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae54a20732771e50b9427461e8e141ffce5de0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
