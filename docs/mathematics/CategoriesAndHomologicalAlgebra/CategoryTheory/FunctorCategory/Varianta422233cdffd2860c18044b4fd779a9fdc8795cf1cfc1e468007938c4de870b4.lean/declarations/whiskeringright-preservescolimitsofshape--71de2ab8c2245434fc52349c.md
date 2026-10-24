# whiskeringRight_preservesColimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e1ba5a75eb5a13f47df7c82e3cc61f22a1ad46d8e84cb9b97638fd0099f2211",
  "kind": "instance",
  "lexical_name": "whiskeringRight_preservesColimitsOfShape",
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
  "slug": "whiskeringright-preservescolimitsofshape--71de2ab8c2245434fc52349c",
  "source": {
    "blob": "604442c40a9cb99a85b56d4fccf8d9ab83305e29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71de2ab8c2245434fc52349c8549deb5dc1b70a80c66109613acff1e81348df9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e1ba5a75eb5a13f47df7c82e3cc61f22a1ad46d8e84cb9b97638fd0099f2211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance whiskeringRight_preservesColimitsOfShape {C : Type*} [Category C] {D : Type*}
    [Category D] {E : Type*} [Category E] {J : Type*} [Category J]
    [HasColimitsOfShape J D] (F : D ⥤ E) [PreservesColimitsOfShape J F] :
    PreservesColimitsOfShape J ((whiskeringRight C D E).obj F) :=
  ⟨fun {K} =>
    ⟨fun c {hc} => ⟨by
      apply evaluationJointlyReflectsColimits _ (fun k => ?_)
      change IsColimit (((evaluation _ _).obj k ⋙ F).mapCocone c)
      exact isColimitOfPreserves _ hc⟩⟩⟩

/-- Whiskering right and then taking a colimit is the same as taking the colimit and applying the
    functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `604442c40a9cb99a85b56d4fccf8d9ab83305e29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
