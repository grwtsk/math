# overEquivIdealSheafData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6a0f98bd2f73ce8798779182d365afa04a1083d9301f8328d949c1803e0b8a0",
  "kind": "def",
  "lexical_name": "overEquivIdealSheafData",
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
  "slug": "overequividealsheafdata--2b7253c63e7892b681c47846",
  "source": {
    "blob": "2b88620f29bbb2310122e10a2b056d6f162db23d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 175,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b7253c63e7892b681c4784640114c06039dcc1ddf26fa4fef42c8b98e19b4ea",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6a0f98bd2f73ce8798779182d365afa04a1083d9301f8328d949c1803e0b8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overEquivIdealSheafData (X : Scheme.{u}) :
    (MorphismProperty.Over @IsClosedImmersion ⊤ X)ᵒᵖ ≌ X.IdealSheafData where
  functor := (MorphismProperty.Over.forget _ _ _).op ⋙ X.kerFunctor
  inverse :=
  { obj I := .op <| .mk _ I.subschemeι inferInstance
    map {I J} h := (MorphismProperty.Over.homMk (Scheme.IdealSheafData.inclusion h.le)).op
    map_comp f g := Quiver.Hom.unop_inj (by ext1; simp) }
  unitIso := NatIso.ofComponents (fun Y ↦
    letI : IsClosedImmersion Y.unop.hom := Y.unop.prop
    ((MorphismProperty.Over.isoMk (asIso Y.unop.hom.toImage).symm).op)) fun {X Y} f ↦ by
      apply Quiver.Hom.unop_inj
      ext1
      dsimp
      rw [IsIso.eq_comp_inv, Category.assoc, IsIso.inv_comp_eq,
        ← cancel_mono (Scheme.IdealSheafData.subschemeι _)]
      simp
  counitIso := NatIso.ofComponents (fun I ↦ eqToIso (by simp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b88620f29bbb2310122e10a2b056d6f162db23d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
