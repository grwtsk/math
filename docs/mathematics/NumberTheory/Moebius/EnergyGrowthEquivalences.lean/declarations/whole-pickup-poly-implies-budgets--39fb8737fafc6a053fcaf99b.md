# whole_pickup_poly_implies_budgets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ee4bc76-d7c1-f470-b678-461ff808359f",
  "kind": "theorem",
  "lexical_name": "whole_pickup_poly_implies_budgets",
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
  "slug": "whole-pickup-poly-implies-budgets--39fb8737fafc6a053fcaf99b",
  "source": {
    "blob": "8334ab2bdf2b2b40366934bcfc5d46fa935c6e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39fb8737fafc6a053fcaf99b6e418bd8f66f5dc633350d1d9c7d721ff2ff8121",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee4bc76-d7c1-f470-b678-461ff808359f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whole_pickup_poly_implies_budgets (growth : WholePickupPoly) :
    PickupEnergyBudgets := by
  rcases growth with ⟨C, p, hC, hp, bound⟩
  have hden : 0 < 2 * p + 1 := by linarith
  constructor
  · refine ⟨C ^ 2 / (2 * p + 1), 2 * p + 1,
      div_nonneg (sq_nonneg _) hden.le, hden.le, ?_⟩
    intro T hT
    have hcross : cross T ≤ energy T := by
      have hdiag := actual_diagonal_nonnegative T
      rw [energy_eq_diagonal_add_cross]
      linarith
    calc
      cross T ≤ energy T := hcross
      _ ≤ C ^ 2 * (((1 + T) ^ (2 * p + 1) - 1) / (2 * p + 1)) :=
        growth_energy_bound hC hp bound hT
      _ ≤ (C ^ 2 / (2 * p + 1)) * (1 + T) ^ (2 * p + 1) := by
        have hallowance : 0 ≤ C ^ 2 / (2 * p + 1) := div_nonneg (sq_nonneg _) hden.le
        calc
          _ = (C ^ 2 / (2 * p + 1)) * ((1 + T) ^ (2 * p + 1) - 1) := by ring
          _ ≤ _ := mul_le_mul_of_nonneg_left (by linarith) hallowance
  · refine ⟨C ^ 2, 2 * p, sq_nonneg _, mul_nonneg zero_le_two hp, ?_⟩
    intro T hT
    have hbase : 0 ≤ 1 + T := by linarith
    calc
      |pickup T| ^ 2 ≤ C ^ 2 * (1 + T) ^ (2 * p) := growth_square_bound hC bound hT
      _ ≤ C ^ 2 * (1 + T) ^ (2 * p) *
          (1 + ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) := by
        have hfactor : 1 ≤ 1 + ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2 := by
          linarith [local_pickup_square_nonnegative T]
        exact le_mul_of_one_le_right
          (mul_nonneg (sq_nonneg _) (Real.rpow_nonneg hbase _)) hfactor

/-- The genuine diagonal estimate remains an explicit source-level hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8334ab2bdf2b2b40366934bcfc5d46fa935c6e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
