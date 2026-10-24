# not_isCocomm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c575aa1b-095a-361d-bf0b-fd21d1ca2cf1",
  "kind": "theorem",
  "lexical_name": "not_isCocomm",
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
  "slug": "not-iscocomm--06b68cf3c6f9f01649b7a5b6",
  "source": {
    "blob": "9c52a1085984477c11991a40854fffc0e35111ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 967,
    "line": 926,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06b68cf3c6f9f01649b7a5b6f92530a08a8b697c7ebdb4e1898444f14e4548ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c575aa1b-095a-361d-bf0b-fd21d1ca2cf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–967.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isCocomm : ¬Coalgebra.IsCocomm R A := by
  intro h
  have hU := DFunLike.congr_fun h.comm_comp_comul U
  simp only [LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
    ← Bialgebra.comulAlgHom_apply (R := R), bialgebra_comulAlgHom] at hU
  rw [comul_U_formula] at hU
  simp only [map_add, Algebra.TensorProduct.includeLeft_apply,
    Algebra.TensorProduct.includeRight_apply, Algebra.TensorProduct.tmul_mul_tmul, one_mul,
    mul_one, TensorProduct.comm_tmul] at hU
  have h2 := congr_arg (fun z ↦ TensorProduct.lid R R (TensorProduct.map coeffU coeffV z)) hU
  have hV1 : coeffV 1 = 0 := rfl
  have hVU : coeffV U = 0 := rfl
  have hU1 : coeffU 1 = 0 := rfl
  have hUU : coeffU U = 1 := rfl
  have hVlam : coeffV lambda = b := by
    change lambda.re.im = b
    simp [lambda, aA, bA, U, V, VB, IsScalarTower.algebraMap_apply R B A]
  simp only [map_add, TensorProduct.map_tmul, TensorProduct.lid_tmul, hV1, hVU, hVlam, hU1,
    hUU, smul_eq_mul, one_mul, mul_zero, add_zero, zero_add] at h2
  exact two_b_ne_zero (by rw [h2, mul_zero])

/-!
### The group-scheme formulation

Mathlib's antiequivalence `commHopfAlgCatEquivCogrpCommAlgCat` identifies commutative Hopf
algebras over `R` with group objects in `(CommAlgCat R)ᵒᵖ`, the opposite of the category of
commutative `R`-algebras.  This opposite category is the category of affine schemes over `R`
(via the `Spec` antiequivalence), so these group objects are exactly the affine group schemes
over `R`; here the group object is `op A`, the algebraic incarnation of `Spec A`.  We work
entirely on the algebra side and do not use `AlgebraicGeometry.Spec`, as Mathlib does not yet
connect commutative Hopf algebras to group objects in `AlgebraicGeometry.Scheme`.  This
section transports the counterexample across that equivalence: the pointwise fourth power map
of the resulting group object is not the constant-unit endomorphism.
-/

open CategoryTheory MonObj Opposite

/-- On the group object `op A` in `(CommAlgCat R)ᵒᵖ` — the affine group scheme corresponding
to `A` — the pointwise `n`-th power map `𝟙 _ ^ n` (the `n`-th power of the identity in the
convolution monoid `CategoryTheory.Hom.monoid` of endomorphisms; for a group scheme, the
morphism `x ↦ xⁿ`, which is not in general a homomorphism) corresponds to the `n`-th
convolution power of the identity of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c52a1085984477c11991a40854fffc0e35111ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
