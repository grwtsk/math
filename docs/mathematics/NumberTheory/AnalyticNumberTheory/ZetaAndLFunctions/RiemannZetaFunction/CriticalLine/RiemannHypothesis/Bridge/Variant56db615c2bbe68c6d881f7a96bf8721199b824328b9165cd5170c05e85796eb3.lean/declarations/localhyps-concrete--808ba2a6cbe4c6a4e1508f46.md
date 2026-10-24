# localHyps_concrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a48ac51-0206-0d54-b980-bbb8db9b58a2",
  "kind": "theorem",
  "lexical_name": "localHyps_concrete",
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
  "slug": "localhyps-concrete--808ba2a6cbe4c6a4e1508f46",
  "source": {
    "blob": "3b6c589412aa90a0d3c47f870704d995ec43e5dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant56db615c2bbe68c6d881f7a96bf8721199b824328b9165cd5170c05e85796eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808ba2a6cbe4c6a4e1508f46dff83142c33798008a35b3ce4d9a396f93cbd0b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant56db615c2bbe68c6d881f7a96bf8721199b824328b9165cd5170c05e85796eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a48ac51-0206-0d54-b980-bbb8db9b58a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localHyps_concrete {P : Params} (hP : P.Valid) {T : ℝ} (hwL : 8 * P.w ≤ P.L T)
    (hl : 1 ≤ l T) (hX : 1 ≤ P.X T) : LocalHyps P.crho (P.toSetting T) (P.localFun T) where
  four_le_cϱ := by rw [Params.crho_eq]; exact Taper.four_le_cRho hP.taper
  lam_pos := hP.lam_pos
  lam_le_one := hP.lam_le_one
  one_le_w := hP.one_le_w
  w_le := by show P.w ≤ P.L T / 8; linarith
  one_le_l := hl
  phiHat_cont := Params.phiHatR_continuous hP hwL
  phiHat_even := fun r => Params.phiHatR_even r
  phiHat_le_L := Params.abs_phiHatR_le_L hP hwL
  phiHat_le_inv := Params.abs_phiHatR_mul_abs_le hP hwL
  phiHat_le_sq := Params.abs_phiHatR_mul_sq_le hP hwL
  phiHat_sq_integrable := Params.integrable_phiHatR_sq hP hwL
  phiHat_sq_mul_abs_integrable := Params.integrable_phiHatR_sq_mul_abs hP hwL
  integral_phiHat_sq_mul_abs_le := Params.integral_phiHatR_sq_mul_abs_le hP hwL
  phiHat_sq_mul_sq_integrable := Params.integrable_phiHatR_sq_mul_sq hP hwL
  integral_phiHat_sq_mul_sq_le := Params.integral_phiHatR_sq_mul_sq_le hP hwL
  phiHat_sq_integral := Params.integral_phiHatR_sq hP hwL
  phiHat_sq_fourier := Params.integral_phiHatR_sq_mul_cos hP hwL
  g_lower := Params.g_ge hP hwL
  g_le_Aphi := Params.g_le_Aphi hP hwL
  Aphi_le := Params.Aphi_le hP hwL
  Phi_contDiff := Params.PhiR_contDiff_one hP hwL
  Phi_even := fun r => Params.PhiR_even r
  Phi_le_L := Params.abs_PhiR_le_L hP hwL
  Phi_le_inv := Params.abs_PhiR_mul_abs_le hP hwL
  Phi_le_sq := Params.abs_PhiR_mul_sq_le hP hwL
  Phi_sq_integrable := Params.integrable_PhiR_sq hP hwL
  Phi_sq_mul_abs_integrable := Params.integrable_PhiR_sq_mul_abs hP hwL
  integral_Phi_sq_mul_abs_le := Params.integral_PhiR_sq_mul_abs_le hP hwL
  Phi_sq_mul_sq_integrable := Params.integrable_PhiR_sq_mul_sq hP hwL
  integral_Phi_sq_mul_sq_le := Params.integral_PhiR_sq_mul_sq_le hP hwL
  Phi_zero := Params.PhiR_zero hP hwL
  Phi_sq_integral := Params.integral_PhiR_sq hP hwL
  Phi_sq_fourier := Params.integral_PhiR_sq_mul_cos hP hwL
  poisson := Params.hasSum_phiHatR_mul hP hwL
  b_lower := Params.one_sub_le_b hP hwL
  b_le_a := Params.b_le_a hP hwL
  a_le_one := Params.a_le_one hP hwL
  PiX_cont := PiX_continuous (Real.exp_pos _)
  PiX_bound := PiX_abs_le hX
  psi_integrable := by rw [psiA_concrete]; exact Params.psi'_integrable hP hwL
  psi_sq_integrable := by simpa only [psiA_concrete] using Params.psi'_sq_integrable hP hwL
  integral_psi_Ioi_le := by
    simpa only [psiA_concrete, Params.toSetting_L, Params.toSetting_w] using
      Params.integral_psi'_Ioi_le hP hwL
  integral_psi_sq_le := by
    simpa only [psiA_concrete, Params.toSetting_L] using Params.integral_psi'_sq_le hP hwL
  phiHat_le_psi := by
    simpa only [psiA_concrete, Params.localFun_phiHat] using Params.abs_phiHatR_le_psi' hP hwL
  Phi_le_psi := by
    simpa only [psiA_concrete, Params.localFun_Phi] using Params.abs_PhiR_le_psi' hP hwL

/-- The concrete data satisfy `LocalHyps P.crho` for all large `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant56db615c2bbe68c6d881f7a96bf8721199b824328b9165cd5170c05e85796eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant56db615c2bbe68c6d881f7a96bf8721199b824328b9165cd5170c05e85796eb3.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6c589412aa90a0d3c47f870704d995ec43e5dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
