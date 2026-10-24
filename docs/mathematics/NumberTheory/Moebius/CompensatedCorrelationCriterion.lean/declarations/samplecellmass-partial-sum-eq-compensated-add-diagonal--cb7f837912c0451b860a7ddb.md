# sampleCellMass_partial_sum_eq_compensated_add_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11cc83bb-aff6-e94e-5e5c-d647f2b3099a",
  "kind": "theorem",
  "lexical_name": "sampleCellMass_partial_sum_eq_compensated_add_diagonal",
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
  "slug": "samplecellmass-partial-sum-eq-compensated-add-diagonal--cb7f837912c0451b860a7ddb",
  "source": {
    "blob": "f35ac15351db8dacec75d9ff45b4f3e9359ce652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 140,
    "path": "GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb7f837912c0451b860a7ddbb8f212fa5eacd77e87a3b7f306681871d00bf418",
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

Occurrence: `result:11cc83bb-aff6-e94e-5e5c-d647f2b3099a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampleCellMass_partial_sum_eq_compensated_add_diagonal
    {σ : ℝ} (hσ : σ ≠ 0) (N : ℕ) :
    (∑ k ∈ Finset.range N, sampleCellMass σ k) =
      (4 / σ) *
        (sampleCompensatedCorrelation σ N +
          sampleWeightedDiagonal σ N) := by
  rw [sampleCellMass_partial_sum hσ]
  unfold sampleCompensatedCorrelation sampleWeightedDiagonal
  simp_rw [add_mul]
  rw [Finset.sum_add_distrib]
  have hmix : (∑ k ∈ Finset.range N,
      2 * sampleResidue (k + 1) *
        (sampleResidue (k + 2) - sampleResidue (k + 1)) *
        Real.exp (-σ * Real.log (k + 2 : ℕ))) =
      2 * ∑ k ∈ Finset.range N,
        sampleResidue (k + 1) *
          (sampleResidue (k + 2) - sampleResidue (k + 1)) *
          Real.exp (-σ * Real.log (k + 2 : ℕ)) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [hmix]
  ring

/-- At a fixed positive damping, the compensated signed upper bound is exactly
the remaining arithmetic premise. The nonnegative diagonal has already been
paid and no totalized integral is used as a finiteness certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f35ac15351db8dacec75d9ff45b4f3e9359ce652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
