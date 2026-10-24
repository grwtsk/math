# exists_eventually_forall_measure_closedBall_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1a745fb-7fa1-f5e0-f181-f0f65248ecb2",
  "kind": "theorem",
  "lexical_name": "exists_eventually_forall_measure_closedBall_le_mul",
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
  "slug": "exists-eventually-forall-measure-closedball-le-mul--46168896a527754b9837be77",
  "source": {
    "blob": "b62ccaaa06ff0fbbd93af095056621562e99b187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 80,
    "path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46168896a527754b9837be7789b8254a5b86c67af93c89c1e92fa4db135f3528",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1a745fb-7fa1-f5e0-f181-f0f65248ecb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eventually_forall_measure_closedBall_le_mul (K : ℝ) :
    ∃ C : ℝ≥0,
      ∀ᶠ ε in 𝓝[>] 0, ∀ (x t) (_ : t ≤ K), μ (closedBall x (t * ε)) ≤ C * μ (closedBall x ε) := by
  let C := doublingConstant μ
  have hμ :
    ∀ n : ℕ, ∀ᶠ ε in 𝓝[>] 0, ∀ x,
      μ (closedBall x ((2 : ℝ) ^ n * ε)) ≤ ↑(C ^ n) * μ (closedBall x ε) := by
    intro n
    induction' n with n ih
    · simp
    replace ih := eventually_nhdsWithin_pos_mul_left (two_pos : 0 < (2 : ℝ)) ih
    refine' (ih.and (exists_measure_closedBall_le_mul' μ)).mono fun ε hε x => _
    calc
      μ (closedBall x ((2 : ℝ) ^ (n + 1) * ε)) = μ (closedBall x ((2 : ℝ) ^ n * (2 * ε))) := by
        rw [pow_succ', mul_assoc]
      _ ≤ ↑(C ^ n) * μ (closedBall x (2 * ε)) := (hε.1 x)
      _ ≤ ↑(C ^ n) * (C * μ (closedBall x ε)) := by gcongr; exact hε.2 x
      _ = ↑(C ^ (n + 1)) * μ (closedBall x ε) := by rw [← mul_assoc, pow_succ', ENNReal.coe_mul]
  rcases lt_or_le K 1 with (hK | hK)
  · refine' ⟨1, _⟩
    simp only [ENNReal.coe_one, one_mul]
    exact
      eventually_mem_nhdsWithin.mono fun ε hε x t ht =>
        measure_mono <| closedBall_subset_closedBall (by nlinarith [mem_Ioi.mp hε])
  · refine'
      ⟨C ^ ⌈Real.logb 2 K⌉₊,
        ((hμ ⌈Real.logb 2 K⌉₊).and eventually_mem_nhdsWithin).mono fun ε hε x t ht =>
          le_trans (measure_mono <| closedBall_subset_closedBall _) (hε.1 x)⟩
    refine' mul_le_mul_of_nonneg_right (ht.trans _) (mem_Ioi.mp hε.2).le
    conv_lhs => rw [← Real.rpow_logb two_pos (by norm_num) (by linarith : 0 < K)]
    rw [← Real.rpow_nat_cast]
    exact Real.rpow_le_rpow_of_exponent_le one_le_two (Nat.le_ceil (Real.logb 2 K))
#align is_unif_loc_doubling_measure.exists_eventually_forall_measure_closed_ball_le_mul IsUnifLocDoublingMeasure.exists_eventually_forall_measure_closedBall_le_mul

/-- A variant of `IsUnifLocDoublingMeasure.doublingConstant` which allows for scaling the
radius by values other than `2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b62ccaaa06ff0fbbd93af095056621562e99b187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
