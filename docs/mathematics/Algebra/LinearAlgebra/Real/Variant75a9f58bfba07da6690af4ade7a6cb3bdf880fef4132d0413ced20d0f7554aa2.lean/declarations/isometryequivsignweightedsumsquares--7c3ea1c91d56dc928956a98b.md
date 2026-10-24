# isometryEquivSignWeightedSumSquares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1de984f053c1b54ce06302c18c5f9e4945271075ebed4e37158c11d3434a9635",
  "kind": "def",
  "lexical_name": "isometryEquivSignWeightedSumSquares",
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
  "slug": "isometryequivsignweightedsumsquares--7c3ea1c91d56dc928956a98b",
  "source": {
    "blob": "b08ac081aaa1713345cbfabe9ee29fa7f542933f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/Real/Variant75a9f58bfba07da6690af4ade7a6cb3bdf880fef4132d0413ced20d0f7554aa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c3ea1c91d56dc928956a98ba3df0397b22646ad8c15b2d5429d58cb303b666a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Real/Variant75a9f58bfba07da6690af4ade7a6cb3bdf880fef4132d0413ced20d0f7554aa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1de984f053c1b54ce06302c18c5f9e4945271075ebed4e37158c11d3434a9635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivSignWeightedSumSquares [DecidableEq ι] (w : ι → ℝ) :
    IsometryEquiv (weightedSumSquares ℝ w) (weightedSumSquares ℝ (Real.sign ∘ w)) := by
  let u i := if h : w i = 0 then (1 : ℝˣ) else Units.mk0 (w i) h
  have hu' : ∀ i : ι, (Real.sign (u i) * u i) ^ (-(1 / 2 : ℝ)) ≠ 0 := by
    intro i
    refine' (ne_of_lt (Real.rpow_pos_of_pos (sign_mul_pos_of_ne_zero _ <| Units.ne_zero _) _)).symm
  convert
    (weightedSumSquares ℝ w).isometryEquivBasisRepr
      ((Pi.basisFun ℝ ι).unitsSMul fun i => (isUnit_iff_ne_zero.2 <| hu' i).unit)
  ext1 v
  rw [basisRepr_apply, weightedSumSquares_apply, weightedSumSquares_apply]
  refine' sum_congr rfl fun j hj => _
  have hsum :
    (∑ i : ι, v i • ((isUnit_iff_ne_zero.2 <| hu' i).unit : ℝ) • (Pi.basisFun ℝ ι) i) j =
      v j • (Real.sign (u j) * u j) ^ (-(1 / 2 : ℝ)) := by
    rw [Finset.sum_apply, sum_eq_single j, Pi.basisFun_apply, IsUnit.unit_spec,
      LinearMap.stdBasis_apply, Pi.smul_apply, Pi.smul_apply, Function.update_same, smul_eq_mul,
      smul_eq_mul, smul_eq_mul, mul_one]
    intro i _ hij
    rw [Pi.basisFun_apply, LinearMap.stdBasis_apply, Pi.smul_apply, Pi.smul_apply,
      Function.update_noteq hij.symm, Pi.zero_apply, smul_eq_mul, smul_eq_mul,
      mul_zero, mul_zero]
    intro hj'; exact False.elim (hj' hj)
  simp_rw [Basis.unitsSMul_apply]
  erw [hsum]
  simp only [Function.comp, smul_eq_mul]
  split_ifs with h
  · simp only [h, zero_smul, zero_mul, Real.sign_zero]
  have hwu : w j = u j := by simp only [dif_neg h, Units.val_mk0]
  simp only [Units.val_mk0]
  rw [hwu]
  suffices
    (u j : ℝ).sign * v j * v j =
      (Real.sign (u j) * u j) ^ (-(1 / 2 : ℝ)) * (Real.sign (u j) * u j) ^ (-(1 / 2 : ℝ)) *
            u j *
          v j *
        v j
    by erw [← mul_assoc, this]; ring
  rw [← Real.rpow_add (sign_mul_pos_of_ne_zero _ <| Units.ne_zero _),
    show -(1 / 2 : ℝ) + -(1 / 2) = -1 by ring, Real.rpow_neg_one, mul_inv, inv_sign,
    mul_assoc (Real.sign (u j)) (u j)⁻¹, inv_mul_cancel (Units.ne_zero _), mul_one]
#align quadratic_form.isometry_sign_weighted_sum_squares QuadraticForm.isometryEquivSignWeightedSumSquares

/-- **Sylvester's law of inertia**: A nondegenerate real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Real/Variant75a9f58bfba07da6690af4ade7a6cb3bdf880fef4132d0413ced20d0f7554aa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Real/Variant75a9f58bfba07da6690af4ade7a6cb3bdf880fef4132d0413ced20d0f7554aa2.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b08ac081aaa1713345cbfabe9ee29fa7f542933f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
