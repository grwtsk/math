# tensorCotangentHom_injective_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:037fc738-f793-300a-7c81-432060171057",
  "kind": "lemma",
  "lexical_name": "tensorCotangentHom_injective_of_flat",
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
  "slug": "tensorcotangenthom-injective-of-flat--fd8c349bd2a020e3133bd1d8",
  "source": {
    "blob": "4ae7a45c4b2c1c6238ad67816baf722cb8570a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 94,
    "path": "GRWTSK/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd8c349bd2a020e3133bd1d8c9db89bb5dbf00fc0b41f43ff4b1d805fc95136f",
  "verification": {
    "reference": "docs/verification/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:037fc738-f793-300a-7c81-432060171057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorCotangentHom_injective_of_flat [Module.Flat R T] :
    Function.Injective (I.tensorCotangentHom R T) := by
  let a : S →+* T ⊗[R] S := Algebra.TensorProduct.includeRight.toRingHom
  let f : (I.map a).Cotangent →ₗ[T] T ⊗[R] S ⧸ (I.map a) ^ 2 :=
    (Ideal.cotangentToQuotientSquare _).restrictScalars T
  suffices h : Function.Injective (f ∘ₗ tensorCotangentHom R T I) from .of_comp h
  let g : T ⊗[R] I.Cotangent →ₗ[T] T ⊗[R] (S ⧸ I ^ 2) :=
    AlgebraTensorModule.lTensor T T I.cotangentToQuotientSquare
  let hₐ : T ⊗[R] (S ⧸ I ^ 2) ≃ₐ[T] T ⊗[R] S ⧸ (I.map a) ^ 2 :=
    (Algebra.TensorProduct.tensorQuotientEquiv _ _ _ _).trans
      (Ideal.quotientEquivAlgOfEq T (Ideal.map_pow _ _ _))
  have : f ∘ₗ tensorCotangentHom R T I = hₐ.toLinearMap ∘ₗ g := by
    ext x
    obtain ⟨x, rfl⟩ := I.toCotangent_surjective x
    dsimp [f, g, hₐ]
    rw [tensorCotangentHom_tmul, one_smul, Ideal.toCotangent_to_quotient_square]
    simp
  rw [this, LinearMap.coe_comp]
  apply hₐ.injective.comp
  · apply Module.Flat.lTensor_preserves_injective_linearMap (M := T)
      (I.cotangentToQuotientSquare.restrictScalars R)
    apply cotangentToQuotientSquare_injective

/-- If `T` is a flat `R`-module, the base change of the cotangent space of `I` is linearly
equivalent to the cotangent space of the extended ideal `I · (T ⊗[R] S)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ae7a45c4b2c1c6238ad67816baf722cb8570a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
