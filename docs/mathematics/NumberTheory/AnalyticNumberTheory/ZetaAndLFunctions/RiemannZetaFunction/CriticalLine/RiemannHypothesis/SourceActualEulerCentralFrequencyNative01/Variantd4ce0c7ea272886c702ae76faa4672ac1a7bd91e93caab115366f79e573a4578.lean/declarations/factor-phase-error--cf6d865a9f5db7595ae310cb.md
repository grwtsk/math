# factor_phase_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45844f3e-1598-cc6e-5e59-df9767b4d117",
  "kind": "theorem",
  "lexical_name": "factor_phase_error",
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
  "slug": "factor-phase-error--cf6d865a9f5db7595ae310cb",
  "source": {
    "blob": "9ede8be06bb4b2abb317559365c930a1398d7c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 153,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf6d865a9f5db7595ae310cb1ac5fd1b0ad4755b5900260020e41be881c07730",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45844f3e-1598-cc6e-5e59-df9767b4d117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem factor_phase_error {t : ℝ} (ht : |t| ≤ 1/100) :
    ‖((3/2 : ℂ)+(t : ℂ)*I)^2 * (((3/2 : ℂ)+(t : ℂ)*I)-1)^2 - 9/16‖ ≤ 1/16 := by
  have he : ((3/2 : ℂ)+(t : ℂ)*I)^2 * (((3/2 : ℂ)+(t : ℂ)*I)-1)^2 - 9/16 =
      (((-(11/2)*t^2+t^4 : ℝ) : ℂ)) + I*(3*t-4*t^3 : ℝ) := by
    apply Complex.ext <;> simp <;> ring
  rw [he]
  have h2 : |t|^2 ≤ (1/100 : ℝ)^2 := pow_le_pow_left₀ (abs_nonneg _) ht 2
  have h3 : |t|^3 ≤ (1/100 : ℝ)^3 := pow_le_pow_left₀ (abs_nonneg _) ht 3
  have h4 : |t|^4 ≤ (1/100 : ℝ)^4 := pow_le_pow_left₀ (abs_nonneg _) ht 4
  calc
    _ ≤ |-(11/2)*t^2+t^4| + |3*t-4*t^3| := by
      simpa using Complex.norm_le_abs_re_add_abs_im
        (((( -(11/2)*t^2+t^4 : ℝ) : ℂ)) + I*(3*t-4*t^3 : ℝ))
    _ ≤ (11/2)*|t|^2+|t|^4+3*|t|+4*|t|^3 := by
      have h := add_le_add (abs_add _ _) (abs_sub _ _)
      simpa only [abs_mul, abs_neg, abs_pow, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 11/2),
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 3), abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 4)] using h
    _ ≤ _ := by nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ede8be06bb4b2abb317559365c930a1398d7c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
