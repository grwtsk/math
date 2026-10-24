# verticals_eq_F

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4123264-60a0-1287-7bfd-2455b5476522",
  "kind": "theorem",
  "lexical_name": "verticals_eq_F",
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
  "slug": "verticals-eq-f--1aff31dc69ca7f0cd417c602",
  "source": {
    "blob": "78f08195227666cd76b545a77cdaa84a7f97be51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aff31dc69ca7f0cd417c60230d577b96214d38c6379e265a46a0ba7c7cc53ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4123264-60a0-1287-7bfd-2455b5476522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticals_eq_F (hFc : Continuous fun t : ℝ => F ((c : ℂ) + t * I))
    (hsymm : ∀ t : ℝ, F (1 - ((c : ℂ) + t * I)) = -F ((c : ℂ) + t * I))
    (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) (R : ℝ) :
    VIntegral (fun s => Hfn k s * F s) c (-R) R
      - VIntegral (fun s => Hfn k s * F s) (1 - c) (-R) R
      = I • ∫ t in (-R)..R, FlineF F k c t := by
  have hHc := continuous_Hfn_line hk hkc c
  have hH2 : Continuous (fun t : ℝ => Hfn k (1 - c - t * I)) := by
    have h := continuous_Hfn_line hk hkc (1 - c)
    have : (fun t : ℝ => Hfn k (1 - c - t * I))
        = (fun t : ℝ => Hfn k (((1 - c : ℝ) : ℂ) + t * I)) ∘ fun t : ℝ => -t := by
      funext t; simp only [Function.comp_apply, one_sub_cast]
    rw [this]; exact h.comp continuous_neg
  have hleft : ∀ y : ℝ, Hfn k (((1 - c : ℝ) : ℂ) + y * I) * F (((1 - c : ℝ) : ℂ) + y * I)
      = -(Hfn k (1 - c - ((-y : ℝ) : ℂ) * I) * F ((c : ℂ) + ((-y : ℝ) : ℂ) * I)) := by
    intro y
    have hs : ((1 - c : ℝ) : ℂ) + y * I = 1 - ((c : ℂ) + ((-y : ℝ) : ℂ) * I) := by push_cast; ring
    rw [hs, hsymm]
    have : (1:ℂ) - ((c : ℂ) + ((-y:ℝ):ℂ) * I) = 1 - c - ((-y : ℝ) : ℂ) * I := by ring
    rw [this]; ring
  have hI1 : IntervalIntegrable (fun t : ℝ => Hfn k ((c : ℂ) + t * I) * F ((c : ℂ) + t * I))
      volume (-R) R := (hHc.mul hFc).intervalIntegrable _ _
  have hI2 : IntervalIntegrable (fun t : ℝ => Hfn k (1 - c - t * I) * F ((c : ℂ) + t * I))
      volume (-R) R := (hH2.mul hFc).intervalIntegrable _ _
  have hfold : (∫ y in (-R)..R, Hfn k (((1 - c : ℝ) : ℂ) + y * I) * F (((1 - c : ℝ) : ℂ) + y * I))
      = -∫ t in (-R)..R, Hfn k (1 - c - t * I) * F ((c : ℂ) + t * I) := by
    simp_rw [hleft]
    rw [intervalIntegral.integral_neg]
    have h := intervalIntegral.integral_comp_neg (a := -R) (b := R)
      (fun t : ℝ => Hfn k (1 - c - t * I) * F ((c : ℂ) + t * I))
    simp only [neg_neg] at h
    rw [← h]
  dsimp only [VIntegral]
  rw [hfold, ← smul_sub, sub_neg_eq_add, ← intervalIntegral.integral_add hI1 hI2]
  congr 1
  refine intervalIntegral.integral_congr fun t _ => ?_
  simp only [FlineF]
  ring

/-! ## The horizontal sides -/

/-- **Horizontal sides vanish**: ‖H‖ ≤ C_H/(1+R_j²) on the segment and ‖F‖ ≤ K log²(j+j₀+3) there,
R_j ≥ j + j₀ ≥ 1, so  ‖HIntegral‖ ≤ (2c−1)·C_H·K·log²/(1+R_j²) → 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant6875f8684bf0f7a457957ea5e8ab6c556173daedd2dbcd16fb90ca7258250dba.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78f08195227666cd76b545a77cdaa84a7f97be51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
