# LocalHypsCore.toCoreW

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
      "line": 648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c201e445-d56a-e7f3-dbc1-aef38217886a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85604b51-c0e1-d600-c2df-ce64f8362931",
  "kind": "lemma",
  "lexical_name": "LocalHypsCore.toCoreW",
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
  "slug": "localhypscore-tocorew--06f9ab24ce58521454605346",
  "source": {
    "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 651,
    "line": 648,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06f9ab24ce585214546053461a56f42a208ebdf17d51ae2dba6e0ab6163e11f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85604b51-c0e1-d600-c2df-ce64f8362931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–651.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocalHypsCore.toCoreW {cϱ : ℝ} {p : Setting} {F : LocalFun} (hF : LocalHypsCore cϱ p F) :
    LocalHypsCoreW cϱ p F :=
  ⟨hF.four_le_cϱ, hF.lam_pos, hF.one_le_w, hF.w_le, hF.one_le_l, hF.phiHat_cont, hF.phiHat_even, hF.phiHat_le_L, hF.phiHat_le_inv, hF.phiHat_le_sq, hF.phiHat_sq_integrable, hF.phiHat_sq_mul_abs_integrable, hF.integral_phiHat_sq_mul_abs_le, hF.phiHat_sq_mul_sq_integrable, hF.integral_phiHat_sq_mul_sq_le, hF.phiHat_sq_integral, hF.phiHat_sq_fourier, hF.g_nonneg, hF.g_le_Aphi, hF.Aphi_le, hF.Phi_contDiff, hF.Phi_even, hF.Phi_le_L, hF.Phi_le_inv, hF.Phi_le_sq, hF.Phi_sq_integrable, hF.Phi_sq_mul_abs_integrable, hF.integral_Phi_sq_mul_abs_le, hF.Phi_sq_mul_sq_integrable, hF.integral_Phi_sq_mul_sq_le, hF.Phi_zero, hF.Phi_sq_integral, hF.Phi_sq_fourier, hF.poisson, hF.b_ge_half, hF.b_le_a, hF.a_le_one, hF.psi_integrable, hF.psi_sq_integrable, hF.integral_psi_Ioi_le, hF.integral_psi_sq_le, hF.phiHat_le_psi, hF.Phi_le_psi, hF.PiX_cont, hF.PiX_bound⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7555aaf5deacab10b78c258feefd3537a539fd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
