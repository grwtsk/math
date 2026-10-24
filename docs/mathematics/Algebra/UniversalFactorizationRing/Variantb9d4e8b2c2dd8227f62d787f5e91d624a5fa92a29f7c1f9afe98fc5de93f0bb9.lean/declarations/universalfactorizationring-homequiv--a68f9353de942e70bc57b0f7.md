# UniversalFactorizationRing.homEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38157d10829cbf5a526b0ff8ad63f85b8aadec3cd3d9bc364de123fa1a7e73f4",
  "kind": "def",
  "lexical_name": "UniversalFactorizationRing.homEquiv",
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
  "slug": "universalfactorizationring-homequiv--a68f9353de942e70bc57b0f7",
  "source": {
    "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 449,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a68f9353de942e70bc57b0f76d092e1bf88f9b6b9102ad34769b2b1c3eb6ca2f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38157d10829cbf5a526b0ff8ad63f85b8aadec3cd3d9bc364de123fa1a7e73f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniversalFactorizationRing.homEquiv :
    (𝓡 →ₐ[R] S) ≃ { q : MonicDegreeEq S m × MonicDegreeEq S k //
      q.1.1 * q.2.1 = p.1.map (algebraMap R S) } where
  toFun f := ⟨((factor₁ m k hn p).map f, (factor₂ m k hn p).map f), by
    simp [← Polynomial.map_mul, factor₁_mul_factor₂ m k hn p, Polynomial.map_map]⟩
  invFun q :=
    letI := (MvPolynomial.universalFactorizationMap R n m k hn).toAlgebra
    letI := ((MvPolynomial.mapEquivMonic R _ n).symm p).toAlgebra
    letI := Algebra.compHom S ((MvPolynomial.mapEquivMonic R _ n).symm p).toRingHom
    haveI : IsScalarTower (MvPolynomial (Fin n) R) R S := .of_algebraMap_eq' rfl
    letI f := ((MvPolynomial.universalFactorizationMapLiftEquiv R _ n m k hn
          (p.map (algebraMap R S))).symm q)
    Algebra.TensorProduct.lift (R := MvPolynomial (Fin n) R) (S := R) (A := R)
      (B := MvPolynomial (Fin m) R ⊗[R] MvPolynomial (Fin k) R) (C := S) (Algebra.ofId R S)
      { toRingHom := f.1.toRingHom
        commutes' r := congr($(f.2) r).trans
          (by simp [MvPolynomial.mapEquivMonic_symm_map_algebraMap]; rfl) } fun _ _ ↦ .all _ _
  left_inv f := by
    let := (MvPolynomial.universalFactorizationMap R n m k hn).toAlgebra
    let := ((MvPolynomial.mapEquivMonic R _ n).symm p).toAlgebra
    let := Algebra.compHom S ((MvPolynomial.mapEquivMonic R _ n).symm p).toRingHom
    have : IsScalarTower (MvPolynomial (Fin n) R) R S := .of_algebraMap_eq' rfl
    have : IsScalarTower R (MvPolynomial (Fin n) R) S := .of_algebraMap_eq fun r ↦ by
      simp [Algebra.compHom_algebraMap_apply]
    refine Algebra.TensorProduct.ext (by ext) ?_
    refine AlgHom.restrictScalars_injective R (Algebra.TensorProduct.ext ?_ ?_)
    · ext; simp [MvPolynomial.universalFactorizationMapLiftEquiv, MvPolynomial.mapEquivMonic,
        UniversalFactorizationRing.factor₁, coeff_freeMonic]; rfl
    · ext; simp [MvPolynomial.universalFactorizationMapLiftEquiv, MvPolynomial.mapEquivMonic,
        UniversalFactorizationRing.factor₂, coeff_freeMonic]; rfl
  right_inv q := by
    let := (MvPolynomial.universalFactorizationMap R n m k hn).toAlgebra
    let := ((MvPolynomial.mapEquivMonic R _ n).symm p).toAlgebra
    simp only [UniversalFactorizationRing, MvPolynomial.mapEquivMonic, AlgHom.toRingHom_eq_coe,
      Equiv.coe_fn_symm_mk, MvPolynomial.coe_aeval_eq_eval, factor₁,
      MvPolynomial.universalFactorizationMapLiftEquiv, Equiv.coe_fn_mk, fromTensor, factor₂]
    ext <;> simp +contextual [coeff_freeMonic, apply_dite, MonicDegreeEq.coeff_of_ge]

attribute [-instance] leftModule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae678ab555f97d3252bab1329bec03a83142e418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
