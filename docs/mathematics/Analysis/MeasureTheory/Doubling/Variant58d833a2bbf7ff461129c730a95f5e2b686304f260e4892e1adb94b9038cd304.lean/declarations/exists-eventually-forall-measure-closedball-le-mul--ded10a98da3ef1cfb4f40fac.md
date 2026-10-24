# exists_eventually_forall_measure_closedBall_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f12f00-2856-a55f-f956-d4b23a8c9533",
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
  "slug": "exists-eventually-forall-measure-closedball-le-mul--ded10a98da3ef1cfb4f40fac",
  "source": {
    "blob": "12e3486705083983217ae7fb5e2fc28baae3754c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 71,
    "path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded10a98da3ef1cfb4f40fac53943cf936815db1c783095e44e75dcab843413e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f12f00-2856-a55f-f956-d4b23a8c9533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eventually_forall_measure_closedBall_le_mul (K : ℝ) :
    ∃ C : ℝ≥0, ∀ᶠ ε in 𝓝[>] 0, ∀ x, ∀ t ≤ K, μ (closedBall x (t * ε)) ≤ C * μ (closedBall x ε) := by
  let C := doublingConstant μ
  have hμ :
    ∀ n : ℕ, ∀ᶠ ε in 𝓝[>] 0, ∀ x,
      μ (closedBall x ((2 : ℝ) ^ n * ε)) ≤ ↑(C ^ n) * μ (closedBall x ε) := fun n ↦ by
    induction n with
    | zero => simp
    | succ n ih =>
      replace ih := eventually_nhdsGT_zero_mul_left (two_pos : 0 < (2 : ℝ)) ih
      refine (ih.and (exists_measure_closedBall_le_mul' μ)).mono fun ε hε x => ?_
      calc
        μ (closedBall x ((2 : ℝ) ^ (n + 1) * ε)) = μ (closedBall x ((2 : ℝ) ^ n * (2 * ε))) := by
          rw [pow_succ, mul_assoc]
        _ ≤ ↑(C ^ n) * μ (closedBall x (2 * ε)) := hε.1 x
        _ ≤ ↑(C ^ n) * (C * μ (closedBall x ε)) := by gcongr; exact hε.2 x
        _ = ↑(C ^ (n + 1)) * μ (closedBall x ε) := by rw [← mul_assoc, pow_succ, ENNReal.coe_mul]
  rcases lt_or_le K 1 with (hK | hK)
  · refine ⟨1, ?_⟩
    simp only [ENNReal.coe_one, one_mul]
    refine eventually_mem_nhdsWithin.mono fun ε hε x t ht ↦ ?_
    gcongr
    nlinarith [mem_Ioi.mp hε]
  · use C ^ ⌈Real.logb 2 K⌉₊
    filter_upwards [hμ ⌈Real.logb 2 K⌉₊, eventually_mem_nhdsWithin] with ε hε hε₀ x t ht
    refine le_trans ?_ (hε x)
    gcongr
    · exact (mem_Ioi.mp hε₀).le
    · refine ht.trans ?_
      rw [← Real.rpow_natCast, ← Real.logb_le_iff_le_rpow]
      exacts [Nat.le_ceil _, by norm_num, by linarith]

/-- A variant of `IsUnifLocDoublingMeasure.doublingConstant` which allows for scaling the
radius by values other than `2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e3486705083983217ae7fb5e2fc28baae3754c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
