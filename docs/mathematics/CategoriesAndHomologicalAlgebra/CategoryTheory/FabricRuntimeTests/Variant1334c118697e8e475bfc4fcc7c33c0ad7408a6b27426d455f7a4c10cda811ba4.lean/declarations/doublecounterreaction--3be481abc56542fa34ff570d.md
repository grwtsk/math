# doubleCounterReaction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ff372d25be904b0129b0526d88534ca71908e03177c6084d9d43412a8748381",
  "kind": "def",
  "lexical_name": "doubleCounterReaction",
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
  "slug": "doublecounterreaction--3be481abc56542fa34ff570d",
  "source": {
    "blob": "e3aa467ca8a8e8256cba82c6d7700e2fa9cf7bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant1334c118697e8e475bfc4fcc7c33c0ad7408a6b27426d455f7a4c10cda811ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3be481abc56542fa34ff570dbe5a1cddf9ce98a281fc7a40dc191c5e41716c02",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant1334c118697e8e475bfc4fcc7c33c0ad7408a6b27426d455f7a4c10cda811ba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ff372d25be904b0129b0526d88534ca71908e03177c6084d9d43412a8748381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doubleCounterReaction : Reaction counterFabric counterFabric where
  shapeMap := 𝟙 counterFabric.shape
  mapCell := fun x => x
  mapCell_eq := by intros; rfl
  mapCell_natural := by intros; rfl
  cellMap := fun _ => doubleCounter
  contract_natural := by
    intros
    apply Presentation.Hom.ext <;> rfl

/-- Cell reactions preserve complete finite input traces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant1334c118697e8e475bfc4fcc7c33c0ad7408a6b27426d455f7a4c10cda811ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant1334c118697e8e475bfc4fcc7c33c0ad7408a6b27426d455f7a4c10cda811ba4.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3aa467ca8a8e8256cba82c6d7700e2fa9cf7bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
