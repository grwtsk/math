# bifunctorComp₁₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7f820bdb4635eef4b99e1b96ca8b36e4cb595e9e20a77a0cf00fcb6f627af28",
  "kind": "def",
  "lexical_name": "bifunctorComp₁₂",
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
  "slug": "bifunctorcomp--6fbc56a8ae666c7d926ed9b4",
  "source": {
    "blob": "0548f4dadccdbc677565d815210dbca34b0d1bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fbc56a8ae666c7d926ed9b4aafb4687d8212e1e83bb5dd156afeeb326c55f05",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7f820bdb4635eef4b99e1b96ca8b36e4cb595e9e20a77a0cf00fcb6f627af28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bifunctorComp₁₂ (F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂) (G : C₁₂ ⥤ C₃ ⥤ C₄) :
    C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj X₁ := bifunctorComp₁₂Obj F₁₂ G X₁
  map {X₁ Y₁} φ :=
    { app := fun X₂ =>
        { app := fun X₃ => (G.map ((F₁₂.map φ).app X₂)).app X₃ }
      naturality := fun {X₂ Y₂} ψ => by
        ext X₃
        dsimp
        simp only [← NatTrans.comp_app, ← G.map_comp, NatTrans.naturality] }

/-- Auxiliary definition for `bifunctorComp₁₂Functor`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0548f4dadccdbc677565d815210dbca34b0d1bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
