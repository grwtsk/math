# Real.neg_one_le_erf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b5bc966-edc6-50c3-76b2-ce39dcd66475",
  "kind": "theorem",
  "lexical_name": "Real.neg_one_le_erf",
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
  "slug": "real-neg-one-le-erf--e8aa1f41f0fc3e2eeb905665",
  "source": {
    "blob": "bbbeabf31f259c64b9edcd689d9547d1922b82a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 210,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8aa1f41f0fc3e2eeb9056658a4552d45492026903556094fe3ec1bac3dc19d3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b5bc966-edc6-50c3-76b2-ce39dcd66475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.neg_one_le_erf (x : ℝ) : -1 ≤ Real.erf x := by
  unfold Real.erf
  by_cases! hx : 0 ≤ x
  · -- Case x ≥ 0: Integral is nonneg, so erf(x) ≥ 0 > -1
    have h1 : Real.sqrt Real.pi > 0 := Real.sqrt_pos.mpr Real.pi_pos
    have h2 : 0 ≤ ∫ t in (0:ℝ)..x, Real.exp (-(t^2)) := integral_exp_neg_sq_nonneg x hx
    have h3 : 0 ≤ (2 / Real.sqrt Real.pi) * ∫ t in (0:ℝ)..x, Real.exp (-(t^2)) := by
      apply mul_nonneg
      · exact div_nonneg (by norm_num) (le_of_lt h1)
      · exact h2
    linarith
  · -- Case x < 0: ∫ 0..x = -∫ x..0, and ∫ x..0 ≤ √π/2
    have h1 : Real.sqrt Real.pi > 0 := Real.sqrt_pos.mpr Real.pi_pos
    have hxle : x ≤ 0 := le_of_lt hx
    -- ∫ 0..x = -∫ x..0
    rw [intervalIntegral.integral_symm]
    have h2 : ∫ t in x..(0:ℝ), Real.exp (-(t^2)) ≤ Real.sqrt Real.pi / 2 :=
      integral_exp_neg_sq_le_half_gaussian' x hxle
    -- Need: -1 ≤ (2/√π) * (-∫ x..0 f)
    -- i.e., -1 ≤ -(2/√π) * ∫ x..0 f
    -- i.e., (2/√π) * ∫ x..0 f ≤ 1
    -- From h2: ∫ x..0 f ≤ √π/2, so (2/√π) * ∫ x..0 f ≤ (2/√π) * (√π/2) = 1
    have h3 : (2 / Real.sqrt Real.pi) * ∫ t in x..(0:ℝ), Real.exp (-(t^2)) ≤ 1 := by
      calc (2 / Real.sqrt Real.pi) * ∫ t in x..(0:ℝ), Real.exp (-(t^2))
          ≤ (2 / Real.sqrt Real.pi) * (Real.sqrt Real.pi / 2) := by
            apply mul_le_mul_of_nonneg_left h2
            exact div_nonneg (by norm_num) (le_of_lt h1)
          _ = 1 := by field_simp
    linarith

/-- Named mathematical constants with known interval bounds.
    Adding a new constant (e.g., Catalan's) only requires extending this enum
    and its lookup tables — zero evaluator files need updating. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbeabf31f259c64b9edcd689d9547d1922b82a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
