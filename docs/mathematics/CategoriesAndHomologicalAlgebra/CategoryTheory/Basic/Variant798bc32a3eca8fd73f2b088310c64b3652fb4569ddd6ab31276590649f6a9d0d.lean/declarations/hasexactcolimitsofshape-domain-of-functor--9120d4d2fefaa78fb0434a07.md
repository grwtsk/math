# HasExactColimitsOfShape.domain_of_functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a1b7285-6ae9-5125-9754-1e5b1d31e242",
  "kind": "lemma",
  "lexical_name": "HasExactColimitsOfShape.domain_of_functor",
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
  "slug": "hasexactcolimitsofshape-domain-of-functor--9120d4d2fefaa78fb0434a07",
  "source": {
    "blob": "396f007c83383599ab8260ba35e87f79d5ddce34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9120d4d2fefaa78fb0434a070dd1a1674a2a3227162d7739552fdad0297399bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a1b7285-6ae9-5125-9754-1e5b1d31e242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasExactColimitsOfShape.domain_of_functor {D : Type*} (J : Type*) [Category* J] [Category* D]
    [HasColimitsOfShape J C] [HasColimitsOfShape J D] [HasExactColimitsOfShape J D]
    (F : C ⥤ D) [PreservesFiniteLimits F] [ReflectsFiniteLimits F] [HasFiniteLimits C]
    [PreservesColimitsOfShape J F] : HasExactColimitsOfShape J C where
  preservesFiniteLimits := { preservesFiniteLimits I := { preservesLimit {G} := {
    preserves {c} hc := by
      constructor
      apply isLimitOfReflects F
      refine (IsLimit.equivOfNatIsoOfIso (isoWhiskerLeft G (preservesColimitNatIso F).symm)
        ((_ ⋙ colim).mapCone c) _ ?_) (isLimitOfPreserves _ hc)
      exact Cone.ext ((preservesColimitNatIso F).symm.app _)
        fun i ↦ (preservesColimitNatIso F).inv.naturality _ } } }

set_option backward.defeqAttrib.useBackward true in
variable {C} in
/--
Pull back a `HasExactLimitsOfShape J` along a functor which preserves and reflects finite colimits
and preserves limits of shape `J`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396f007c83383599ab8260ba35e87f79d5ddce34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
