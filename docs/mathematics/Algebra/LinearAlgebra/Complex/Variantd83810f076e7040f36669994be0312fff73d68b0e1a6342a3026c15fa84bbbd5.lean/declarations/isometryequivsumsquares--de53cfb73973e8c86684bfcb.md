# isometryEquivSumSquares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffa83825411656bfc98f2b5291c8701e5c604a6729756df1c45be2b7006c57a6",
  "kind": "def",
  "lexical_name": "isometryEquivSumSquares",
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
  "slug": "isometryequivsumsquares--de53cfb73973e8c86684bfcb",
  "source": {
    "blob": "3265ea654a7061b84101da73704950e3e389efc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 30,
    "path": "GRWTSK/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de53cfb73973e8c86684bfcb3d54758658409f28ba3757760dde2278b69caaab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffa83825411656bfc98f2b5291c8701e5c604a6729756df1c45be2b7006c57a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivSumSquares [DecidableEq ι] (w' : ι → ℂ) :
    IsometryEquiv (weightedSumSquares ℂ w')
      (weightedSumSquares ℂ (fun i => if w' i = 0 then 0 else 1 : ι → ℂ)) := by
  let w i := if h : w' i = 0 then (1 : Units ℂ) else Units.mk0 (w' i) h
  have hw' : ∀ i : ι, (w i : ℂ) ^ (-(1 / 2 : ℂ)) ≠ 0 := by
    intro i hi
    exact (w i).ne_zero ((Complex.cpow_eq_zero_iff _ _).1 hi).1
  convert (weightedSumSquares ℂ w').isometryEquivBasisRepr
    ((Pi.basisFun ℂ ι).unitsSMul fun i => (isUnit_iff_ne_zero.2 <| hw' i).unit)
  ext1 v
  erw [basisRepr_apply, weightedSumSquares_apply, weightedSumSquares_apply]
  refine' sum_congr rfl fun j hj => _
  have hsum : (∑ i : ι, v i • ((isUnit_iff_ne_zero.2 <| hw' i).unit : ℂ) • (Pi.basisFun ℂ ι) i) j =
      v j • w j ^ (-(1 / 2 : ℂ)) := by
    rw [Finset.sum_apply, sum_eq_single j, Pi.basisFun_apply, IsUnit.unit_spec,
      LinearMap.stdBasis_apply, Pi.smul_apply, Pi.smul_apply, Function.update_same, smul_eq_mul,
      smul_eq_mul, smul_eq_mul, mul_one]
    intro i _ hij
    rw [Pi.basisFun_apply, LinearMap.stdBasis_apply, Pi.smul_apply, Pi.smul_apply,
      Function.update_noteq hij.symm, Pi.zero_apply, smul_eq_mul, smul_eq_mul,
      mul_zero, mul_zero]
    intro hj'; exact False.elim (hj' hj)
  simp_rw [Basis.unitsSMul_apply]
  erw [hsum, smul_eq_mul]
  split_ifs with h
  · simp only [h, zero_smul, zero_mul]
  have hww' : w' j = w j := by simp only [dif_neg h, Units.val_mk0]
  simp only [one_mul, Units.val_mk0, smul_eq_mul]
  rw [hww']
  suffices v j * v j = w j ^ (-(1 / 2 : ℂ)) * w j ^ (-(1 / 2 : ℂ)) * w j * v j * v j by
    rw [this]; ring
  rw [← Complex.cpow_add _ _ (w j).ne_zero, show -(1 / 2 : ℂ) + -(1 / 2) = -1 by simp [← two_mul],
    Complex.cpow_neg_one, inv_mul_cancel (w j).ne_zero, one_mul]
#align quadratic_form.isometry_sum_squares QuadraticForm.isometryEquivSumSquares

/-- The isometry between a weighted sum of squares on the complex numbers and the
sum of squares, i.e. `weightedSumSquares` with weight `fun (i : ι) => 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3265ea654a7061b84101da73704950e3e389efc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
