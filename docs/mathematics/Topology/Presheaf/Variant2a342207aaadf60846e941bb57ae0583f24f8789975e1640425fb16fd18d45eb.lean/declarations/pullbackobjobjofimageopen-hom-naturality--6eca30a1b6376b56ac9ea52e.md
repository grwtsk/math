# pullbackObjObjOfImageOpen_hom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56d8597eca75882a275ad4d04697818beaf84160",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0011c49f-d64c-fecc-90f6-c7ec78b5abb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90f5bc5e-c564-6c8a-c268-2a4a1a37a19a",
  "kind": "theorem",
  "lexical_name": "pullbackObjObjOfImageOpen_hom_naturality",
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
  "slug": "pullbackobjobjofimageopen-hom-naturality--6eca30a1b6376b56ac9ea52e",
  "source": {
    "blob": "56d8597eca75882a275ad4d04697818beaf84160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 329,
    "path": "GRWTSK/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eca30a1b6376b56ac9ea52ec5dabdcb72f02e1acb216ec3bc9aad4ac9dc48f2",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90f5bc5e-c564-6c8a-c268-2a4a1a37a19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullbackObjObjOfImageOpen_hom_naturality {X Y : TopCat.{v}} (f : X ⟶ Y) (ℱ : Y.Presheaf C)
    {U V : Opens X} (HU : IsOpen (f '' U)) (HV : IsOpen (f '' V)) (le : U ≤ V) :
    ((pullback C f).obj ℱ).map (homOfLE le).op ≫ (pullbackObjObjOfImageOpen f ℱ U HU).hom =
    (pullbackObjObjOfImageOpen f ℱ V HV).hom ≫ ℱ.map (IsOpenMap.functorMap HU HV le).op := by
  dsimp [pullbackObjObjOfImageOpen]
  refine ((Opens.map f).op.isPointwiseLeftKanExtensionLeftKanExtensionUnit ℱ (op V)).hom_ext
    (fun j ↦ ?_)
  have eq : ((LeftExtension.mk ((Opens.map f).op.leftKanExtension ℱ)
      ((Opens.map f).op.leftKanExtensionUnit ℱ)).coconeAt
      (op V)).ι.app j ≫ ((pullback C f).obj ℱ).map (homOfLE le).op =
      ((LeftExtension.mk ((Opens.map f).op.leftKanExtension ℱ)
      ((Opens.map f).op.leftKanExtensionUnit ℱ)).coconeAt
      (op U)).ι.app ((CostructuredArrow.map (homOfLE le).op).obj j) := by cat_disch
  rw [Limits.IsColimit.comp_coconePointUniqueUpToIso_hom_assoc, reassoc_of% eq,
    Limits.IsColimit.comp_coconePointUniqueUpToIso_hom,
    Limits.coconeOfDiagramTerminal_ι_app, Limits.coconeOfDiagramTerminal_ι_app]
  dsimp
  rw [← Functor.map_comp]
  cat_disch

end

end TopCat.Presheaf

namespace IsOpenMap

noncomputable section

variable {C} [Limits.HasColimits C]

open TopCat.Presheaf

/--
If `f : X ⟶ Y` is an open map and `ℱ` is a presheaf on `Y`, then the pullback of `ℱ` by `f` is
isomorphic to the composition of `ℱ` and of the functor `(Open X)ᵒᵖ ⥤ (Open Y)ᵒᵖ` induced by `f`.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56d8597eca75882a275ad4d04697818beaf84160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
