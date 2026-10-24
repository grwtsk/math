# weightedPrefix_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60dd1ef0-2d49-3080-b2e3-04d0b9138074",
  "kind": "theorem",
  "lexical_name": "weightedPrefix_above",
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
  "slug": "weightedprefix-above--f293b86b9fc6bf0e035f8fcf",
  "source": {
    "blob": "a20891b6fd74ae495aa25635f625364890d6e760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f293b86b9fc6bf0e035f8fcf44b225efb44faca2c2962be950a04b708d9f3f17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60dd1ef0-2d49-3080-b2e3-04d0b9138074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedPrefix_above {t : ℝ} (ht : onset ≤ t) :
    weightedPrefix t = Real.exp t - 2 + amplitude / 3 *
      (Real.exp (3 * t / 4) - Real.exp (3 * onset / 4)) := by
  unfold weightedPrefix
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (expDensity_intervalIntegrable 0 onset) (expDensity_intervalIntegrable onset t)]
  have hzero : (∫ s in 0..onset, Real.exp s * density s) = 0 :=
    weightedPrefix_below onset_pos.le le_rfl
  rw [hzero, zero_add]
  have heq (s : ℝ) (hs : s ∈ Ioo onset t) :
      Real.exp s * density s = Real.exp s + amplitude / 4 * Real.exp ((3 / 4 : ℝ) * s) := by
    rw [density_above hs.1, tailDensity]
    calc
      _ = Real.exp s + amplitude / 4 * (Real.exp s * Real.exp (-s / 4)) := by ring
      _ = _ := by rw [← Real.exp_add]; congr 2; ring
  rw [intervalIntegral.integral_congr_Ioo_of_le ht heq]
  have hi1 : IntervalIntegrable (fun s : ℝ => Real.exp s) volume onset t :=
    Real.continuous_exp.intervalIntegrable _ _
  have hi2 : IntervalIntegrable (fun s : ℝ => amplitude / 4 * Real.exp ((3 / 4 : ℝ) * s)) volume onset t :=
    (continuous_const.mul (Real.continuous_exp.comp (continuous_const.mul continuous_id))).intervalIntegrable _ _
  rw [intervalIntegral.integral_add hi1 hi2, intervalIntegral.integral_const_mul,
    show (∫ s in onset..t, Real.exp s) = Real.exp t - Real.exp onset by
      simpa only [one_mul, div_one] using integral_exp_rate 1 onset t (by norm_num),
    integral_exp_rate (3 / 4) _ _ (by norm_num)]
  simp only [onset, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  rw [show (3 / 4 : ℝ) * t = 3 * t / 4 by ring,
    show (3 / 4 : ℝ) * Real.log 2 = 3 * Real.log 2 / 4 by ring]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a20891b6fd74ae495aa25635f625364890d6e760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
