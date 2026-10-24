# pushforwardNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65db00fd0471f702c4e8e4d5c609e265c7e6578fb7984795182e304588a6d978",
  "kind": "def",
  "lexical_name": "pushforwardNatIso",
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
  "slug": "pushforwardnatiso--ea9b32d85febf6e17327073d",
  "source": {
    "blob": "da5ea3495c1c6589b3f1960ad5c652e3cb52c62e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea9b32d85febf6e17327073d506a5d4259951ded9255d90f9eb653ae291b63ff",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65db00fd0471f702c4e8e4d5c609e265c7e6578fb7984795182e304588a6d978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pushforwardNatIso (α : F ≅ G) :
    pushforward.{v} φ ≅
      pushforward.{v} (φ ≫ (Functor.sheafPushforwardContinuousNatTrans α.hom _ _ _).app S) where
  hom := pushforwardNatTrans _ α.hom
  inv := pushforwardNatTrans _ α.inv ≫
    (pushforwardCongr (by ext : 3; simp [← Functor.map_comp, ← op_comp])).hom
  hom_inv_id := by
    ext X U x
    suffices X.val.presheaf.map (α.hom.app U.unop).op ≫
      X.val.presheaf.map (α.inv.app U.unop).op = 𝟙 _ from congr($this x)
    simp only [← Functor.map_comp, ← op_comp,
      Iso.inv_hom_id_app, op_id, CategoryTheory.Functor.map_id]
  inv_hom_id := by
    ext X U x
    suffices X.val.presheaf.map (α.inv.app U.unop).op ≫
      X.val.presheaf.map (α.hom.app U.unop).op = 𝟙 _ from congr($this x)
    simp only [← Functor.map_comp, ← op_comp,
      Iso.hom_inv_id_app, op_id, CategoryTheory.Functor.map_id]

/-- More flexible variant of `SheafOfModules.pushforwardNatIso`. -/
@[simps!]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5ea3495c1c6589b3f1960ad5c652e3cb52c62e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
