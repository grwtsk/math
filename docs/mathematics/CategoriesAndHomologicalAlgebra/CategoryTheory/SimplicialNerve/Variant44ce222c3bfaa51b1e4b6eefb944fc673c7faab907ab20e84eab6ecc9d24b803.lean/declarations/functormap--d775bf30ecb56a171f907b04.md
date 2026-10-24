# functorMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e094ff01f2adf1c064a1c541529d478c481262354504886d0f5d2e8b04402e7",
  "kind": "abbrev",
  "lexical_name": "functorMap",
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
  "slug": "functormap--d775bf30ecb56a171f907b04",
  "source": {
    "blob": "6f25f19e1d6c79c5d17a410f7730c33cc0f1adc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d775bf30ecb56a171f907b04a04883df9d13727e8800c45fcfd8574912f5454f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e094ff01f2adf1c064a1c541529d478c481262354504886d0f5d2e8b04402e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev functorMap {J K : Type u} [LinearOrder J] [LinearOrder K]
    (f : J →o K) (i j : SimplicialThickening J) :
      (i ⟶ j) ⥤ ((SimplicialThickening.mk <| f i.as) ⟶ (SimplicialThickening.mk <| f j.as)) where
  obj I := ⟨f '' I.I, Set.mem_image_of_mem f I.left, Set.mem_image_of_mem f I.right,
    by rintro _ ⟨k, hk, rfl⟩; exact f.monotone (I.left_le k hk),
    by rintro _ ⟨k, hk, rfl⟩; exact f.monotone (I.le_right k hk)⟩
  map f := ⟨⟨⟨Set.image_mono f.1.1.1⟩⟩⟩

@[deprecated "No replacement, was using a bad instance" (since := "01-12-2026")]
alias orderHom := functorMap

attribute [local simp] nerveMap_app

set_option backward.isDefEq.respectTransparency.types false in
attribute [local simp] types_tensorObj_def in
/--
The simplicial thickening defines a functor from the category of linear orders to the category of
simplicial categories
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f25f19e1d6c79c5d17a410f7730c33cc0f1adc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
