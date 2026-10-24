# mapSnakeInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:256c3f6b97a248881803bedc79471318ac4906db39aaa027158f6eb84a74d38b",
  "kind": "def",
  "lexical_name": "mapSnakeInput",
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
  "slug": "mapsnakeinput--f8171facd46b3b3b3c478b34",
  "source": {
    "blob": "26d1411fed80d22f590edd6abd66e9961da1faf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8171facd46b3b3b3c478b342155aff9840414d8ca42881a19085f8fb043e4e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:256c3f6b97a248881803bedc79471318ac4906db39aaa027158f6eb84a74d38b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapSnakeInput (i j : ι) (hij : c.Rel i j) :
    snakeInput hS₁ i j hij ⟶ snakeInput hS₂ i j hij where
  f₀ := (homologyFunctor C c i).mapShortComplex.map φ
  f₁ := (opcyclesFunctor C c i).mapShortComplex.map φ
  f₂ := (cyclesFunctor C c j).mapShortComplex.map φ
  f₃ := (homologyFunctor C c j).mapShortComplex.map φ

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26d1411fed80d22f590edd6abd66e9961da1faf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
