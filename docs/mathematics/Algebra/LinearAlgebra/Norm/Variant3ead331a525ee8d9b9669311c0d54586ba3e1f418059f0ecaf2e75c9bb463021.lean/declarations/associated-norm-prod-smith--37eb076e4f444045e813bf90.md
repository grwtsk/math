# associated_norm_prod_smith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1888684b-e308-0939-553b-71c188f9a271",
  "kind": "theorem",
  "lexical_name": "associated_norm_prod_smith",
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
  "slug": "associated-norm-prod-smith--37eb076e4f444045e813bf90",
  "source": {
    "blob": "fa18a8d96615405a1bfb67f9abeb900875238a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37eb076e4f444045e813bf90b38f0bd14814e4b9ecd3263ec302147959e8d11f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1888684b-e308-0939-553b-71c188f9a271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_norm_prod_smith [Fintype ι] (b : Basis ι R S) {f : S} (hf : f ≠ 0) :
    Associated (Algebra.norm R f) (∏ i, smithCoeffs b _ (span_singleton_eq_bot.not.2 hf) i) := by
  have hI := span_singleton_eq_bot.not.2 hf
  let b' := ringBasis b (span {f}) hI
  classical
  rw [← Matrix.det_diagonal, ← LinearMap.det_toLin b']
  let e :=
    (b'.equiv ((span {f}).selfBasis b hI) <| Equiv.refl _).trans
      ((LinearEquiv.coord S S f hf).restrictScalars R)
  refine (LinearMap.associated_det_of_eq_comp e _ _ ?_).symm
  dsimp only [LinearEquiv.trans_apply]
  simp_rw [← LinearEquiv.coe_toLinearMap, ← LinearMap.comp_apply, ← LinearMap.ext_iff]
  refine b'.ext fun i => ?_
  simp_rw [LinearMap.comp_apply, LinearEquiv.coe_toLinearMap, Matrix.toLin_apply, Basis.repr_self,
    Finsupp.single_eq_pi_single, Matrix.diagonal_mulVec_single, Pi.single_apply, ite_smul,
    zero_smul, Finset.sum_ite_eq', mul_one, if_pos (Finset.mem_univ _), b'.equiv_apply]
  change _ = f * _
  rw [mul_comm, ← smul_eq_mul, LinearEquiv.restrictScalars_apply, LinearEquiv.coord_apply_smul,
    Ideal.selfBasis_def]
  rfl
#align associated_norm_prod_smith associated_norm_prod_smith

end CommRing

section Field

variable {F : Type*} [Field F] [Algebra F[X] S] [Finite ι]

set_option maxHeartbeats 210000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa18a8d96615405a1bfb67f9abeb900875238a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
