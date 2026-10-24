# left_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2753dcab-6673-4771-1cfa-c5db12978c0f",
  "kind": "lemma",
  "lexical_name": "left_triangle",
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
  "slug": "left-triangle--0abf86acf1a12dee5c77498c",
  "source": {
    "blob": "87240e6539304044b4c729f92dc5346e935edfe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 27,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0abf86acf1a12dee5c77498c2cfef62d6c52454c12e8c41ec3c6d647ef23f3d8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2753dcab-6673-4771-1cfa-c5db12978c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma left_triangle {X Y : C} (η : 𝟙_ _ ⟶ X ⊗ Y) (ε : Y ⊗ X ⟶ 𝟙_ _) (w : False) :
    η ▷ X ≫ (α_ _ _ _).hom ≫ X ◁ ε = (λ_ _).hom ≫ (ρ_ _).inv := by
  /- Displays string diagrams for the both sides of the goal. -/
  with_panel_widgets [StringDiagram]
    /- Place the cursor here to see the string diagrams. -/
    /- You can also see the string diagram of any 2-morphism in the goal or hyperthesis. -/
    with_panel_widgets [SelectionPanel]
      /- Place the cursor here and shift-click the 2-morphisms in the tactic state. -/
      exact w.elim

/- Instead of writing `with_panel_widgets` everywhere, you can also use this command. -/
show_panel_widgets [local StringDiagram, local SelectionPanel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87240e6539304044b4c729f92dc5346e935edfe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
