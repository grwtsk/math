# Module.isBaseChange_map_of_finite_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db9d1957-c658-6b7b-7264-4ac67220e52b",
  "kind": "lemma",
  "lexical_name": "Module.isBaseChange_map_of_finite_free",
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
  "slug": "module-isbasechange-map-of-finite-free--5481d0f3292c92e88ab11e91",
  "source": {
    "blob": "e1393e7617530450add7ca5c4955aad59cabc93c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 688,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5481d0f3292c92e88ab11e91fb6583be28c0189e9bcad558e45d1af1547551a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db9d1957-c658-6b7b-7264-4ac67220e52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.isBaseChange_map_of_finite_free (S ι : Type*) [Finite ι] [CommRing S] [Algebra R S] :
    IsBaseChange S (LinearMap.baseChangeHom R S (ι → R) N) := by
  classical
  have : Fintype ι := Fintype.ofFinite ι
  let e₁ := TensorProduct.piRight R S S (fun _ : ι ↦ R)
  let e₂ := (LinearEquiv.piCongrRight (fun _ ↦ (LinearMap.ringLmapEquivSelf S S _).symm ≪≫ₗ
    (LinearEquiv.congrLeft (S ⊗[R] N) S (AlgebraTensorModule.rid R S S).symm))) ≪≫ₗ
    (LinearMap.lsum S (fun _ : ι ↦ _) S) ≪≫ₗ (e₁.symm.congrLeft (S ⊗[R] N) S)
  let e₃ := (LinearMap.lsum R (fun _ : ι ↦ R) R).symm ≪≫ₗ
    LinearEquiv.piCongrRight (fun _ ↦ LinearMap.ringLmapEquivSelf R R N)
  refine IsBaseChange.of_equiv ((e₃.baseChange R S) ≪≫ₗ (TensorProduct.piRight R S S _) ≪≫ₗ e₂)
    (fun f ↦ TensorProduct.AlgebraTensorModule.curry_injective (LinearMap.ext fun s ↦ ?_))
  ext i
  simpa [e₃, e₂, e₁] using (tmul_eq_smul_one_tmul s (f (Pi.single i 1))).symm

variable (R M N) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1393e7617530450add7ca5c4955aad59cabc93c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
