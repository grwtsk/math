# idZeroEquivIsoZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ba819c8d6cc5490abd1716ccbcdec274fc267e2b7611ebedc243f5c3e922b58",
  "kind": "def",
  "lexical_name": "idZeroEquivIsoZero",
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
  "slug": "idzeroequivisozero--7e98140b51a1a5156c1c4260",
  "source": {
    "blob": "c2539fbd7ad61c6ce766a31e2ca6b7fce6aa0bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e98140b51a1a5156c1c42604579c18e1bc7f4799d0202797a23f3b429ad5f22",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ba819c8d6cc5490abd1716ccbcdec274fc267e2b7611ebedc243f5c3e922b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idZeroEquivIsoZero (X : C) : 𝟙 X = 0 ≃ (X ≅ 0) where
  toFun h :=
    { hom := 0
      inv := 0 }
  invFun i := zero_of_target_iso_zero (𝟙 X) i
  left_inv := by cat_disch
  right_inv := by cat_disch

attribute [to_dual existing idZeroEquivIsoZero_apply_inv] idZeroEquivIsoZero_apply_hom

/-- If `0 : X ⟶ Y` is an epimorphism, then `Y ≅ 0`. -/
@[to_dual (attr := simps) /-- If `0 : X ⟶ Y` is a monomorphism, then `X ≅ 0`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2539fbd7ad61c6ce766a31e2ca6b7fce6aa0bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
