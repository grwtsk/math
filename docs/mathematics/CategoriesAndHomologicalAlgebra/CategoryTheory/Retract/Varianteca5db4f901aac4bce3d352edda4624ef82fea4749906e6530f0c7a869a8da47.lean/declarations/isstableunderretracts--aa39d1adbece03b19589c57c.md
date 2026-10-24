# IsStableUnderRetracts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcb4c709049103f86cc5c3e295d3071e312b60eee28d997c038f354769f79e6e",
  "kind": "class",
  "lexical_name": "IsStableUnderRetracts",
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
  "slug": "isstableunderretracts--aa39d1adbece03b19589c57c",
  "source": {
    "blob": "a88cd266821ef0b9885600f54eae2efdfb1d9b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa39d1adbece03b19589c57c887041da6f57a67d08b6e0132a2309f0d7ad68dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcb4c709049103f86cc5c3e295d3071e312b60eee28d997c038f354769f79e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsStableUnderRetracts (P : MorphismProperty C) : Prop where
  of_retract {X Y Z W : C} {f : X ⟶ Y} {g : Z ⟶ W} (h : RetractArrow f g) (hg : P g) : P f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a88cd266821ef0b9885600f54eae2efdfb1d9b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
