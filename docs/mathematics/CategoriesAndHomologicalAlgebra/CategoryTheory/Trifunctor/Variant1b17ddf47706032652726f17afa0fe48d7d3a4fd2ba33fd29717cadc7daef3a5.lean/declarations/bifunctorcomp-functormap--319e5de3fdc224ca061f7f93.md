# bifunctorComp₁₂FunctorMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea827690d8102e0c6c0d61e9644591ddce473a0469fb2cae1966e9d70c721599",
  "kind": "def",
  "lexical_name": "bifunctorComp₁₂FunctorMap",
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
  "slug": "bifunctorcomp-functormap--319e5de3fdc224ca061f7f93",
  "source": {
    "blob": "0548f4dadccdbc677565d815210dbca34b0d1bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:319e5de3fdc224ca061f7f939226bb2a16aae31557a2518e9c1cf65084122cda",
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

Occurrence: `declaration:ea827690d8102e0c6c0d61e9644591ddce473a0469fb2cae1966e9d70c721599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bifunctorComp₁₂FunctorMap {F₁₂ F₁₂' : C₁ ⥤ C₂ ⥤ C₁₂} (φ : F₁₂ ⟶ F₁₂') :
    bifunctorComp₁₂FunctorObj (C₃ := C₃) (C₄ := C₄) F₁₂ ⟶ bifunctorComp₁₂FunctorObj F₁₂' where
  app G :=
    { app X₁ :=
        { app X₂ := { app X₃ := (G.map ((φ.app X₁).app X₂)).app X₃ }
          naturality := fun X₂ Y₂ f ↦ by
            ext X₃
            dsimp
            simp only [← NatTrans.comp_app, NatTrans.naturality, ← G.map_comp] }
      naturality X₁ Y₁ f := by
        ext X₂ X₃
        dsimp
        simp only [← NatTrans.comp_app, NatTrans.naturality, ← G.map_comp] }
  naturality G G' f := by
    ext X₁ X₂ X₃
    dsimp
    simp only [← NatTrans.comp_app, NatTrans.naturality]

/-- The functor `(C₁ ⥤ C₂ ⥤ C₁₂) ⥤ (C₁₂ ⥤ C₃ ⥤ C₄) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` which
sends `F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂` and `G : C₁₂ ⥤ C₃ ⥤ C₄` to the functor
`bifunctorComp₁₂ F₁₂ G : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0548f4dadccdbc677565d815210dbca34b0d1bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
