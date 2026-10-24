# candidate_vertical_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:467e14d8-f7a2-8dd6-3a0f-33bca2923f2f",
  "kind": "theorem",
  "lexical_name": "candidate_vertical_decay",
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
  "slug": "candidate-vertical-decay--b9452f75b0f3ef55da1cff00",
  "source": {
    "blob": "d6d210334e49ed0ce87afce4e6d1d9ad8f966264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant8d5f6b8d6e8b31cbfad8561eaeafa3a47e825c297ef42c76ed181431072f20a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9452f75b0f3ef55da1cff0097edd565915995b0b3bc4619c7fc92be82b62a13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant8d5f6b8d6e8b31cbfad8561eaeafa3a47e825c297ef42c76ed181431072f20a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:467e14d8-f7a2-8dd6-3a0f-33bca2923f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_vertical_decay (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ → ∀ t : ℝ,
        ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
          C * Real.sqrt (X : ℝ) * (1+Real.log (X : ℝ)) * h⁻¹^3 /
            (1+h*|t|)^3 := by
  obtain ⟨C, hC, hb⟩ := reducedW_inverse_uniform_bound ε hε
  refine ⟨256*C, by positivity, ?_⟩
  intro X hX h hh hh1 σ hσ t
  simpa using candidate_parameter_decay ε hε C hC hb X hX h hh hh1
    ((σ : ℂ)+(t : ℂ)*Complex.I) (by simpa using hσ)

/-- The scaled Cauchy majorant is genuinely integrable, with its exact whole-line mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant8d5f6b8d6e8b31cbfad8561eaeafa3a47e825c297ef42c76ed181431072f20a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant8d5f6b8d6e8b31cbfad8561eaeafa3a47e825c297ef42c76ed181431072f20a9.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6d210334e49ed0ce87afce4e6d1d9ad8f966264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
