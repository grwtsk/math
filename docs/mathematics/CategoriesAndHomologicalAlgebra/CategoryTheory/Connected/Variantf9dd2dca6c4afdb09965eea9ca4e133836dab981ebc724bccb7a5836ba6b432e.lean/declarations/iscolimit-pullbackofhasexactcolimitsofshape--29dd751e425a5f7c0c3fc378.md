# IsColimit.pullbackOfHasExactColimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f93120be32bc64b6c05913af8921acaf22b0b1c99019829c4b18156059cbd27d",
  "kind": "def",
  "lexical_name": "IsColimit.pullbackOfHasExactColimitsOfShape",
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
  "slug": "iscolimit-pullbackofhasexactcolimitsofshape--29dd751e425a5f7c0c3fc378",
  "source": {
    "blob": "135a2773a46f3f22e08d5ab61a046175bea8298a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29dd751e425a5f7c0c3fc3787e68c9286e62195f9d8b43b06af8f5581d2db1e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f93120be32bc64b6c05913af8921acaf22b0b1c99019829c4b18156059cbd27d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsColimit.pullbackOfHasExactColimitsOfShape [HasPullbacks C]
    [HasColimitsOfShape J C] [HasExactColimitsOfShape J C] {F : J ⥤ C} {c : Cocone F}
    (hc : IsColimit c) {X : C} (f : X ⟶ c.pt) :
    IsColimit (Cocone.mk _ (pullback.snd c.ι ((Functor.const J).map f))) := by
  suffices IsIso (colimMap (pullback.snd c.ι ((Functor.const J).map f))) from
    Cocone.isColimitOfIsIsoColimMapι _
  have hpull := colim.map_isPullback (IsPullback.of_hasPullback c.ι ((Functor.const J).map f))
  dsimp only [colim_obj, colim_map] at hpull
  have := hc.isIso_colimMap_ι
  apply hpull.isIso_snd_of_isIso

/-- Detecting equality of morphisms factoring through a connected colimit by pulling back along
the inclusions of the colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135a2773a46f3f22e08d5ab61a046175bea8298a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
