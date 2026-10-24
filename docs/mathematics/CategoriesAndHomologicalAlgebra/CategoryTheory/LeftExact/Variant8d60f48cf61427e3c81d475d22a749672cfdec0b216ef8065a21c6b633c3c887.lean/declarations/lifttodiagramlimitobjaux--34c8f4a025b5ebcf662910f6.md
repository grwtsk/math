# liftToDiagramLimitObjAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3919e4c45cd537b8e283df4a8d16536a584d302c528f594c890c2e6ff15e2d9",
  "kind": "def",
  "lexical_name": "liftToDiagramLimitObjAux",
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
  "slug": "lifttodiagramlimitobjaux--34c8f4a025b5ebcf662910f6",
  "source": {
    "blob": "974f03f153f07b594a2a194d7ee1b5ea0598d529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34c8f4a025b5ebcf662910f6dd4b2916aeaec08d5394d3411f452ad9cd2d3012",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3919e4c45cd537b8e283df4a8d16536a584d302c528f594c890c2e6ff15e2d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftToDiagramLimitObjAux {X : C} {K : Type s} [SmallCategory K] [HasLimitsOfShape K D]
    {W : (J.Cover X)ᵒᵖ} (F : K ⥤ Cᵒᵖ ⥤ D)
    (E : Cone (F ⋙ J.diagramFunctor D X ⋙ (evaluation (J.Cover X)ᵒᵖ D).obj W))
    (i : (unop W).Arrow) :
    E.pt ⟶ (limit F).obj (op i.Y) :=
  (isLimitOfPreserves ((evaluation Cᵒᵖ D).obj (op i.Y)) (limit.isLimit F)).lift
        (coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation i E)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant8d60f48cf61427e3c81d475d22a749672cfdec0b216ef8065a21c6b633c3c887.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `974f03f153f07b594a2a194d7ee1b5ea0598d529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
