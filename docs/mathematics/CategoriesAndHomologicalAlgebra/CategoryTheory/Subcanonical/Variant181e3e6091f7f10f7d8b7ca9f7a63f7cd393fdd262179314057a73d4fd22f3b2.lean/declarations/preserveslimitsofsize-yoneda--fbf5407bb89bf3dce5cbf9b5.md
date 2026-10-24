# preservesLimitsOfSize_yoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:034819d2143b74c88105101680da570ced74990c6213de1907024d0db5de4e9f",
  "kind": "instance",
  "lexical_name": "preservesLimitsOfSize_yoneda",
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
  "slug": "preserveslimitsofsize-yoneda--fbf5407bb89bf3dce5cbf9b5",
  "source": {
    "blob": "b269751f4749067faf6e4f7f2d429f95fac7514a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 254,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbf5407bb89bf3dce5cbf9b59d2c2d672482a032ebf8ca5b6fa1327ef8736500",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:034819d2143b74c88105101680da570ced74990c6213de1907024d0db5de4e9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimitsOfSize_yoneda : PreservesLimitsOfSize J.yoneda := by
  refine ⟨fun {I} _ ↦ ?_⟩
  have : PreservesLimitsOfShape I (J.yoneda ⋙ sheafToPresheaf J _) :=
    inferInstanceAs <| PreservesLimitsOfShape I CategoryTheory.yoneda
  exact preservesLimitsOfShape_of_reflects_of_preserves _ (sheafToPresheaf J _)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/--
Let `{ Xᵢ ⟶ Y }` be a family of pairwise disjoint maps that form a cover in `J`. Then its
image under the yoneda embedding to `J`-sheaves is a coproduct.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b269751f4749067faf6e4f7f2d429f95fac7514a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
