# actualPeriodicProfile_deriv_time_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c1eef68-9178-a28d-255e-b3137a934557",
  "kind": "theorem",
  "lexical_name": "actualPeriodicProfile_deriv_time_norm_le",
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
  "slug": "actualperiodicprofile-deriv-time-norm-le--b429f03251b0d2033afda1ae",
  "source": {
    "blob": "193a6c29898d171f0d933fc2e86c72dd9c1ae152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 301,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt03/Variant1f1db8fd81e8ec3fa1ce958127508627850175ed54311f5cab8dafb59c9f1fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b429f03251b0d2033afda1ae2c0451b63a449b1be489fbf2ae0a72415d962f64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt03/Variant1f1db8fd81e8ec3fa1ce958127508627850175ed54311f5cab8dafb59c9f1fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c1eef68-9178-a28d-255e-b3137a934557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicProfile_deriv_time_norm_le {A u : ℝ}
    (hA : 91 ≤ A) (hu : 2 ≤ u) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      |deriv (actualPeriodicPhysicalCellProfile A t) u|) ≤
        1072 * Real.exp A / (A ^ 4 * u ^ 3) := by
  have hup : 0 < u := by linarith
  apply restrict_supported_time_norm (by linarith : 1 ≤ A) hu
    (fun t => deriv (actualPeriodicPhysicalCellProfile A t) u)
    (profile_deriv_time_continuous (by linarith : 0 < A) hup)
    (fun t ht => profile_deriv_zero_right (by linarith : 1 ≤ A) hup (by linarith))
    (by positivity)
  intro L hLe hL
  have hc := profile_deriv_time_continuous (by linarith : 0 < A) hup
  have hm := intervalIntegral.integral_mono_on (μ := volume) hL (hc.abs.intervalIntegrable 0 L)
    ((by fun_prop : Continuous (fun t : ℝ => 67 / A ^ 4 / u ^ 2 *
      Real.exp (-Real.log u / 2) * (1 + (3 / 2 : ℝ) * (L - t) +
        (L - t) ^ 2 / 8 + (L - t) ^ 3 / 16) * Real.exp (t / 2))).intervalIntegrable 0 L)
    (fun t ht => by
      have hz : t + Real.log u ≤ 2 * A := by linarith [ht.2]
      have hj := transported_jet_edge_abs_le hA hz
      rw [show 2 * A - (t + Real.log u) = L - t by rw [hLe]; ring] at hj
      rw [actualPeriodicPhysicalCellProfile_deriv (by linarith : 0 < A) hup t,
        actualPeriodicTransportKernel_eq (by linarith : 0 < A) t (Real.log u),
        abs_div, abs_mul, abs_of_pos (by positivity :
          0 < Real.exp (t / 2) * Real.exp (-Real.log u / 2)),
        abs_of_pos (sq_pos_of_pos hup)]
      calc
        _ ≤ (Real.exp (t / 2) * Real.exp (-Real.log u / 2) *
          (67 / A ^ 4 * (1 + (3 / 2 : ℝ) * (L - t) + (L - t) ^ 2 / 8 +
            (L - t) ^ 3 / 16))) / u ^ 2 :=
          div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hj (by positivity))
            (sq_nonneg u)
        _ = _ := by ring)
  have heq : (∫ t in 0..L, 67 / A ^ 4 / u ^ 2 * Real.exp (-Real.log u / 2) *
      (1 + (3 / 2 : ℝ) * (L - t) + (L - t) ^ 2 / 8 + (L - t) ^ 3 / 16) *
        Real.exp (t / 2)) = 67 / A ^ 4 / u ^ 2 * Real.exp (-Real.log u / 2) *
      ∫ t in 0..L, (1 + (3 / 2 : ℝ) * (L - t) + (L - t) ^ 2 / 8 +
        (L - t) ^ 3 / 16) * Real.exp (t / 2) := by
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  rw [heq] at hm
  have hb : (∫ t in 0..L, |deriv (actualPeriodicPhysicalCellProfile A t) u|) ≤
      1072 / A ^ 4 / u ^ 2 * Real.exp (-Real.log u / 2) * Real.exp (L / 2) := by
    apply hm.trans
    calc
      _ ≤ 67 / A ^ 4 / u ^ 2 * Real.exp (-Real.log u / 2) *
          (16 * Real.exp (L / 2)) :=
        mul_le_mul_of_nonneg_left (transported_edge_moments_le hL) (by positivity)
      _ = _ := by ring
  apply hb.trans_eq
  have he : Real.exp (-Real.log u / 2) * Real.exp (L / 2) = Real.exp A / u := by
    rw [← Real.exp_add, hLe,
      show -Real.log u / 2 + (2 * A - Real.log u) / 2 = A - Real.log u by ring,
      Real.exp_sub, Real.exp_log hup]
  calc
    _ = 1072 / A ^ 4 / u ^ 2 *
        (Real.exp (-Real.log u / 2) * Real.exp (L / 2)) := by ring
    _ = _ := by rw [he]; field_simp <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt03/Variant1f1db8fd81e8ec3fa1ce958127508627850175ed54311f5cab8dafb59c9f1fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt03/Variant1f1db8fd81e8ec3fa1ce958127508627850175ed54311f5cab8dafb59c9f1fdb.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `193a6c29898d171f0d933fc2e86c72dd9c1ae152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
