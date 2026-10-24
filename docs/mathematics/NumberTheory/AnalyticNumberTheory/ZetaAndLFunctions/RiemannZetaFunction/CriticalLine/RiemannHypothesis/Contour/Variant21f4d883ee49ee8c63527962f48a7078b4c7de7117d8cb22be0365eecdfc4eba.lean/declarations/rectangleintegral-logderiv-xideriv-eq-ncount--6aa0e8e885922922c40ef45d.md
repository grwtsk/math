# rectangleIntegral'_logDeriv_xiDeriv_eq_Ncount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6987b16d-132b-abbf-b63c-c1c9682005bd",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral'_logDeriv_xiDeriv_eq_Ncount",
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
  "slug": "rectangleintegral-logderiv-xideriv-eq-ncount--6aa0e8e885922922c40ef45d",
  "source": {
    "blob": "d1c1cce630522694033ba857604ab4313c23ddd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa0e8e885922922c40ef45d5317255884f786fdf70b3a07abd7919d8099fb65",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6987b16d-132b-abbf-b63c-c1c9682005bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral'_logDeriv_xiDeriv_eq_Ncount (hF2 : XiDerivZerosInStrip) (hs : XiDerivSeam)
    {T₁ T₂ : ℝ} (hT : T₁ ≤ T₂) (hg₁ : GoodHeight T₁) (hg₂ : GoodHeight T₂) :
    RectangleIntegral' (logDeriv xiDeriv) (-1 + T₁ * I) (2 + T₂ * I) = (Ncount T₁ T₂ : ℂ) := by
  classical
  set z : ℂ := -1 + T₁ * I with hzdef
  set w : ℂ := 2 + T₂ * I with hwdef
  have hzre : z.re = -1 := by simp [z]
  have hzim : z.im = T₁ := by simp [z]
  have hwre : w.re = 2 := by simp [w]
  have hwim : w.im = T₂ := by simp [w]
  have hre : z.re ≤ w.re := by rw [hzre, hwre]; norm_num
  have him : z.im ≤ w.im := by rw [hzim, hwim]; exact hT
  have hmem : ∀ s : ℂ, s ∈ Rectangle z w ↔
      (-1 ≤ s.re ∧ s.re ≤ 2) ∧ (T₁ ≤ s.im ∧ s.im ≤ T₂) := by
    intro s
    simp only [Rectangle, mem_reProdIm, hzre, hzim, hwre, hwim,
      uIcc_of_le (show (-1 : ℝ) ≤ 2 by norm_num), uIcc_of_le hT, mem_Icc]
  have hf : AnalyticOnNhd ℂ xiDeriv (Rectangle z w) := xiDeriv_analyticOnNhd _
  have hg : AnalyticOnNhd ℂ (fun _ : ℂ => (1 : ℂ)) (Rectangle z w) := fun _ _ => analyticAt_const
  have hfin := hs.finite_window T₁ T₂
  have hZ : ∀ s ∈ Rectangle z w, xiDeriv s = 0 ↔ s ∈ hfin.toFinset := by
    intro s hsR
    rw [Set.Finite.mem_toFinset]
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsR
    constructor
    · intro h0
      exact ⟨h0, lt_of_le_of_ne hi1 (fun h' => hg₁ s h0 h'.symm), hi2⟩
    · rintro ⟨h0, _⟩
      exact h0
  have hZsub : ((hfin.toFinset : Finset ℂ) : Set ℂ) ⊆ Rectangle z w := by
    intro s hsZ
    rw [Finset.mem_coe, Set.Finite.mem_toFinset] at hsZ
    obtain ⟨h0, hi1, hi2⟩ := hsZ
    obtain ⟨ha, hb⟩ := hF2 s h0
    exact (hmem s).mpr ⟨⟨by linarith, by linarith⟩, hi1.le, hi2⟩
  have hborder : ∀ s ∈ RectangleBorder z w, xiDeriv s ≠ 0 := by
    intro s hsB h0
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp (rectangleBorder_subset_rectangle z w hsB)
    obtain ⟨ha, hb⟩ := hF2 s h0
    simp only [RectangleBorder, mem_union, mem_reProdIm, mem_singleton_iff, hzre, hzim, hwre,
      hwim] at hsB
    rcases hsB with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
    · exact hg₁ s h0 h'
    · linarith
    · exact hg₂ s h0 h'
    · linarith
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv hre him hf hg hborder
    hfin.toFinset hZ hZsub
  simp only [one_mul, mul_one] at key
  rw [show (fun s => logDeriv xiDeriv s) = logDeriv xiDeriv from rfl] at key
  rw [key]
  unfold Ncount
  have hset : zerosIn T₁ T₂ = {ρ | IsXiDerivZero ρ} ∩ {ρ | T₁ < ρ.im ∧ ρ.im ≤ T₂} := by
    ext ρ; simp [zerosIn]
  rw [hset, finsum_mem_eq_finite_toFinset_sum _ hfin, Nat.cast_sum]
  rfl

/-! ### the fold -/

/-- logDeriv ξ′ is continuous along the whole horizontal line at a good height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1c1cce630522694033ba857604ab4313c23ddd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
