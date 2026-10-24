# IsSplitCoequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39a80aaf91612e69dfb0a6d9a315bac5a569ad9a8b3e74f140e1195473597b7b",
  "kind": "structure",
  "lexical_name": "IsSplitCoequalizer",
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
  "slug": "issplitcoequalizer--d5dfeaf87d0b0cb8eb37f8f0",
  "source": {
    "blob": "45797185025442dd1ae34ad50dd07694dbbb1659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5dfeaf87d0b0cb8eb37f8f0d34f2e4bb47f8b530f464cf6d9077314bee5c07d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39a80aaf91612e69dfb0a6d9a315bac5a569ad9a8b3e74f140e1195473597b7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsSplitCoequalizer {Z : C} (π : Y ⟶ Z) where
  /-- A map from the coequalizer to `Y` -/
  rightSection : Z ⟶ Y
  /-- A map in the opposite direction to `f` and `g` -/
  leftSection : Y ⟶ X
  /-- Composition of `π` with `f` and with `g` agree -/
  condition : f ≫ π = g ≫ π
  /-- `rightSection` splits `π` -/
  rightSection_π : rightSection ≫ π = 𝟙 Z
  /-- `leftSection` splits `g` -/
  leftSection_bottom : leftSection ≫ g = 𝟙 Y
  /-- `leftSection` composed with `f` is `pi` composed with `rightSection` -/
  leftSection_top : leftSection ≫ f = π ≫ rightSection
#align category_theory.is_split_coequalizer CategoryTheory.IsSplitCoequalizer
#align category_theory.is_split_coequalizer.right_section CategoryTheory.IsSplitCoequalizer.rightSection
#align category_theory.is_split_coequalizer.left_section CategoryTheory.IsSplitCoequalizer.leftSection
#align category_theory.is_split_coequalizer.right_section_π CategoryTheory.IsSplitCoequalizer.rightSection_π
#align category_theory.is_split_coequalizer.left_section_bottom CategoryTheory.IsSplitCoequalizer.leftSection_bottom
#align category_theory.is_split_coequalizer.left_section_top CategoryTheory.IsSplitCoequalizer.leftSection_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45797185025442dd1ae34ad50dd07694dbbb1659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
