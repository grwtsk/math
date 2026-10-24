# HasExactLimitsOfShape.of_codomain_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:060228b9-cdd1-0e5f-3715-9ff18a7d0de6",
  "kind": "lemma",
  "lexical_name": "HasExactLimitsOfShape.of_codomain_equivalence",
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
  "slug": "hasexactlimitsofshape-of-codomain-equivalence--134a9868ed49abf667313382",
  "source": {
    "blob": "396f007c83383599ab8260ba35e87f79d5ddce34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:134a9868ed49abf667313382531dd59fc39d691d3e7c7265c3145c62db682262",
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

Occurrence: `result:060228b9-cdd1-0e5f-3715-9ff18a7d0de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasExactLimitsOfShape.of_codomain_equivalence (J : Type*) [Category* J] {D : Type*}
    [Category* D] (e : C ≌ D) [HasLimitsOfShape J C] [HasExactLimitsOfShape J C] :
    haveI : HasLimitsOfShape J D := Adjunction.hasLimitsOfShape_of_equivalence e.inverse
    HasExactLimitsOfShape J D := by
  have : HasLimitsOfShape J D := Adjunction.hasLimitsOfShape_of_equivalence e.inverse
  refine ⟨⟨fun _ _ _ => ⟨@fun K => ?_⟩⟩⟩
  refine preservesColimit_of_natIso K (?_ : e.congrRight.inverse ⋙ lim ⋙ e.functor ≅ lim)
  apply e.symm.congrRight.fullyFaithfulFunctor.preimageIso
  exact isoWhiskerLeft (_ ⋙ lim) e.unitIso.symm ≪≫ (preservesLimitNatIso e.inverse).symm

namespace Adjunction

variable {C} {D : Type u''} [Category.{v''} D] {F : C ⥤ D} {G : D ⥤ C}

/-- Let `adj : F ⊣ G` be an adjunction, with `G : D ⥤ C` reflective.
Assume that `D` has finite limits and `F` commutes with them.
If `C` has exact colimits of shape `J`, then `D` also has exact colimits of shape `J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396f007c83383599ab8260ba35e87f79d5ddce34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
