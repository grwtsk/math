# isUnit_jacobian_of_cotangentRestrict_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38a62d76-1cba-8b5d-f9e8-9932e0832ce8",
  "kind": "lemma",
  "lexical_name": "isUnit_jacobian_of_cotangentRestrict_bijective",
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
  "slug": "isunit-jacobian-of-cotangentrestrict-bijective--4647724726e78cda0bf4ca5f",
  "source": {
    "blob": "52a1eb027b3daa487ad0cf6898ce0742efdfc495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4647724726e78cda0bf4ca5f08a153e08a30f3d43662c0eb2d852b7f43f59f50",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38a62d76-1cba-8b5d-f9e8-9932e0832ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_jacobian_of_cotangentRestrict_bijective
    (b : Module.Basis σ S P.toExtension.Cotangent)
    (hb : ∀ r, b r = Extension.Cotangent.mk ⟨P.relation r, P.relation_mem_ker r⟩)
    (h : Function.Bijective (P.cotangentRestrict P.map_inj)) :
    IsUnit P.jacobian := by
  have heq : (fun j i ↦ (aeval P.val) (pderiv (P.map i) (P.relation j))) =
      Finsupp.linearEquivFunOnFinite S S _ ∘ P.cotangentRestrict P.map_inj ∘ ⇑b := by
    ext i j
    simp only [Function.comp_apply, hb, Finsupp.linearEquivFunOnFinite_apply, cotangentRestrict_mk]
  apply P.isUnit_jacobian_of_linearIndependent_of_span_eq_top
  · rw [heq]
    exact (b.linearIndependent.map' _ (LinearMap.ker_eq_bot_of_injective h.injective)).map' _
      (Finsupp.linearEquivFunOnFinite S S σ).ker
  · rw [heq, Set.range_comp, Set.range_comp, Submodule.span_image_linearEquiv, ← Submodule.map_span,
      b.span_eq, Submodule.map_top, LinearMap.range_eq_top_of_surjective _ h.surjective,
      Submodule.map_top, LinearEquiv.range]

end PreSubmersivePresentation

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a1eb027b3daa487ad0cf6898ce0742efdfc495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
