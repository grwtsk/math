# all_real_lower_of_reduced_offAxis_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16fbd6e9-d359-c3a9-c48c-99c0f3996aaf",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_reduced_offAxis_lower",
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
  "slug": "all-real-lower-of-reduced-offaxis-lower--ea6481060e22b95acfc0a422",
  "source": {
    "blob": "8e9df6ff6395c9d17988f5ca132850052c88ed72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantdee94e255d5c9e1150a92d3e8b3587260d758890f124e8c09e085c9e9cf90192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6481060e22b95acfc0a422e28b0b5157e8f532ddb04d93d4fde26f7f58594f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantdee94e255d5c9e1150a92d3e8b3587260d758890f124e8c09e085c9e9cf90192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16fbd6e9-d359-c3a9-c48c-99c0f3996aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (max 200 R))
        (archimedeanMultiplier 0 -
          2 * reducedOffAxisResidualBudget A0 J (max 200 R)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨A0, hA0, hb⟩ := residual_tail_of_reduced_offAxis_lower J R hhead
  refine ⟨A0, hA0, ?_⟩
  exact all_real_source_lower_of_residual_tail _ _
    (by linarith [le_max_left (200 : ℝ) R]) hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantdee94e255d5c9e1150a92d3e8b3587260d758890f124e8c09e085c9e9cf90192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantdee94e255d5c9e1150a92d3e8b3587260d758890f124e8c09e085c9e9cf90192.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e9df6ff6395c9d17988f5ca132850052c88ed72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
