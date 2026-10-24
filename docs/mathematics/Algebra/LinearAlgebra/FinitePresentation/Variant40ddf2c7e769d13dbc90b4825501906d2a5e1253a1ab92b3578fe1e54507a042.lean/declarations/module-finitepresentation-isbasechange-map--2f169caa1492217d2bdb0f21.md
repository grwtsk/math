# Module.FinitePresentation.isBaseChange_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c76361c7-9c6b-64de-b0f0-b494e2775ea3",
  "kind": "theorem",
  "lexical_name": "Module.FinitePresentation.isBaseChange_map",
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
  "slug": "module-finitepresentation-isbasechange-map--2f169caa1492217d2bdb0f21",
  "source": {
    "blob": "e1393e7617530450add7ca5c4955aad59cabc93c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 722,
    "line": 704,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f169caa1492217d2bdb0f21d475614b7113b25fe2fbbb1b7e56e010f34aed86",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c76361c7-9c6b-64de-b0f0-b494e2775ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.FinitePresentation.isBaseChange_map (S : Type*) [CommRing S] [Algebra R S]
    [Module.Flat R S] [Module.FinitePresentation R M] :
    IsBaseChange S (LinearMap.baseChangeHom R S M N) := by
  obtain ⟨n, m, f, g, hf, hfg⟩ := Module.FinitePresentation.exists_fin' R M
  refine IsBaseChange.of_left_exact S (f' := (f.baseChange S).lcomp S (S ⊗[R] N))
    (g' := (g.baseChange S).lcomp S (S ⊗[R] N)) _ _ _ ?_ ?_
    (Module.isBaseChange_map_of_finite_free N S _) (Module.isBaseChange_map_of_finite_free N S _)
    (exact_lcomp_of_exact_of_surjective _ hfg hf) (lcomp_injective_of_surjective f hf) ?_ ?_
  · exact LinearMap.ext fun φ ↦ TensorProduct.AlgebraTensorModule.curry_injective
      (LinearMap.ext fun s ↦ (LinearMap.ext fun m ↦ (by simp)))
  · exact LinearMap.ext fun φ ↦ TensorProduct.AlgebraTensorModule.curry_injective
      (LinearMap.ext fun s ↦ (LinearMap.ext fun m ↦ (by simp)))
  · apply exact_lcomp_of_exact_of_surjective
    · exact lTensor_exact S hfg hf
    · exact LinearMap.lTensor_surjective S hf
  · apply lcomp_injective_of_surjective
    exact LinearMap.lTensor_surjective S hf

end CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1393e7617530450add7ca5c4955aad59cabc93c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
