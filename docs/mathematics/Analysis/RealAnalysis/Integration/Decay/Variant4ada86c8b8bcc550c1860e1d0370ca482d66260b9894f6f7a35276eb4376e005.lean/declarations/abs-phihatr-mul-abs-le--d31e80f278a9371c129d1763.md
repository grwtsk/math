# abs_phiHatR_mul_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34b44b8d-3b4d-d65c-ba3e-f1c700af44dc",
  "kind": "theorem",
  "lexical_name": "abs_phiHatR_mul_abs_le",
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
  "slug": "abs-phihatr-mul-abs-le--d31e80f278a9371c129d1763",
  "source": {
    "blob": "6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 312,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d31e80f278a9371c129d176389fe689b72117fff24693df5eb636308715e0cfb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34b44b8d-3b4d-d65c-ba3e-f1c700af44dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_phiHatR_mul_abs_le (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) (r : ℝ) :
    |phiHatR ϱ L w r| * |r| ≤ 2 := by
  have h := norm_paperFT_mul_le ((phiC_contDiff hϱ hw hwL).of_le (by norm_num))
    (phiC_support hϱ hw) (r : ℂ)
  rw [deriv_ofReal_comp ((phi_contDiff hϱ hw hwL).differentiable (by norm_num))] at h
  simp only [Complex.norm_real, Real.norm_eq_abs, Complex.ofReal_im, abs_zero, zero_mul,
    Real.exp_zero, one_mul, integral_abs_deriv_phi hϱ hw hwL] at h
  calc |phiHatR ϱ L w r| * |r| ≤ ‖phiHat ϱ L w r‖ * |r| :=
        mul_le_mul_of_nonneg_right (abs_phiHatR_le_norm r) (abs_nonneg r)
    _ ≤ 2 := h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
