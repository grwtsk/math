# associated_norm_prod_smith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29d0a4ef-7a7c-6b17-af15-7e8566841a9d",
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
  "slug": "associated-norm-prod-smith--fd6f749d971fb19a3339c800",
  "source": {
    "blob": "2d2723d23304a6db6c01177b9ac9dbab59eecfdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd6f749d971fb19a3339c8005943b589aa502d22f283ea9e9caa7e7c0d02ccb6",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29d0a4ef-7a7c-6b17-af15-7e8566841a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

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
  dsimp only [e, LinearEquiv.trans_apply]
  simp_rw [← LinearEquiv.coe_toLinearMap, ← LinearMap.comp_apply, ← LinearMap.ext_iff]
  refine b'.ext fun i => ?_
  simp_rw [LinearMap.comp_apply, LinearEquiv.coe_toLinearMap, Matrix.toLin_apply, Basis.repr_self,
    Finsupp.single_eq_pi_single, Matrix.diagonal_mulVec_single, Pi.single_apply, ite_smul,
    zero_smul, Finset.sum_ite_eq', mul_one, ite_eq_left (Finset.mem_univ _), b'.equiv_apply]
  change _ = f * _
  rw [mul_comm, ← smul_eq_mul, LinearEquiv.restrictScalars_apply, LinearEquiv.coord_apply_smul]
  grind [Ideal.selfBasis_def]

end CommRing

section Field

variable {F : Type*} [Field F] [Algebra F[X] S] [Finite ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2723d23304a6db6c01177b9ac9dbab59eecfdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
