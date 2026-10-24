# linearly_dependent_of_isLocalExtrOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc39ffd9-a4d8-7888-f6b8-60b34420c3c0",
  "kind": "theorem",
  "lexical_name": "linearly_dependent_of_isLocalExtrOn",
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
  "slug": "linearly-dependent-of-islocalextron--f46d6d25971f8f49e12d0b4a",
  "source": {
    "blob": "c228db133ab6244a51275e1456b5e4ee881e50e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 119,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f46d6d25971f8f49e12d0b4a0e7e19cc4b69e012cfa82d9857adaf7708602bfa",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc39ffd9-a4d8-7888-f6b8-60b34420c3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearly_dependent_of_isLocalExtrOn (hT : IsSelfAdjoint T) {x₀ : F}
    (hextr : IsLocalExtrOn T.reApplyInnerSelf (sphere (0 : F) ‖x₀‖) x₀) :
    ∃ a b : ℝ, (a, b) ≠ 0 ∧ a • x₀ + b • T x₀ = 0 := by
  have H : IsLocalExtrOn T.reApplyInnerSelf {x : F | ‖x‖ ^ 2 = ‖x₀‖ ^ 2} x₀ := by
    convert hextr
    ext x
    simp [dist_eq_norm]
  -- find Lagrange multipliers for the function `T.re_apply_inner_self` and the
  -- hypersurface-defining function `fun x ↦ ‖x‖ ^ 2`
  obtain ⟨a, b, h₁, h₂⟩ :=
    IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt_1d H (hasStrictFDerivAt_norm_sq x₀)
      (hT.isSymmetric.hasStrictFDerivAt_reApplyInnerSelf x₀)
  refine ⟨a, b, h₁, ?_⟩
  apply (InnerProductSpace.toDualMap ℝ F).injective
  simp only [LinearIsometry.map_add, LinearIsometry.map_smul, LinearIsometry.map_zero]
  -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 changed `map_smulₛₗ` into `map_smulₛₗ _`
  simp only [map_smulₛₗ _, RCLike.conj_to_real]
  change a • innerSL ℝ x₀ + b • innerSL ℝ (T x₀) = 0
  apply smul_right_injective (F →L[ℝ] ℝ) (two_ne_zero : (2 : ℝ) ≠ 0)
  simpa only [two_smul, smul_add, add_smul, add_zero] using h₂

open scoped InnerProductSpace in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c228db133ab6244a51275e1456b5e4ee881e50e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
