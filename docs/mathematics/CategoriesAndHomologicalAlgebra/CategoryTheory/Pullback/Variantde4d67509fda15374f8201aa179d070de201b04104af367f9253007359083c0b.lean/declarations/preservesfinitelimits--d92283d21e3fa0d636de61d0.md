# preservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d9e51940d33fe7d4f79cf9465b87b34d7d072b3b25dc125857d46ca0c026d86",
  "kind": "instance",
  "lexical_name": "preservesFiniteLimits",
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
  "slug": "preservesfinitelimits--d92283d21e3fa0d636de61d0",
  "source": {
    "blob": "fcf21c72976dbc06a06b9efb7e0cefb9b2bde992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d92283d21e3fa0d636de61d02f1129288a4b48861167e54c026f4fc34ffadc02",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d9e51940d33fe7d4f79cf9465b87b34d7d072b3b25dc125857d46ca0c026d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesFiniteLimits : PreservesFiniteLimits (Functor.sheafPullback G A J K) :=
  preservesFiniteLimits_of_natIso (sheafPullbackIso G A J K).symm

end sheafPullbackConstruction

end GeneralUniverses

namespace SmallCategories

variable {C : Type v₁} [SmallCategory C] {D : Type v₁} [SmallCategory D] (G : C ⥤ D)
  (A : Type u₁) [Category.{v₁} A]
  (J : GrothendieckTopology C) (K : GrothendieckTopology D)

-- The favourable assumptions under which we have sheafification
variable {FA : A → A → Type*} {CA : A → Type v₁} [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)]
variable [ConcreteCategory.{v₁} A FA] [PreservesLimits (forget A)] [HasColimits A] [HasLimits A]
  [PreservesFilteredColimits (forget A)] [(forget A).ReflectsIsomorphisms]
  [Functor.IsContinuous.{v₁} G J K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantde4d67509fda15374f8201aa179d070de201b04104af367f9253007359083c0b.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf21c72976dbc06a06b9efb7e0cefb9b2bde992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
