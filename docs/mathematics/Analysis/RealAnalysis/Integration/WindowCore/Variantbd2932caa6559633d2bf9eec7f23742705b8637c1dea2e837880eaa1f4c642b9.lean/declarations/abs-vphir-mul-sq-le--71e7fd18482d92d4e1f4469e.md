# abs_VPhiR_mul_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8fbb4c5-b71a-d27c-a0ea-bd59f9fbc79c",
  "kind": "lemma",
  "lexical_name": "abs_VPhiR_mul_sq_le",
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
  "slug": "abs-vphir-mul-sq-le--71e7fd18482d92d4e1f4469e",
  "source": {
    "blob": "26cafb1155e10c7fab98568ead73e08cc2b3d778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 259,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71e7fd18482d92d4e1f4469e71751cd4d02ca729aa998c8d05740be622093737",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8fbb4c5-b71a-d27c-a0ea-bd59f9fbc79c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_VPhiR_mul_sq_le (r : ℝ) : |VPhiR v r| * r ^ 2 ≤ c / w := by
  have h := norm_paperFT_mul_sq_le hW.vSqC_contDiff hW.vSqC_supp (r : ℂ)
  have hd1 : Differentiable ℝ (fun u => v u ^ 2) := (hW.contDiff.differentiable (by norm_num)).pow 2
  have hd2 : Differentiable ℝ (deriv (fun u => v u ^ 2)) :=
    (((hW.contDiff.pow 2).deriv' (n := 1)).differentiable (by norm_num))
  rw [Taper.deriv_ofReal_comp hd1, Taper.deriv_ofReal_comp hd2] at h
  simp only [Complex.norm_real, Real.norm_eq_abs, Complex.ofReal_im, abs_zero, zero_mul,
    Real.exp_zero, one_mul, sq_abs] at h
  calc |VPhiR v r| * r ^ 2 ≤ ‖VPhi v r‖ * r ^ 2 :=
        mul_le_mul_of_nonneg_right (hW.abs_VPhiR_le_norm r) (sq_nonneg r)
    _ ≤ ∫ u, |deriv (deriv fun u => v u ^ 2) u| := h
    _ ≤ c / w := hW.l1_deriv2_sq

/-- `|v̂| ≤ ψ_c` in the majorant spelling `psiA c p` (for any `p` with `p.L = L`, `p.w = w`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cafb1155e10c7fab98568ead73e08cc2b3d778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
