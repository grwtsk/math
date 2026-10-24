# summable_cellMass_iff_compensatedCorrelationBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20d91dc6-5ff0-c914-dfb7-e74e25581012",
  "kind": "theorem",
  "lexical_name": "summable_cellMass_iff_compensatedCorrelationBound",
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
  "slug": "summable-cellmass-iff-compensatedcorrelationbound--b940e4bfa194eee59e307ef5",
  "source": {
    "blob": "f35ac15351db8dacec75d9ff45b4f3e9359ce652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 168,
    "path": "GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b940e4bfa194eee59e307ef5c907c3bb1ae91912e9ab9fb57dc2556808874e94",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20d91dc6-5ff0-c914-dfb7-e74e25581012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_cellMass_iff_compensatedCorrelationBound
    {σ : ℝ} (hσ : 0 < σ) :
    Summable (sampleCellMass σ) ↔ CompensatedCorrelationBound σ := by
  constructor
  · intro hs
    let S : ℝ := ∑' k : ℕ, sampleCellMass σ k
    have hS : 0 ≤ S := by
      dsimp [S]
      exact tsum_nonneg (sampleCellMass_nonneg hσ.ne')
    refine ⟨(σ / 4) * S, mul_nonneg (by positivity) hS, ?_⟩
    intro N
    have hpartial :
        (∑ k ∈ Finset.range N, sampleCellMass σ k) ≤ S := by
      dsimp [S]
      exact hs.sum_le_tsum (Finset.range N)
        (fun k _ => sampleCellMass_nonneg hσ.ne' k)
    have hdiag := sampleWeightedDiagonal_nonneg σ N
    have heq := sampleCellMass_partial_sum_eq_compensated_add_diagonal
      hσ.ne' N
    have hscale :
        sampleCompensatedCorrelation σ N +
            sampleWeightedDiagonal σ N =
          (σ / 4) *
            (∑ k ∈ Finset.range N, sampleCellMass σ k) := by
      rw [heq]
      field_simp [hσ.ne']
    calc
      sampleCompensatedCorrelation σ N ≤
          sampleCompensatedCorrelation σ N +
            sampleWeightedDiagonal σ N :=
        le_add_of_nonneg_right hdiag
      _ = (σ / 4) *
          (∑ k ∈ Finset.range N, sampleCellMass σ k) := hscale
      _ ≤ (σ / 4) * S :=
        mul_le_mul_of_nonneg_left hpartial (by positivity)
  · rintro ⟨C, hC, hbound⟩
    apply summable_of_sum_range_le
      (fun k => sampleCellMass_nonneg hσ.ne' k)
    intro N
    rw [sampleCellMass_partial_sum_eq_compensated_add_diagonal
      hσ.ne' N]
    exact mul_le_mul_of_nonneg_left
      (add_le_add (hbound N)
        (sampleWeightedDiagonal_le_budget hσ N))
      (by positivity)

-- Retain the published named parameter without changing the interface.
set_option linter.unusedVariables false in
/-- The complete cell-mass sum inherits an explicit fixed-rate bound from a
compensated-correlation witness and the deterministic diagonal budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f35ac15351db8dacec75d9ff45b4f3e9359ce652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
