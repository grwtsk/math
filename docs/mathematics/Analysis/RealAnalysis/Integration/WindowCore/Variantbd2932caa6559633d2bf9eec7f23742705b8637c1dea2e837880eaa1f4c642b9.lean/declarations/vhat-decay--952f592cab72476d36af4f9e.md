# vHat_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b01a8e33-3e87-072a-9ea1-e35f57650b2c",
  "kind": "lemma",
  "lexical_name": "vHat_decay",
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
  "slug": "vhat-decay--952f592cab72476d36af4f9e",
  "source": {
    "blob": "26cafb1155e10c7fab98568ead73e08cc2b3d778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 461,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:952f592cab72476d36af4f9e6a1f8eedcae4d9146f4ffac274602a4d823acc57",
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

Occurrence: `result:b01a8e33-3e87-072a-9ea1-e35f57650b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vHat_decay : ∃ C, ∀ s : ℝ, ‖paperFT (fun u => (v u : ℂ)) s‖ * (1 + s ^ 2) ≤ C := by
  refine ⟨L + ∫ u, |deriv (deriv v) u|, fun s => ?_⟩
  have h0 := hW.norm_vHat_le s
  have h2 := hW.norm_vHat_mul_sq_le s
  simp only [ofReal_im, abs_zero, zero_mul, Real.exp_zero, one_mul, norm_real,
    Real.norm_eq_abs, sq_abs] at h0 h2
  unfold vHat at h0 h2
  linarith

/-- `Σ_{k∈ℤ} v̂(τ−τ_k) v̂(τ'−τ_k) = L · V(τ−τ')`, `τ_k = T + k·2π/L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cafb1155e10c7fab98568ead73e08cc2b3d778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
