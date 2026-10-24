# ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1ef4ce9-dc67-d1d5-734b-e1ef1e2d57c2",
  "kind": "theorem",
  "lexical_name": "ratio",
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
  "slug": "ratio--fafdecc912f32aa67d87de50",
  "source": {
    "blob": "d1934960950af75446e27ed57e91a2883188050c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 816,
    "line": 783,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fafdecc912f32aa67d87de50275e57f3942d2e116a66914b35f4effd963747bf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1ef4ce9-dc67-d1d5-734b-e1ef1e2d57c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–816.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratio : EvBound (fun T => D.trG T ^ 2 / D.trG2 T - Ffun (P.lam1 T) * D.Ncnt T)
    (fun T => P.calE T * (Ffun (P.lam1 T) * D.Ncnt T)) := by
  have hlam := h.lam_pos
  have hlam1 := h.lam_le_one
  have hw : 0 ≤ P.w := by linarith [h.one_le_w]
  obtain ⟨C₁, hC₁, h1⟩ := (tr1' h).eventually_le
  obtain ⟨C₂, hC₂, h2⟩ := (tr2 h).eventually_le
  obtain ⟨A, hA, hN⟩ := h.rvm.eventually_le
  have hcal := calE_tendsto_zero hlam hlam1 hw
  have hs1 : ∀ᶠ T in atTop, C₁ * P.calE T ≤ 1 / 2 := by
    filter_upwards [hcal.eventually (Iio_mem_nhds (show (0:ℝ) < 1 / (2 * C₁) by positivity))]
      with T hT
    rw [lt_div_iff₀ (by positivity)] at hT
    linarith
  have hs2 : ∀ᶠ T in atTop, C₂ * P.calE T ≤ 1 / 2 := by
    filter_upwards [hcal.eventually (Iio_mem_nhds (show (0:ℝ) < 1 / (2 * C₂) by positivity))]
      with T hT
    rw [lt_div_iff₀ (by positivity)] at hT
    linarith
  refine EvBound.of_eventually_le (c := 2 * (2 * π * A + 5 * C₁ + C₂)) (by positivity) ?_
  filter_upwards [h1, h2, hN, hs1, hs2, regime h, calE_ge_rpow hlam hw,
    calE_nonneg_eventually hlam hw, Ncnt_pos h, eventually_ge_atTop (2 * π * A)]
    with T h1 h2 hN hs1 hs2 hreg hEr hE0 hN0 hTA
  obtain ⟨hT, hl, hlog, hL, hX, hLl, hXT⟩ := hreg
  have hET : 1 / T ≤ P.calE T := by
    refine le_trans ?_ hEr
    rw [one_div, ← Real.rpow_neg_one]
    exact Real.rpow_le_rpow_of_exponent_le hT (by linarith)
  exact ratio_pointwise T (P.L T) (ell1 T) (l T) (P.calE T) (D.Ncnt T) (D.trG T) (D.trG2 T)
    A C₁ C₂ hT (by linarith) (hl.trans (l_le_ell1 T)) (l_le_ell1 T) hN0 hE0 hET hA.le hC₁.le
    hC₂.le hs1 hs2 hTA h1 h2 hN

/-- **Theorem [thm:traces]** (§5 of the paper, "Summary"), assembled: the content
`TracesBounds` holds for the data `D` under `Facts D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1934960950af75446e27ed57e91a2883188050c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
