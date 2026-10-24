# LocalHyps.toCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff23f552-a07d-b3eb-c14f-fffaf552b39d",
  "kind": "theorem",
  "lexical_name": "LocalHyps.toCore",
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
  "slug": "localhyps-tocore--00321048653ce433f1c82b65",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 458,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00321048653ce433f1c82b6566da93941078a5022a6b1947bd1b79ab3559a85b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff23f552-a07d-b3eb-c14f-fffaf552b39d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocalHyps.toCore {cϱ : ℝ} {p : Setting} {F : LocalFun} (hF : LocalHyps cϱ p F) :
    LocalHypsCore cϱ p F where
  four_le_cϱ := hF.four_le_cϱ
  lam_pos := hF.lam_pos
  lam_le_one := hF.lam_le_one
  one_le_w := hF.one_le_w
  w_le := hF.w_le
  one_le_l := hF.one_le_l
  phiHat_cont := hF.phiHat_cont
  phiHat_even := hF.phiHat_even
  phiHat_le_L := hF.phiHat_le_L
  phiHat_le_inv := hF.phiHat_le_inv
  phiHat_le_sq := hF.phiHat_le_sq
  phiHat_sq_integrable := hF.phiHat_sq_integrable
  phiHat_sq_mul_abs_integrable := hF.phiHat_sq_mul_abs_integrable
  integral_phiHat_sq_mul_abs_le := hF.integral_phiHat_sq_mul_abs_le
  phiHat_sq_mul_sq_integrable := hF.phiHat_sq_mul_sq_integrable
  integral_phiHat_sq_mul_sq_le := hF.integral_phiHat_sq_mul_sq_le
  phiHat_sq_integral := hF.phiHat_sq_integral
  phiHat_sq_fourier := hF.phiHat_sq_fourier
  g_nonneg := fun y => le_trans (le_max_right _ _) (hF.g_lower y)
  g_le_Aphi := hF.g_le_Aphi
  Aphi_le := hF.Aphi_le
  Phi_contDiff := hF.Phi_contDiff
  Phi_even := hF.Phi_even
  Phi_le_L := hF.Phi_le_L
  Phi_le_inv := hF.Phi_le_inv
  Phi_le_sq := hF.Phi_le_sq
  Phi_sq_integrable := hF.Phi_sq_integrable
  Phi_sq_mul_abs_integrable := hF.Phi_sq_mul_abs_integrable
  integral_Phi_sq_mul_abs_le := hF.integral_Phi_sq_mul_abs_le
  Phi_sq_mul_sq_integrable := hF.Phi_sq_mul_sq_integrable
  integral_Phi_sq_mul_sq_le := hF.integral_Phi_sq_mul_sq_le
  Phi_zero := hF.Phi_zero
  Phi_sq_integral := hF.Phi_sq_integral
  Phi_sq_fourier := hF.Phi_sq_fourier
  poisson := hF.poisson
  b_ge_half := by
    have h1 : 2 * p.w / p.L ≤ 1 / 4 := by
      rw [div_le_iff₀ hF.L_pos]
      linarith [hF.w_le]
    linarith [hF.b_lower]
  b_le_a := hF.b_le_a
  a_le_one := hF.a_le_one
  psi_integrable := hF.psi_integrable
  psi_sq_integrable := hF.psi_sq_integrable
  integral_psi_Ioi_le := hF.integral_psi_Ioi_le
  integral_psi_sq_le := hF.integral_psi_sq_le
  phiHat_le_psi := hF.phiHat_le_psi
  Phi_le_psi := hF.Phi_le_psi
  PiX_cont := hF.PiX_cont
  PiX_bound := hF.PiX_bound

/-- "uniformly for T ≥ T₀", Core-quantified: stronger than EventuallyAt
(fewer hypotheses on F). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
