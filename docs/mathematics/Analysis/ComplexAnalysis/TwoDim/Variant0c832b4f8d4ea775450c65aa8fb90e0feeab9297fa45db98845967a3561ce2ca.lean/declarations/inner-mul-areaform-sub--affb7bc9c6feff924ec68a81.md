# inner_mul_areaForm_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a4ffed2-be3e-0844-fb07-fb8b67adc237",
  "kind": "theorem",
  "lexical_name": "inner_mul_areaForm_sub'",
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
  "slug": "inner-mul-areaform-sub--affb7bc9c6feff924ec68a81",
  "source": {
    "blob": "bb8d5535deb06ea94f517a5918e7708d4f0926f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 428,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:affb7bc9c6feff924ec68a815f9375f128864ca09dd0a34d4acbad878b756418",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a4ffed2-be3e-0844-fb07-fb8b67adc237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_mul_areaForm_sub' (a x : E) : ⟪a, x⟫ • ω a - ω a x • innerₛₗ ℝ a = ‖a‖ ^ 2 • ω x := by
  by_cases ha : a = 0
  · simp [ha]
  apply (o.basisRightAngleRotation a ha).ext
  intro i
  fin_cases i
  · simp only [o.areaForm_swap a x, neg_smul, sub_neg_eq_add, Fin.mk_zero,
      coe_basisRightAngleRotation, Matrix.cons_val_zero, LinearMap.add_apply, LinearMap.smul_apply,
      areaForm_apply_self, smul_eq_mul, mul_zero, innerₛₗ_apply, real_inner_self_eq_norm_sq,
      zero_add, Real.rpow_two]
    ring
  · simp only [Fin.mk_one, coe_basisRightAngleRotation, Matrix.cons_val_one, Matrix.head_cons,
      LinearMap.sub_apply, LinearMap.smul_apply, areaForm_rightAngleRotation_right,
      real_inner_self_eq_norm_sq, smul_eq_mul, innerₛₗ_apply, inner_rightAngleRotation_right,
      areaForm_apply_self, neg_zero, mul_zero, sub_zero, Real.rpow_two, real_inner_comm]
    ring
#align orientation.inner_mul_area_form_sub' Orientation.inner_mul_areaForm_sub'

/-- For vectors `a x y : E`, the identity `⟪a, x⟫ * ω a y - ω a x * ⟪a, y⟫ = ‖a‖ ^ 2 * ω x y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant0c832b4f8d4ea775450c65aa8fb90e0feeab9297fa45db98845967a3561ce2ca.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8d5535deb06ea94f517a5918e7708d4f0926f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
