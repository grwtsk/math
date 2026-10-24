# residual_tail_of_reduced_offAxis_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f0fd7d1-eb07-2960-4b44-39ee84ea42ff",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_reduced_offAxis_lower",
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
  "slug": "residual-tail-of-reduced-offaxis-lower--2adbafbe08203d508e7d6c3b",
  "source": {
    "blob": "d55b23c3a509d467b5d8200d86b33960c5d27db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2adbafbe08203d508e7d6c3b4773ce2f4b1bfdab1ee7703ebb863a113d701330",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f0fd7d1-eb07-2960-4b44-39ee84ea42ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R ≤ A →
      mertensResidual A ≤ reducedOffAxisResidualBudget A0 J (max 200 R) := by
  obtain ⟨A0, hA0, hb⟩ := actualResidual_reducedOffAxisHead_upper
  refine ⟨A0, hA0, fun A hA => ?_⟩
  have h200 : 200 ≤ A := (le_max_left _ _).trans hA
  have hr := hb A h200
  have hh := hhead A ((le_max_right _ _).trans hA)
  have he := reducedOffAxisAllowance_le_at_radius hA0 (le_max_left 200 R) hA
  unfold reducedOffAxisResidualBudget reducedOffAxisAllowance at *
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55b23c3a509d467b5d8200d86b33960c5d27db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
