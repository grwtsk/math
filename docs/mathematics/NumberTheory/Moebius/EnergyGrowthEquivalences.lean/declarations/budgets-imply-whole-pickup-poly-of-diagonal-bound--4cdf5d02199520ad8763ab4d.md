# budgets_imply_whole_pickup_poly_of_diagonal_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:236c91c1-9743-145a-5616-f5a283520606",
  "kind": "theorem",
  "lexical_name": "budgets_imply_whole_pickup_poly_of_diagonal_bound",
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
  "slug": "budgets-imply-whole-pickup-poly-of-diagonal-bound--4cdf5d02199520ad8763ab4d",
  "source": {
    "blob": "8334ab2bdf2b2b40366934bcfc5d46fa935c6e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cdf5d02199520ad8763ab4d5b5ed1381ccdeb57283383a1e03d318c948181b7",
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

Occurrence: `result:236c91c1-9743-145a-5616-f5a283520606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem budgets_imply_whole_pickup_poly_of_diagonal_bound
    (diagonalBound : ∀ T : ℝ, 0 ≤ T → diagonal T ≤ 2 * (1 + T) ^ 2)
    (budgets : PickupEnergyBudgets) : WholePickupPoly := by
  rcases budgets with ⟨⟨C_X, r, hCX, hr, crossBound⟩,
    ⟨C_R, s, hCR, hs, returnBound⟩⟩
  have hq : 0 ≤ max r (2 : ℝ) := (by norm_num : (0 : ℝ) ≤ 2).trans (le_max_right _ _)
  have hK : 0 ≤ C_R * (1 + C_X + 2) := mul_nonneg hCR (by linarith)
  refine ⟨Real.sqrt (C_R * (1 + C_X + 2)), (s + max r 2) / 2,
    Real.sqrt_nonneg _, div_nonneg (add_nonneg hs hq) zero_le_two, ?_⟩
  intro T hT
  have hbase1 : 1 ≤ 1 + T := by linarith
  have hbase0 : 0 ≤ 1 + T := by linarith
  have hbasePos : 0 < 1 + T := by linarith
  have hdiagPower : (1 + T) ^ 2 ≤ (1 + T) ^ (max r (2 : ℝ)) := by
    simpa only [Real.rpow_two] using
      Real.rpow_le_rpow_of_exponent_le hbase1 (le_max_right r (2 : ℝ))
  have hcrossPower : (1 + T) ^ r ≤ (1 + T) ^ (max r (2 : ℝ)) :=
    Real.rpow_le_rpow_of_exponent_le hbase1 (le_max_left _ _)
  have henergy : energy T ≤ (C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by
    rw [energy_eq_diagonal_add_cross]
    calc
      diagonal T + cross T ≤ 2 * (1 + T) ^ 2 + C_X * (1 + T) ^ r :=
        add_le_add (diagonalBound T hT) (crossBound T hT)
      _ ≤ 2 * (1 + T) ^ (max r (2 : ℝ)) + C_X * (1 + T) ^ (max r (2 : ℝ)) :=
        add_le_add (mul_le_mul_of_nonneg_left hdiagPower zero_le_two)
          (mul_le_mul_of_nonneg_left hcrossPower hCX)
      _ = (C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by ring
  have hfactor :
      1 + (∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) ≤
        (1 + C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by
    have hlocal := local_pickup_square_le_energy T
    have hone := Real.one_le_rpow hbase1 hq
    nlinarith
  have hsquare : |pickup T| ^ 2 ≤
      (C_R * (1 + C_X + 2)) * (1 + T) ^ (s + max r 2) := by
    calc
      |pickup T| ^ 2 ≤ C_R * (1 + T) ^ s *
          (1 + ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) := returnBound T hT
      _ ≤ C_R * (1 + T) ^ s * ((1 + C_X + 2) * (1 + T) ^ (max r (2 : ℝ))) :=
        mul_le_mul_of_nonneg_left hfactor (mul_nonneg hCR (Real.rpow_nonneg hbase0 _))
      _ = (C_R * (1 + C_X + 2)) * (1 + T) ^ (s + max r 2) := by
        rw [Real.rpow_add hbasePos]
        ring
  have htarget : 0 ≤ Real.sqrt (C_R * (1 + C_X + 2)) *
      (1 + T) ^ ((s + max r 2) / 2) :=
    mul_nonneg (Real.sqrt_nonneg _) (Real.rpow_nonneg hbase0 _)
  have htargetSquare :
      (Real.sqrt (C_R * (1 + C_X + 2)) * (1 + T) ^ ((s + max r 2) / 2)) ^ 2 =
        (C_R * (1 + C_X + 2)) * (1 + T) ^ (s + max r 2) := by
    rw [mul_pow, Real.sq_sqrt hK, rpow_square hbase0]
    congr 2
    ring
  apply (sq_le_sq₀ (abs_nonneg (pickup T)) htarget).mp
  rw [htargetSquare]
  exact hsquare

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8334ab2bdf2b2b40366934bcfc5d46fa935c6e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
