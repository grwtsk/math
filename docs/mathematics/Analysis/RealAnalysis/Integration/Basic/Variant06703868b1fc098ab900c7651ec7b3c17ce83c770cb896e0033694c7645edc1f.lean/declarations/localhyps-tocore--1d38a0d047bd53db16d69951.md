# LocalHyps.toCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffa66948-a696-bddf-0f48-dc66422f80c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a049aa8f-37d1-7a36-878a-5497231104ab",
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
  "slug": "localhyps-tocore--1d38a0d047bd53db16d69951",
  "source": {
    "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 450,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d38a0d047bd53db16d69951c9e596ebfca713f968e0334f662abc99a53760b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a049aa8f-37d1-7a36-878a-5497231104ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–504.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7555aaf5deacab10b78c258feefd3537a539fd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
