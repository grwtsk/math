# polyCharpolyAux_baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d473aab803cf85e3bedcbb37884be3bb3f192cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41fa3c1d-8538-d321-505b-6599752f16a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e23aba4-510e-c569-0510-dac8d018f47a",
  "kind": "lemma",
  "lexical_name": "polyCharpolyAux_baseChange",
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
  "slug": "polycharpolyaux-basechange--7f72fab9070907705a6e3c30",
  "source": {
    "blob": "0d473aab803cf85e3bedcbb37884be3bb3f192cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 245,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f72fab9070907705a6e3c30dda8fe9d50b4f1eae693e8ed373683d38ab668af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e23aba4-510e-c569-0510-dac8d018f47a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma polyCharpolyAux_baseChange (A : Type*) [CommRing A] [Algebra R A] :
    polyCharpolyAux (tensorProduct _ _ _ _ ∘ₗ φ.baseChange A) (basis A b) (basis A bₘ) =
      (polyCharpolyAux φ b bₘ).map (MvPolynomial.map (algebraMap R A)) := by
  simp only [polyCharpolyAux]
  rw [← charpoly.univ_map_map _ (algebraMap R A)]
  simp only [Polynomial.map_map]
  congr 1
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.coe_comp, RingHom.coe_coe, Function.comp_apply, map_C, bind₁_C_right]
  · rintro ij
    simp only [RingHom.coe_comp, RingHom.coe_coe, Function.comp_apply, map_X, bind₁_X_right]
    rw [toMvPolynomial_comp _ (basis A (Basis.end bₘ)), ← toMvPolynomial_baseChange]
    suffices toMvPolynomial (M₂ := (Module.End A (TensorProduct R A M)))
        (basis A bₘ.end) (basis A bₘ).end (tensorProduct R A M M) ij = X ij by
      rw [this, bind₁_X_right]
    simp only [toMvPolynomial, Matrix.toMvPolynomial]
    suffices ∀ kl,
        (toMatrix (basis A bₘ.end) (basis A bₘ).end) (tensorProduct R A M M) ij kl =
        if kl = ij then 1 else 0 by
      rw [Finset.sum_eq_single ij]
      · rw [this, ite_eq_left rfl, X]
      · rintro kl - H
        rw [this, ite_eq_right H, map_zero]
      · grind
    intro kl
    rw [toMatrix_apply, tensorProduct, TensorProduct.AlgebraTensorModule.lift_apply,
      basis_apply, TensorProduct.lift.tmul, coe_restrictScalars]
    dsimp only [coe_mk, AddHom.coe_mk, smul_apply, baseChangeHom_apply]
    rw [one_smul, Basis.baseChange_end, Basis.repr_self_apply]

open LinearMap in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d473aab803cf85e3bedcbb37884be3bb3f192cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
