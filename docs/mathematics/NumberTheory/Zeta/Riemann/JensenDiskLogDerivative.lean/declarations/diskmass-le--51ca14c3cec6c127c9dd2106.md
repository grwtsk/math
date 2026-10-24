# diskMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff29004c-21d0-51d7-564d-c6538682265e",
  "kind": "theorem",
  "lexical_name": "diskMass_le",
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
  "slug": "diskmass-le--51ca14c3cec6c127c9dd2106",
  "source": {
    "blob": "2b9c66de4bbbee9d6cd6efd91614c1c2c5033a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51ca14c3cec6c127c9dd21068bb066113dbe658b22d0c38ff93b91eefb46e6d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff29004c-21d0-51d7-564d-c6538682265e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diskMass_le (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) :
    (∑ z ∈ diskHead N c, (multiplicity z : ℝ)) ≤ diskCountBudget N := by
  classical
  have hf : AnalyticOnNhd ℂ riemannZeta (closedBall c (3 : ℝ)) := by
    rcases hc with rfl | rfl
    · exact analytic_zeta_upper_disk N hN
    · exact analytic_zeta_lower_disk N hN
  have hsmall : AnalyticOnNhd ℂ riemannZeta (closedBall c (11 / 4 : ℝ)) :=
    hf.mono (closedBall_subset_closedBall (by norm_num))
  have hcFloor : (1 / 4 : ℝ) ≤ ‖riemannZeta c‖ := by
    rcases hc with rfl | rfl
    · exact upper_center_floor N
    · exact lower_center_floor N
  have hcne : riemannZeta c ≠ 0 := by
    intro he
    rw [he, norm_zero] at hcFloor
    norm_num at hcFloor
  have hM : (1 : ℝ) ≤ ((N : ℝ) + 2) ^ 3 := one_le_pow₀ (by linarith [Nat.cast_nonneg (α := ℝ) N])
  have hbound : ∀ s ∈ sphere c (3 : ℝ), ‖riemannZeta s‖ ≤ ((N : ℝ) + 2) ^ 3 :=
    fun s hs => norm_zeta_le_cube_on_disk N hN c s hc (sphere_subset_closedBall hs)
  have hid : (∑ p ∈ (diskHead N c).image (fun z : ZeroPoint => z.1),
      divisor riemannZeta (closedBall c (11 / 4 : ℝ)) p) =
      ∑ z ∈ diskHead N c, (multiplicity z : ℤ) := by
    rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he)]
    apply Finset.sum_congr rfl
    intro z hz
    exact divisor_eq_multiplicity c (11 / 4) hsmall z
      (by simpa only [Metric.mem_closedBall, dist_eq_norm] using (mem_diskHead N c hc z).mp hz)
  have hj := finite_divisor_sum_le_jensen riemannZeta c (11 / 4) 3
    (((N : ℝ) + 2) ^ 3) (by norm_num) (by norm_num) hM hf hcne hbound
    ((diskHead N c).image (fun z : ZeroPoint => z.1))
  rw [hid, show (3 : ℝ) / (11 / 4) = 12 / 11 by norm_num] at hj
  have hj' : (∑ z ∈ diskHead N c, (multiplicity z : ℝ)) ≤
      Real.log (((N : ℝ) + 2) ^ 3 / ‖riemannZeta c‖) / Real.log (12 / 11 : ℝ) := by
    simpa only [Int.cast_sum, Int.cast_natCast] using hj
  have hl : Real.log (((N : ℝ) + 2) ^ 3 / ‖riemannZeta c‖) ≤
      Real.log (4 * ((N : ℝ) + 2) ^ 3) := by
    apply Real.log_le_log (by positivity)
    have hh := div_le_div_of_nonneg_left (by positivity : 0 ≤ ((N : ℝ) + 2) ^ 3)
      (by norm_num : (0 : ℝ) < 1 / 4) hcFloor
    simpa [div_eq_mul_inv, mul_comm] using hh
  have he : Real.log (4 * ((N : ℝ) + 2) ^ 3) = growthLog N := by
    rw [Real.log_mul (by norm_num) (by positivity), Real.log_pow]
    rfl
  apply hj'.trans
  rw [diskCountBudget, ← he]
  exact div_le_div_of_nonneg_right hl log_twelve_elevenths_pos.le

/-- The central horizontal segment lies strictly inside the Cauchy core disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9c66de4bbbee9d6cd6efd91614c1c2c5033a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
