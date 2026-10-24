# MonoidalPreadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:798ec0216135981396c5596eb2a778593b7e75d4b4178e6820c051048bdcae1d",
  "kind": "class",
  "lexical_name": "MonoidalPreadditive",
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
  "slug": "monoidalpreadditive--f2b7dc1fc5e5ddfc2895e61f",
  "source": {
    "blob": "5be455d772ab2d7a6b9c1328ace80df2e2953acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2b7dc1fc5e5ddfc2895e61f790c07ac7097329d0c1e94f8954e21d2346b52f6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:798ec0216135981396c5596eb2a778593b7e75d4b4178e6820c051048bdcae1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonoidalPreadditive : Prop where
  whiskerLeft_zero : ∀ {X Y Z : C}, X ◁ (0 : Y ⟶ Z) = 0 := by aesop_cat
  zero_whiskerRight : ∀ {X Y Z : C}, (0 : Y ⟶ Z) ▷ X = 0 := by aesop_cat
  whiskerLeft_add : ∀ {X Y Z : C} (f g : Y ⟶ Z), X ◁ (f + g) = X ◁ f + X ◁ g := by aesop_cat
  add_whiskerRight : ∀ {X Y Z : C} (f g : Y ⟶ Z), (f + g) ▷ X = f ▷ X + g ▷ X := by aesop_cat

attribute [simp] MonoidalPreadditive.whiskerLeft_zero MonoidalPreadditive.zero_whiskerRight
attribute [simp] MonoidalPreadditive.whiskerLeft_add MonoidalPreadditive.add_whiskerRight

variable {C}
variable [MonoidalPreadditive C]

namespace MonoidalPreadditive

-- The priority setting will not be needed when we replace `𝟙 X ⊗ f` by `X ◁ f`.
@[simp (low)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be455d772ab2d7a6b9c1328ace80df2e2953acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
