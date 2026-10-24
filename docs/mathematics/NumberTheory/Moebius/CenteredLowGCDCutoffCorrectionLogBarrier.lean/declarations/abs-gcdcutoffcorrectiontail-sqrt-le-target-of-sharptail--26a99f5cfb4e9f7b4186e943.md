# abs_gcdCutoffCorrectionTail_sqrt_le_target_of_sharpTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a45075f-b7a6-e5b4-cae1-cae014f2a1e3",
  "kind": "theorem",
  "lexical_name": "abs_gcdCutoffCorrectionTail_sqrt_le_target_of_sharpTail",
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
  "slug": "abs-gcdcutoffcorrectiontail-sqrt-le-target-of-sharptail--26a99f5cfb4e9f7b4186e943",
  "source": {
    "blob": "2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 637,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26a99f5cfb4e9f7b4186e943d79cbae59cb4d4b067a26c84647230eb73214334",
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

Occurrence: `result:8a45075f-b7a6-e5b4-cae1-cae014f2a1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_gcdCutoffCorrectionTail_sqrt_le_target_of_sharpTail
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hsharp :
      ∀ r ∈ highGCDCutoffIndexSet X X.sqrt,
        |centeredDivisibilityTail X w r| ≤
          ((4 * X / r : ℕ) : ℝ) *
            Real.log ((4 * X : ℕ) : ℝ)) :
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
      256 * centeredLowGCDTargetScale X := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  let ell : ℝ := Real.log (X : ℝ)
  have hellOne : 1 ≤ ell := by
    unfold ell
    have hXpos : 0 < (X : ℝ) := by
      exact_mod_cast (show 0 < X by omega)
    rw [Real.le_log_iff_exp_le hXpos]
    exact Real.exp_one_lt_three.le.trans
      (by exact_mod_cast (show 3 ≤ X by omega))
  have hLle : L ≤ 2 * ell := by
    have hlogFour :
        Real.log (4 : ℝ) ≤ ell := by
      unfold ell
      exact Real.log_le_log (by norm_num)
        (by exact_mod_cast hX)
    have hLeq :
        L = Real.log (4 : ℝ) + ell := by
      unfold L ell
      rw [show (((4 * X : ℕ) : ℝ)) =
          (4 : ℝ) * (X : ℝ) by norm_num,
        Real.log_mul (by norm_num : (4 : ℝ) ≠ 0)
          (by exact_mod_cast (show X ≠ 0 by omega))]
    linarith
  have hmass :=
    gcdCutoffCorrectionWeightedQuotientMass_sqrt_le hX
  have hsum :
      |gcdCutoffCorrectionTail X X.sqrt w| ≤
        gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
          L^2 := by
    unfold gcdCutoffCorrectionTail
    calc
      |∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
        gcdCutoffCorrectionCoefficient X.sqrt r *
          (centeredDivisibilityTail X w r)^2| ≤
        ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (centeredDivisibilityTail X w r)^2 := by
              calc
                |_ | ≤
                  ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
                    |gcdCutoffCorrectionCoefficient X.sqrt r *
                      (centeredDivisibilityTail X w r)^2| :=
                        Finset.abs_sum_le_sum_abs _ _
                _ = _ := by
                  apply Finset.sum_congr rfl
                  intro r hr
                  rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
      _ ≤
        ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (((4 * X / r : ℕ) : ℝ)^2) * L^2 := by
        apply Finset.sum_le_sum
        intro r hr
        have hs := hsharp r hr
        have hsquare :=
          mul_self_le_mul_self (abs_nonneg _) hs
        have hsquare' :
            (centeredDivisibilityTail X w r)^2 ≤
              (((4 * X / r : ℕ) : ℝ)^2) * L^2 := by
          simpa [sq_abs, L] using hsquare
        exact mul_le_mul_of_nonneg_left hsquare'
          (abs_nonneg _)
      _ = gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
          L^2 := by
        unfold gcdCutoffCorrectionWeightedQuotientMass
        rw [Finset.sum_mul]
  calc
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
        gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
          L^2 := hsum
    _ ≤
      (64 * (X : ℝ) * Real.sqrt (X : ℝ) * ell) *
        (2 * ell)^2 := by
      gcongr
    _ = 256 * (X : ℝ) * Real.sqrt (X : ℝ) *
        ell^3 := by ring
    _ ≤ 256 * (X : ℝ) * Real.sqrt (X : ℝ) *
        ell^4 := by
      gcongr
      calc
        ell^3 = ell^3 * 1 := by ring
        _ ≤ ell^3 * ell := by
          exact mul_le_mul_of_nonneg_left
            hellOne (pow_nonneg ell 3)
        _ = ell^4 := by ring
    _ = 256 * centeredLowGCDTargetScale X := by
      unfold centeredLowGCDTargetScale ell
      ring

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
