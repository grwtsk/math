# IsLimit.pushoutOfHasExactLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5c7c40adcf7f44f3102f1c35340952c3c9d7ce6d398e3874d356e817bc6eed2",
  "kind": "def",
  "lexical_name": "IsLimit.pushoutOfHasExactLimitsOfShape",
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
  "slug": "islimit-pushoutofhasexactlimitsofshape--be146fc0420c2fff174e4f0c",
  "source": {
    "blob": "543f795e30d59adce56381b2a18b186cc2da8d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be146fc0420c2fff174e4f0c59c5c6154b4e77a0538068f1aefc908eeb5b2e65",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5c7c40adcf7f44f3102f1c35340952c3c9d7ce6d398e3874d356e817bc6eed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsLimit.pushoutOfHasExactLimitsOfShape [HasPushouts C]
    [HasLimitsOfShape J C] [HasExactLimitsOfShape J C] {F : J ⥤ C} {c : Cone F}
    (hc : IsLimit c) {X : C} (f : c.pt ⟶ X) :
    IsLimit (Cone.mk _ (pushout.inr c.π ((Functor.const J).map f))) := by
  suffices IsIso (limMap (pushout.inr c.π ((Functor.const J).map f))) from
    Cone.isLimitOfIsIsoLimMapπ _
  have hpush := lim.map_isPushout (IsPushout.of_hasPushout c.π ((Functor.const J).map f))
  dsimp only [lim_obj, lim_map] at hpush
  have := hc.isIso_limMap_π
  apply hpush.isIso_inr_of_isIso

/-- Detecting equality of morphisms factoring through a connected limit by pushing out along
the projections of the limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543f795e30d59adce56381b2a18b186cc2da8d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
