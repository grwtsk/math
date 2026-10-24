# IsCocartesian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccb249d3f7a1ee8c835272235b151c19dbd7549281eed86366e6455cee80dc1c",
  "kind": "class",
  "lexical_name": "IsCocartesian",
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
  "slug": "iscocartesian--775c85f70752f8ec96bba2a9",
  "source": {
    "blob": "2fee884398a53ac223e64702c19f6ce77225d041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:775c85f70752f8ec96bba2a9a8ba07023b6f2fd5ad93dbebddb48dc6aa527248",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccb249d3f7a1ee8c835272235b151c19dbd7549281eed86366e6455cee80dc1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
class IsCocartesian : Prop extends IsHomLift p f φ where
  universal_property {b' : 𝒳} (φ' : a ⟶ b') [IsHomLift p f φ'] :
      ∃! χ : b ⟶ b', IsHomLift p (𝟙 S) χ ∧ φ ≫ χ = φ'

/-- A morphism `φ : a ⟶ b` in `𝒳` lying over `f : R ⟶ S` in `𝒮` is strongly cocartesian if for
all morphisms `φ' : a ⟶ b'` and all diagrams of the form
```
a --φ--> b        b'
|        |        |
v        v        v
R --f--> S --g--> S'
```
such that `φ'` lifts `f ≫ g`, there exists a lift `χ` of `g` such that `φ' = χ ≫ φ`. -/
@[stacks 02XK]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fee884398a53ac223e64702c19f6ce77225d041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
