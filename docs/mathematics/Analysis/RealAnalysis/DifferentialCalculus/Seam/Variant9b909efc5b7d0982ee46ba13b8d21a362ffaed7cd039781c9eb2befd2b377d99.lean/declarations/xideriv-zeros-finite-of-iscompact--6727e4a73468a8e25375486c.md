# xiDeriv_zeros_finite_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a74eacd4-f3f5-60be-c846-e004824795e9",
  "kind": "theorem",
  "lexical_name": "xiDeriv_zeros_finite_of_isCompact",
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
  "slug": "xideriv-zeros-finite-of-iscompact--6727e4a73468a8e25375486c",
  "source": {
    "blob": "58375321162bbfb67cb0b2b9ce5a1574c8ee46c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6727e4a73468a8e25375486c71ad174131b974e47e4f1384ba40a924ed9f3741",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a74eacd4-f3f5-60be-c846-e004824795e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDeriv_zeros_finite_of_isCompact {K : Set ℂ} (hK : IsCompact K) :
    (K ∩ {ρ | IsXiDerivZero ρ}).Finite := by
  obtain ⟨z₀, hz₀⟩ := exists_xiDeriv_ne_zero
  obtain ⟨R, hR⟩ := (hK.isBounded.union (Bornology.isBounded_singleton (x := z₀))).subset_closedBall 0
  have hR0 : 0 ≤ R := by
    have : z₀ ∈ Metric.closedBall (0 : ℂ) R := hR (Or.inr rfl)
    rw [Metric.mem_closedBall] at this
    exact le_trans dist_nonneg this
  set z : ℂ := ((-R : ℝ) : ℂ) + ((-R : ℝ) : ℂ) * I with hz
  set w : ℂ := ((R : ℝ) : ℂ) + ((R : ℝ) : ℂ) * I with hw
  have hsub : Metric.closedBall (0 : ℂ) R ⊆ Rectangle z w := by
    intro s hs
    rw [Metric.mem_closedBall, dist_zero_right] at hs
    have hre := Complex.abs_re_le_norm s
    have him := Complex.abs_im_le_norm s
    rw [abs_le] at hre him
    have hzre : z.re = -R := by simp [hz]
    have hzim : z.im = -R := by simp [hz]
    have hwre : w.re = R := by simp [hw]
    have hwim : w.im = R := by simp [hw]
    simp only [Rectangle, mem_reProdIm, hzre, hzim, hwre, hwim, uIcc_of_le (by linarith : -R ≤ R), mem_Icc]
    exact ⟨⟨by linarith, by linarith⟩, ⟨by linarith, by linarith⟩⟩
  have hfin := Zeta23.Analytic.finite_zeros_rectangle (xiDeriv_analyticOnNhd (Rectangle z w))
    (hsub (hR (Or.inr rfl))) hz₀
  exact hfin.subset (fun s hs => ⟨hsub (hR (Or.inl hs.1)), hs.2⟩)

/-- under (F2) every height window is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58375321162bbfb67cb0b2b9ce5a1574c8ee46c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
