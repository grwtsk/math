# IsCardinalForSmallObjectArgument

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:406f3eb92929733cb1df140d9e6e666742d05213c237dcc07fec3f535d4c1ff6",
  "kind": "class",
  "lexical_name": "IsCardinalForSmallObjectArgument",
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
  "slug": "iscardinalforsmallobjectargument--414fc976b0c23a508ebd11d4",
  "source": {
    "blob": "efd82d0b796af9b9a909604f4844a9688b2d24fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant34564553e35672b9ee8d7316a24235320805c5e1bad29df2d370700fc8b6ed33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:414fc976b0c23a508ebd11d40f25fcd2caa70b2b73d6d50da32347ca57fa537f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant34564553e35672b9ee8d7316a24235320805c5e1bad29df2d370700fc8b6ed33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:406f3eb92929733cb1df140d9e6e666742d05213c237dcc07fec3f535d4c1ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsCardinalForSmallObjectArgument (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [OrderBot κ.ord.toType] : Prop where
  isSmall : IsSmall.{w} I := by infer_instance
  locallySmall : LocallySmall.{w} C := by infer_instance
  hasPushouts : HasPushouts C := by infer_instance
  hasCoproducts : HasCoproducts.{w} C := by infer_instance
  hasIterationOfShape : HasIterationOfShape κ.ord.toType C := by infer_instance
  preservesColimit {A B X Y : C} (i : A ⟶ B) (_ : I i) (f : X ⟶ Y)
    (hf : RelativeCellComplex.{w} (fun (_ : κ.ord.toType) ↦ I.homFamily) f) :
    PreservesColimit hf.F (coyoneda.obj (Opposite.op A))

end MorphismProperty

namespace SmallObject

open MorphismProperty

variable (κ : Cardinal.{w}) [Fact κ.IsRegular] [OrderBot κ.ord.toType]
  [I.IsCardinalForSmallObjectArgument κ]

include I κ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant34564553e35672b9ee8d7316a24235320805c5e1bad29df2d370700fc8b6ed33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant34564553e35672b9ee8d7316a24235320805c5e1bad29df2d370700fc8b6ed33.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efd82d0b796af9b9a909604f4844a9688b2d24fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
