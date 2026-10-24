# gcdCutoffCorrectionRelaxedFactorMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfc57745-2c35-a05d-bd11-524689147600",
  "kind": "theorem",
  "lexical_name": "gcdCutoffCorrectionRelaxedFactorMass_le",
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
  "slug": "gcdcutoffcorrectionrelaxedfactormass-le--905a4bc50a4f2107dd1e7039",
  "source": {
    "blob": "2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 363,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:905a4bc50a4f2107dd1e7039e45941e5fc525ffa3d0fecb3188530524ef9dde3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc57745-2c35-a05d-bd11-524689147600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcdCutoffCorrectionRelaxedFactorMass_le
    {X Y : ℕ}
    (hY : 2 ≤ Y) :
    gcdCutoffCorrectionRelaxedFactorMass X Y ≤
      32 * (X : ℝ)^2 *
        (Real.log (Y : ℝ) / (Y : ℝ)) := by
  have hYpos : 0 < Y := by omega
  have hYreal : 0 < (Y : ℝ) := by exact_mod_cast hYpos
  have htail :
      ∀ a ∈ Finset.Icc 2 Y,
        (∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
          (((k : ℝ)^2)⁻¹)) ≤
        2 * (a : ℝ) / (Y : ℝ) := by
    intro a ha
    have hapos : 0 < a := by
      have := Finset.mem_Icc.mp ha
      omega
    calc
      (∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
        (((k : ℝ)^2)⁻¹)) ≤
        2 / (((Y / a + 1 : ℕ) : ℝ)) := by
          simpa using
            (Finset.sum_Ioo_inv_sq_le
              (α := ℝ) (Y / a) (4 * X + 1))
      _ ≤ 2 * (a : ℝ) / (Y : ℝ) :=
        two_div_div_succ_le hYpos hapos
  have hharm :
      (∑ a ∈ Finset.Icc 2 Y, ((a : ℝ)⁻¹)) ≤
        Real.log (Y : ℝ) := by
    have hI :
        Finset.Icc 2 Y =
          Finset.Icc 1 Y \ {1} := by
      ext a
      simp
      omega
    rw [hI, Finset.sum_sdiff
      (by simp : ({1} : Finset ℕ) ⊆ Finset.Icc 1 Y)]
    rw [harmonic_eq_sum_Icc]
    simp only [Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
    have hh := harmonic_le_one_add_log Y
    norm_num at hh ⊢
    linarith
  unfold gcdCutoffCorrectionRelaxedFactorMass
  calc
    (∑ a ∈ Finset.Icc 2 Y,
      ∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
        16 * (X : ℝ)^2 *
          (((a : ℝ)^2)⁻¹) *
          (((k : ℝ)^2)⁻¹)) =
      ∑ a ∈ Finset.Icc 2 Y,
        (16 * (X : ℝ)^2 *
          (((a : ℝ)^2)⁻¹)) *
          ∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
            (((k : ℝ)^2)⁻¹) := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.mul_sum]
    _ ≤
      ∑ a ∈ Finset.Icc 2 Y,
        (16 * (X : ℝ)^2 *
          (((a : ℝ)^2)⁻¹)) *
          (2 * (a : ℝ) / (Y : ℝ)) := by
      exact Finset.sum_le_sum fun a ha =>
        mul_le_mul_of_nonneg_left (htail a ha)
          (by positivity)
    _ =
      (32 * (X : ℝ)^2 / (Y : ℝ)) *
        ∑ a ∈ Finset.Icc 2 Y, ((a : ℝ)⁻¹) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a ha
      have hapos : 0 < (a : ℝ) := by
        exact_mod_cast (show 0 < a by
          have := Finset.mem_Icc.mp ha
          omega)
      field_simp
      ring
    _ ≤
      (32 * (X : ℝ)^2 / (Y : ℝ)) *
        Real.log (Y : ℝ) := by
      exact mul_le_mul_of_nonneg_left hharm (by positivity)
    _ =
      32 * (X : ℝ)^2 *
        (Real.log (Y : ℝ) / (Y : ℝ)) := by ring

/-- At the square-root cutoff the coefficient-weighted quotient mass has one
additional logarithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
