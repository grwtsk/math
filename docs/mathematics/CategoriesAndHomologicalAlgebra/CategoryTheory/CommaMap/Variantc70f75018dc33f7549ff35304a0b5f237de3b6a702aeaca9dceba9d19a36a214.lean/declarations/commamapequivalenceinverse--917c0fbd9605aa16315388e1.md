# commaMapEquivalenceInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1560d8c8adcae40cedbfcfbb910501b09e3dc2fcd20222a0dab1cf9aea158eb9",
  "kind": "def",
  "lexical_name": "commaMapEquivalenceInverse",
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
  "slug": "commamapequivalenceinverse--917c0fbd9605aa16315388e1",
  "source": {
    "blob": "9a0d5b34cc35b612927c3cfcb0772f8d52aaf0f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:917c0fbd9605aa16315388e1ac2c738aa90582f56e4bd0a716ab7dc0f3944698",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1560d8c8adcae40cedbfcfbb910501b09e3dc2fcd20222a0dab1cf9aea158eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commaMapEquivalenceInverse [IsIso β] (X : Comma L' R') :
    Comma (map₂ (𝟙 _) α) (map₂ X.hom (inv β)) ⥤ StructuredArrow X (Comma.map α β) where
  obj Y := mk (Y := ⟨Y.left.right, Y.right.right, Y.hom.right⟩)
    ⟨by exact Y.left.hom, by exact Y.right.hom, by
      simpa using congrFun (congrArg CategoryStruct.comp (StructuredArrow.w Y.hom))
        (β.app Y.right.right)⟩
  map {Y Z} f := homMk ⟨by exact f.left.right, by exact f.right.right,
      by exact congrArg CommaMorphism.right f.w⟩ (by
      ext
      <;> simp only [Comma.map_obj_right, Comma.map_obj_left, Comma.map_obj_hom, Functor.comp_obj,
          map₂_obj_right, map₂_obj_left, Functor.const_obj_obj, map₂_obj_hom, eq_mp_eq_cast, id_eq,
          mk_left, mk_right, mk_hom_eq_self, Comma.comp_left, Comma.map_map_left, w]
      · simp only [Comma.map_obj_right, Comma.map_obj_left, Comma.map_obj_hom, Functor.comp_obj,
        map₂_obj_right, map₂_obj_left, Functor.const_obj_obj, map₂_obj_hom, eq_mp_eq_cast, id_eq,
        mk_left, mk_right, mk_hom_eq_self, Comma.comp_right, Comma.map_map_right, w] )
  map_id X := by ext <;> rfl
  map_comp f g := by ext <;> rfl

/-- The unit establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a0d5b34cc35b612927c3cfcb0772f8d52aaf0f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
