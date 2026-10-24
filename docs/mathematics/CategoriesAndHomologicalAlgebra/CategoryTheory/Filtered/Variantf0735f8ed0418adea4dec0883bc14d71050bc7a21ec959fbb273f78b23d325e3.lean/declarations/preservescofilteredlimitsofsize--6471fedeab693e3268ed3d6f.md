# PreservesCofilteredLimitsOfSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfd6d04abc1bdd9fe2727711a748d53f9afca682ec1c3d229f74c6c1e2bae246",
  "kind": "class",
  "lexical_name": "PreservesCofilteredLimitsOfSize",
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
  "slug": "preservescofilteredlimitsofsize--6471fedeab693e3268ed3d6f",
  "source": {
    "blob": "32a577c78b31a6928f858cb3aa30dbd7726c7d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6471fedeab693e3268ed3d6f1137a7309f0681ab9e0f737da048e7170d8da29a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfd6d04abc1bdd9fe2727711a748d53f9afca682ec1c3d229f74c6c1e2bae246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PreservesCofilteredLimitsOfSize (F : C ⥤ D) : Prop where
  preserves_cofiltered_limits :
    ∀ (J : Type w) [Category.{w'} J] [IsCofiltered J], PreservesLimitsOfShape J F

/--
A functor is said to preserve cofiltered limits, if it preserves all limits of shape `J`, where
`J` is a cofiltered category which is small relative to the universe in which morphisms of the
source live.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a577c78b31a6928f858cb3aa30dbd7726c7d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
