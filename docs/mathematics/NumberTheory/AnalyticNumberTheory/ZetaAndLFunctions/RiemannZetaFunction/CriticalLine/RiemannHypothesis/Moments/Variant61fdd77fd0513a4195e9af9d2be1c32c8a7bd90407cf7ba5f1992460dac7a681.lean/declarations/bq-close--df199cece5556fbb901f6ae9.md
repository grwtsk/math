# bQ_close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23194836-23cf-b3a7-b5a1-9cf498a6c3ee",
  "kind": "theorem",
  "lexical_name": "bQ_close",
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
  "slug": "bq-close--df199cece5556fbb901f6ae9",
  "source": {
    "blob": "f0a72213f287ba46ecb30238049494931b51c24e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 199,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df199cece5556fbb901f6ae9d2e1b880bbc386cf29c4dee8a65f80f44f49ef7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23194836-23cf-b3a7-b5a1-9cf498a6c3ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bQ_close (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    |L⁻¹ * (∫ u, phiM (fQ L) ϱ L w u ^ 4) - 518783 / 600000| ≤ 2 * w / L := by
  have hw0 : 0 < w := by linarith
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  have hsub : (518783 : ℝ) / 600000 = L⁻¹ * ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u ^ 2 := by
    rw [setIntegral_congr_fun measurableSet_Icc (fun u hu => by show mQ L u ^ 2 = vQuartic (u / L) ^ 2; rw [mQ_core hL hu]),
      MeasureTheory.integral_Icc_eq_integral_Ioc,
      ← intervalIntegral.integral_of_le (by linarith : -(L/2) ≤ L/2),
      integral_scale (g := fun s => vQuartic s ^ 2) hL, integral_vQuartic_sq]
    field_simp
  have hwin : ∫ u, phiM (fQ L) ϱ L w u ^ 4 = ∫ u, mQ L u ^ 2 * Taper.phi ϱ L w u ^ 4 :=
    integral_congr_ae (ae_of_all _ fun u => phiMQ_pow_four_eq u)
  rw [hwin, hsub]
  have hcore := edge_estimate (h := fun u => mQ L u ^ 2) (p := fun u => Taper.phi ϱ L w u ^ 4) hL hw0 hwL'
    (fun u => by
      rw [abs_of_nonneg (sq_nonneg _)]
      calc mQ L u ^ 2 ≤ 1 ^ 2 := pow_le_pow_left₀ (mQ_nonneg u) (mQ_le_one u) 2
        _ = 1 := one_pow 2)
    (fun u => by positivity)
    (fun u => by
      calc Taper.phi ϱ L w u ^ 4 ≤ 1 ^ 4 := pow_le_pow_left₀ (Taper.phi_nonneg hϱ u) (Taper.phi_le_one hϱ u) 4
        _ = 1 := one_pow 4)
    (fun u hu => by show Taper.phi ϱ L w u ^ 4 = 1; rw [Taper.phi_eq_one hϱ hw0 hu, one_pow])
    (fun u hu => by show Taper.phi ϱ L w u ^ 4 = 0; rw [Taper.phi_eq_zero hϱ hw0 hu]; norm_num)
    ((Taper.phi_continuous hϱ hw0 hwL').pow 4) ((mQ_continuous hL).pow 2)
  have e : L⁻¹ * (∫ u, mQ L u ^ 2 * Taper.phi ϱ L w u ^ 4) - L⁻¹ * ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u ^ 2
      = L⁻¹ * ((∫ u, mQ L u ^ 2 * Taper.phi ϱ L w u ^ 4) - ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u ^ 2) := by
    ring
  rw [e, abs_mul, abs_of_pos (by positivity : (0:ℝ) < L⁻¹)]
  calc L⁻¹ * |(∫ u, mQ L u ^ 2 * Taper.phi ϱ L w u ^ 4) - ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u ^ 2|
      ≤ L⁻¹ * (2 * w) := mul_le_mul_of_nonneg_left hcore (by positivity)
    _ = 2 * w / L := by rw [div_eq_inv_mul]

/-! ### the autocorrelation vs the sharp one -/

/-- the sharp window 1_{[−L/2,L/2]}·v(·/L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0a72213f287ba46ecb30238049494931b51c24e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
