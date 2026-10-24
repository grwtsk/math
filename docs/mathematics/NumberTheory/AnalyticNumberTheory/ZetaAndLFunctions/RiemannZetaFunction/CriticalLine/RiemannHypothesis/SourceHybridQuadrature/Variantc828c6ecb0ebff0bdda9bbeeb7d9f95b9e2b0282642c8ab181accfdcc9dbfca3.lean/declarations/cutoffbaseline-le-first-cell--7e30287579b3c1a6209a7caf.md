# cutoffBaseline_le_first_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4deef3d-3f00-2fc5-02cd-41dbf771f61c",
  "kind": "theorem",
  "lexical_name": "cutoffBaseline_le_first_cell",
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
  "slug": "cutoffbaseline-le-first-cell--7e30287579b3c1a6209a7caf",
  "source": {
    "blob": "235b434ffc94d0d27ef59553da862c49c3dcd5b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variantc828c6ecb0ebff0bdda9bbeeb7d9f95b9e2b0282642c8ab181accfdcc9dbfca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e30287579b3c1a6209a7cafc635a8c18d4af7444a62b2096fcc79557ad41046",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variantc828c6ecb0ebff0bdda9bbeeb7d9f95b9e2b0282642c8ab181accfdcc9dbfca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4deef3d-3f00-2fc5-02cd-41dbf771f61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffBaseline_le_first_cell (A : ℝ) (hA : 1 ≤ A) :
    cutoffBaseline A ≤ -firstCellPayment := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hlt := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    (by norm_num : (2 : ℝ) ≠ 1)
  have hupper : Real.log 2 ≤ 2 * A := by linarith
  have hfun : (∫ s in 0..Real.log 2, cutoffPhase s * Real.exp (-s / 2)) =
      ∫ s in 0..Real.log 2, Real.exp (s / 2) - Real.exp (-s / 2) := by
    apply intervalIntegral.integral_congr_Ioo_of_le hlog.le
    intro s hs
    have hfloor : ⌊Real.exp s⌋₊ = 1 :=
      (Nat.floor_eq_iff (Real.exp_pos s).le).mpr ⟨
        by simpa using Real.one_le_exp hs.1.le,
        by
          have he := Real.exp_lt_exp.mpr hs.2
          rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at he
          norm_num at he ⊢
          exact he⟩
    dsimp only
    unfold cutoffPhase
    rw [hfloor, Nat.cast_one, sub_mul, one_mul, ← Real.exp_add]
    rw [show s + (-s / 2) = s / 2 by ring]
  have hd (s : ℝ) : HasDerivAt
      (fun t => 2 * Real.exp (t / 2) + 2 * Real.exp (-t / 2))
      (Real.exp (s / 2) - Real.exp (-s / 2)) s := by
    exact ((((hasDerivAt_id s).div_const 2).exp).const_mul 2 |>.add
      ((((hasDerivAt_id s).neg.div_const 2).exp).const_mul 2)).congr_deriv (by dsimp; ring)
  have hfirst : (∫ s in 0..Real.log 2, cutoffPhase s * Real.exp (-s / 2)) =
      2 * firstCellPayment := by
    rw [hfun, intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
      ((by fun_prop : Continuous (fun s : ℝ =>
        Real.exp (s / 2) - Real.exp (-s / 2))).intervalIntegrable 0 (Real.log 2))]
    have he : Real.exp (Real.log 2 / 2) = Real.sqrt 2 := by
      rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    have hen : Real.exp (-Real.log 2 / 2) = 1 / Real.sqrt 2 := by
      rw [neg_div, Real.exp_neg, he, one_div]
    rw [he, hen]
    simp only [zero_div, neg_zero, Real.exp_zero, mul_one]
    unfold firstCellPayment
    ring
  have hnonneg : 0 ≤ᵐ[volume.restrict (Ioc 0 (2 * A))]
      (fun s => cutoffPhase s * Real.exp (-s / 2)) :=
    Filter.Eventually.of_forall (fun s =>
      mul_nonneg (cutoffPhase_bounds s).1 (Real.exp_pos _).le)
  have hi := intervalIntegral.integral_mono_interval
    (show (0 : ℝ) ≤ 0 by rfl) hlog.le hupper hnonneg (weightedPhase_intervalIntegrable A)
  rw [hfirst] at hi
  unfold cutoffBaseline
  linarith

/-- Curvature controls the exact signed source kernel near its physical unit anchor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variantc828c6ecb0ebff0bdda9bbeeb7d9f95b9e2b0282642c8ab181accfdcc9dbfca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variantc828c6ecb0ebff0bdda9bbeeb7d9f95b9e2b0282642c8ab181accfdcc9dbfca3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235b434ffc94d0d27ef59553da862c49c3dcd5b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
