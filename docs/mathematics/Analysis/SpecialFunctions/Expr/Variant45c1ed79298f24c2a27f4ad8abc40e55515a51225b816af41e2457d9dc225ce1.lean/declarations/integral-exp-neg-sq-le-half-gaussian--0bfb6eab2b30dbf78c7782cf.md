# integral_exp_neg_sq_le_half_gaussian'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47303d2c-130a-a2b4-3e60-e785ccddcaec",
  "kind": "theorem",
  "lexical_name": "integral_exp_neg_sq_le_half_gaussian'",
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
  "slug": "integral-exp-neg-sq-le-half-gaussian--0bfb6eab2b30dbf78c7782cf",
  "source": {
    "blob": "bbbeabf31f259c64b9edcd689d9547d1922b82a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 196,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bfb6eab2b30dbf78c7782cf26c5637552385d5b734e88983c7033ffc52d6ee3",
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

Occurrence: `result:47303d2c-130a-a2b4-3e60-e785ccddcaec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_exp_neg_sq_le_half_gaussian' (x : ℝ) (hx : x ≤ 0) :
    ∫ t in x..(0:ℝ), Real.exp (-(t^2)) ≤ Real.sqrt Real.pi / 2 := by
  -- Use substitution: the function is even, so ∫ x..0 = ∫ 0..-x
  have heq : ∀ t : ℝ, Real.exp (-(t^2)) = Real.exp (-((-t)^2)) := fun t => by ring_nf
  have hsub : ∫ t in x..(0:ℝ), Real.exp (-(t^2)) = ∫ t in (0:ℝ)..(-x), Real.exp (-(t^2)) := by
    calc ∫ t in x..(0:ℝ), Real.exp (-(t^2))
        = ∫ t in x..(0:ℝ), Real.exp (-((-t)^2)) := by simp only [neg_sq]
      _ = ∫ t in (-0:ℝ)..(-x), Real.exp (-(t^2)) := by
          rw [intervalIntegral.integral_comp_neg (fun t => Real.exp (-(t^2)))]
      _ = ∫ t in (0:ℝ)..(-x), Real.exp (-(t^2)) := by simp only [neg_zero]
  rw [hsub]
  exact integral_exp_neg_sq_le_half_gaussian (-x) (by linarith)

/-- The error function is bounded below by -1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbeabf31f259c64b9edcd689d9547d1922b82a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
