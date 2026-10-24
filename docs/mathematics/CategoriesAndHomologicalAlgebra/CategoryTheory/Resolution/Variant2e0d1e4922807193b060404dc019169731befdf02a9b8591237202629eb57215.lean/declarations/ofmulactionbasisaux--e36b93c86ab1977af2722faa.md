# ofMulActionBasisAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:408528ba879f7135ffbfd364c7033b2104cc8ca7ea1feaa3a08ba1962166a6c0",
  "kind": "def",
  "lexical_name": "ofMulActionBasisAux",
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
  "slug": "ofmulactionbasisaux--e36b93c86ab1977af2722faa",
  "source": {
    "blob": "d3570308f26fded0a318ea88af745cdbd1aac610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 237,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e36b93c86ab1977af2722faa8b4067021541fe923ab94f809f265d7be34fbc5f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:408528ba879f7135ffbfd364c7033b2104cc8ca7ea1feaa3a08ba1962166a6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofMulActionBasisAux :
    MonoidAlgebra k G ⊗[k] ((Fin n → G) →₀ k) ≃ₗ[MonoidAlgebra k G]
      (ofMulAction k G (Fin (n + 1) → G)).asModule :=
  haveI e := (Rep.equivalenceModuleMonoidAlgebra.1.mapIso (diagonalSucc k G n).symm).toLinearEquiv
  { e with
    map_smul' := fun r x => by
      rw [RingHom.id_apply, LinearEquiv.toFun_eq_coe, ← LinearEquiv.map_smul e]
      congr 1
      /- Porting note (https://github.com/leanprover-community/mathlib4/issues/11039): broken proof was
      refine' x.induction_on _ (fun x y => _) fun y z hy hz => _
      · simp only [smul_zero]
      · simp only [TensorProduct.smul_tmul']
        show (r * x) ⊗ₜ y = _
        rw [← ofMulAction_self_smul_eq_mul, smul_tprod_one_asModule]
      · rw [smul_add, hz, hy, smul_add] -/
      show _ = Representation.asAlgebraHom (tensorObj (Rep.leftRegular k G)
        (Rep.trivial k G ((Fin n → G) →₀ k))).ρ r _
      refine x.induction_on ?_ (fun x y => ?_) fun y z hy hz => ?_
      · rw [smul_zero, map_zero]
      · rw [TensorProduct.smul_tmul', smul_eq_mul, ← ofMulAction_self_smul_eq_mul]
        exact (smul_tprod_one_asModule (Representation.ofMulAction k G G) r x y).symm
      · rw [smul_add, hz, hy, map_add] }

/-- A `k[G]`-basis of `k[Gⁿ⁺¹]`, coming from the `k[G]`-linear isomorphism
`k[G] ⊗ₖ k[Gⁿ] ≃ k[Gⁿ⁺¹].` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3570308f26fded0a318ea88af745cdbd1aac610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
