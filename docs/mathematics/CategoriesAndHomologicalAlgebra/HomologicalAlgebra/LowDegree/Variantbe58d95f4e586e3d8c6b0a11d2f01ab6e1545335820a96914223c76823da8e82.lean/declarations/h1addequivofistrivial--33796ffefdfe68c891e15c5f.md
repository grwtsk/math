# H1AddEquivOfIsTrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3afacbb64d85589b837cb5e279a95b0b764d7524eb576e95fb1dee7d2cd42d3f",
  "kind": "def",
  "lexical_name": "H1AddEquivOfIsTrivial",
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
  "slug": "h1addequivofistrivial--33796ffefdfe68c891e15c5f",
  "source": {
    "blob": "8dd456866147588b348a0b16b5ea928e6ab81586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1051,
    "line": 1031,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33796ffefdfe68c891e15c5fead68369fed5700be332f53e15155bdc1ab14a84",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3afacbb64d85589b837cb5e279a95b0b764d7524eb576e95fb1dee7d2cd42d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1051.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def H1AddEquivOfIsTrivial :
    H1 A ≃+ (Additive <| Abelianization G) ⊗[ℤ] A :=
  LinearEquiv.toAddEquiv <| LinearEquiv.ofLinearMap
    (H1ToTensorOfIsTrivial A) (lift <| mkH1OfIsTrivial A)
    (ext <| LinearMap.toAddMonoidHom_injective <| by
      ext g a
      simp [TensorProduct.mk_apply, TensorProduct.lift.tmul, mkH1OfIsTrivial_apply,
        H1ToTensorOfIsTrivial_H1π_single g a])
    (LinearMap.toAddMonoidHom_injective <|
      (H1Iso A).symm.toLinearEquiv.toAddEquiv.comp_left_injective <|
      QuotientAddGroup.addMonoidHom_ext _ <|
      (cycles₁IsoOfIsTrivial A).symm.toLinearEquiv.toAddEquiv.comp_left_injective <| by
        ext
        simp only [H1ToTensorOfIsTrivial, Iso.toLinearEquiv, AddMonoidHom.coe_comp,
          LinearMap.toAddMonoidHom_coe, LinearMap.coe_comp, AddMonoidHom.coe_toIntLinearMap]
        -- todo: change this proof so that we don't need `change` and `simpa` that both abuse defeq.
        change TensorProduct.lift _ (QuotientAddGroup.lift _ _ _ ((H1Iso A).hom _)) = _
        simpa [AddSubgroup.subtype, -π_comp_H1Iso_inv_apply, QuotientAddGroup.mk',
          cycles₁IsoOfIsTrivial_inv_apply (A := A)] using! (π_comp_H1Iso_inv_apply A _).symm)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd456866147588b348a0b16b5ea928e6ab81586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
