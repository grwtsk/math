# nonneg_inner_and_areaForm_eq_zero_iff_sameRay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d77773-694e-e60f-abdf-f2c825c73efd",
  "kind": "theorem",
  "lexical_name": "nonneg_inner_and_areaForm_eq_zero_iff_sameRay",
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
  "slug": "nonneg-inner-and-areaform-eq-zero-iff-sameray--98766cc2ee17bb20bc54a820",
  "source": {
    "blob": "7dc28c4d6460d4e0d7d0ef5097a44e96b09baa93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 386,
    "path": "GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98766cc2ee17bb20bc54a82060bd0b529f56bf4e938ec0434cefd883d379350e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d77773-694e-e60f-abdf-f2c825c73efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonneg_inner_and_areaForm_eq_zero_iff_sameRay (x y : E) :
    0 ≤ ⟪x, y⟫ ∧ ω x y = 0 ↔ SameRay ℝ x y := by
  by_cases hx : x = 0
  · simp [hx]
  constructor
  · let a : ℝ := (o.basisRightAngleRotation x hx).repr y 0
    let b : ℝ := (o.basisRightAngleRotation x hx).repr y 1
    suffices ↑0 ≤ a * ‖x‖ ^ 2 ∧ b * ‖x‖ ^ 2 = 0 → SameRay ℝ x (a • x + b • J x) by
      rw [← (o.basisRightAngleRotation x hx).sum_repr y]
      simp only [Fin.sum_univ_succ, coe_basisRightAngleRotation, Matrix.cons_val_zero,
        Fin.succ_zero_eq_one', Finset.univ_eq_empty, Finset.sum_empty, areaForm_apply_self,
        map_smul, map_add, real_inner_smul_right, inner_add_right, Matrix.cons_val_one,
        smul_eq_mul, areaForm_rightAngleRotation_right,
        mul_zero, add_zero, zero_add, neg_zero, inner_rightAngleRotation_right,
        real_inner_self_eq_norm_sq]
      exact this
    simp_all
  · intro h
    obtain ⟨r, hr, rfl⟩ := h.exists_nonneg_left hx
    simp only [inner_smul_right, real_inner_self_eq_norm_sq, map_smulₛₗ, areaForm_apply_self,
      smul_eq_mul, mul_zero, and_true]
    positivity

/-- A complex-valued real-bilinear map on an oriented real inner product space of dimension 2. Its
real part is the inner product and its imaginary part is `Orientation.areaForm`.

On `ℂ` with the standard orientation, `kahler w z = conj w * z`; see `Complex.kahler`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant9a2c5196cffac44463b4aeeb99a6ce3f995cf781529bb7637c04cf661ebc0ea3.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dc28c4d6460d4e0d7d0ef5097a44e96b09baa93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
