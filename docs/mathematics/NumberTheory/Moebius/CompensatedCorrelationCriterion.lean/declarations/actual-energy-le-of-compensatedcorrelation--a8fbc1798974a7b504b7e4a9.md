# actual_energy_le_of_compensatedCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7de111f6-2e03-2b30-71d1-c4f7c5ae673b",
  "kind": "theorem",
  "lexical_name": "actual_energy_le_of_compensatedCorrelation",
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
  "slug": "actual-energy-le-of-compensatedcorrelation--a8fbc1798974a7b504b7e4a9",
  "source": {
    "blob": "f35ac15351db8dacec75d9ff45b4f3e9359ce652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 234,
    "path": "GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8fbc1798974a7b504b7e4a9df83ce139bc4fa326c251e4da1f26dcb0f2317fa",
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

Occurrence: `result:7de111f6-2e03-2b30-71d1-c4f7c5ae673b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_energy_le_of_compensatedCorrelation
    {σ C : ℝ} (hσ : 0 < σ) (hC : 0 ≤ C)
    (hbound : ∀ N : ℕ, sampleCompensatedCorrelation σ N ≤ C) :
    (∫ u in Ici (0 : ℝ),
      Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      (8 / σ) * (C + sampleDiagonalBudget σ) +
        2 / (σ + 1) := by
  have hcorr : CompensatedCorrelationBound σ :=
    ⟨C, hC, hbound⟩
  have hs : Summable (sampleCellMass σ) :=
    (summable_cellMass_iff_compensatedCorrelationBound hσ).mpr hcorr
  have hsum := sampleCellMass_tsum_le_of_compensatedCorrelation
    hσ hC hbound
  calc
    (∫ u in Ici (0 : ℝ),
        Real.exp (-σ * u) * wholePickup u ^ 2) ≤
        2 * (∑' k : ℕ, sampleCellMass σ k) +
          2 / (σ + 1) :=
      actual_energy_le_cellMass_tsum hσ hs
    _ ≤ 2 * ((4 / σ) *
          (C + sampleDiagonalBudget σ)) +
          2 / (σ + 1) :=
      add_le_add
        (mul_le_mul_of_nonneg_left hsum (by norm_num : (0 : ℝ) ≤ 2)) le_rfl
    _ = (8 / σ) * (C + sampleDiagonalBudget σ) +
          2 / (σ + 1) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f35ac15351db8dacec75d9ff45b4f3e9359ce652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
