# StringDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f092f990166494ac833f2876a404af22d5b2a7181809b06dd68e889a2560e349",
  "kind": "def",
  "lexical_name": "StringDiagram",
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
  "slug": "stringdiagram--f2904a60fda869ccfb5b33f7",
  "source": {
    "blob": "28c2655184e172fc1233be0e59108baaf6724c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 427,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2904a60fda869ccfb5b33f7afd0c3b55d9a1208f7f8d7bf0b313e30ca634f68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f092f990166494ac833f2876a404af22d5b2a7181809b06dd68e889a2560e349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def StringDiagram : Component PanelWidgetProps :=
  mk_rpc_widget% StringDiagram.rpc

open Command

/--
Display the string diagram for a given term.

Example usage:
```
/- String diagram for the equality theorem. -/
#string_diagram MonoidalCategory.whisker_exchange

/- String diagram for the morphism. -/
variable {C : Type u} [Category.{v} C] [MonoidalCategory C] {X Y : C} (f : 𝟙_ C ⟶ X ⊗ Y) in
#string_diagram f
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c2655184e172fc1233be0e59108baaf6724c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
