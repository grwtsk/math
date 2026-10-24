# actual_second_autocorrelation_not_differentiable_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e55d726f-2c6a-b541-2b8b-1e566b731cf9",
  "kind": "theorem",
  "lexical_name": "actual_second_autocorrelation_not_differentiable_at_zero",
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
  "slug": "actual-second-autocorrelation-not-differentiable-at-zero--310aad701b9b7254aed778e1",
  "source": {
    "blob": "b1a16d2861823d13dd8130fa0725d042ab7dc64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 46,
    "path": "GRWTSK/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:310aad701b9b7254aed778e1e3ee4fcdcc174bc179f9dac5d39531a5660d2ba4",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55d726f-2c6a-b541-2b8b-1e566b731cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_autocorrelation_not_differentiable_at_zero {A : ℝ} (hA : 0 < A) :
    ¬ DifferentiableAt ℝ (autocorrelation (secondRepresentative A)) 0 := by
  have square := second_representative_memLp A
  have tracePositive := SourceSeamObstruction.normalized_second_interior_right_pos hA
  have interior : ∀ y : ℝ, -A < y → y < A →
      secondRepresentative A y = normalizedSecondInterior A y := by
    intro y left right
    change ((Icc (-A) A).indicator (normalizedSecondInterior A)) y = _
    rw [indicator_of_mem (show y ∈ Icc (-A) A from ⟨left.le, right.le⟩)]
  have outside : ∀ x : ℝ, A < x → secondRepresentative A x = 0 := by
    intro x beyond
    apply indicator_of_notMem
    intro retained
    exact (not_le_of_gt beyond) retained.2
  obtain ⟨ε, positiveε, lower⟩ := positive_trace_eventual_seam_lower_bound
    (by linarith : -A < A) (normalized_second_interior_continuous A).continuousAt
    tracePositive interior outside
    (fun h ↦ translated_difference_square_integrable square h)
  have coefficientPositive : 0 < (normalizedSecondInterior A A / 2) ^ 2 / 2 := by
    exact div_pos (pow_pos (div_pos tracePositive (by norm_num)) 2) (by norm_num)
  apply not_differentiable_at_zero_of_linear_defect (even _) coefficientPositive
  have neighborhood : ∀ᶠ h in 𝓝 (0 : ℝ), h < ε := Iio_mem_nhds positiveε
  have rightNeighborhood : ∀ᶠ h in 𝓝[>] (0 : ℝ), h < ε :=
    neighborhood.filter_mono nhdsWithin_le_nhds
  filter_upwards [rightNeighborhood, self_mem_nhdsWithin] with h short positive
  rw [defect_eq_half_translation_energy square h]
  have seam := lower h positive short
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a16d2861823d13dd8130fa0725d042ab7dc64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
