# IsGaloisSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c006fe28b75f4f28c815fd5eb7e846df45f8996cd955a06a7a74dc38e410a4f",
  "kind": "class",
  "lexical_name": "IsGaloisSubcategory",
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
  "slug": "isgaloissubcategory--181994434eea22135bc51e5d",
  "source": {
    "blob": "01dfa00ddcd8600b6fa3d99a31056273cd3c96ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:181994434eea22135bc51e5d244e541b464b2462425418d6c566e9a42f74f6fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c006fe28b75f4f28c815fd5eb7e846df45f8996cd955a06a7a74dc38e410a4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsGaloisSubcategory (P : ObjectProperty C) : Prop where
  /-- If `C` has a terminal object,`P` is sat. -/
  isClosedUnderLimitsOfShape_discrete_pEmpty :
    P.IsClosedUnderLimitsOfShape (Discrete.{0} PEmpty) := by infer_instance
  /-- `P` is stable under pullbacks. -/
  isClosedUnderLimitsOfShape_walkingCospan :
    P.IsClosedUnderLimitsOfShape WalkingCospan := by infer_instance
  /-- `P` is stable under finite coproducs. -/
  isClosedUnderColimitsOfShape_discrete (ι : Type) [Finite ι] :
    P.IsClosedUnderColimitsOfShape (Discrete ι) := by intros; infer_instance
  /-- `P` is stable under quotients by finite groups. -/
  isClosedUnderColimitsOfShape_singleObj (G : Type v) [Group G] [Finite G] :
    P.IsClosedUnderColimitsOfShape (SingleObj G) := by intros; infer_instance
  isClosedUnderSubobjects : P.IsClosedUnderSubobjects := by infer_instance
  preservesEpimorphisms : P.ι.PreservesEpimorphisms := by infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01dfa00ddcd8600b6fa3d99a31056273cd3c96ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
