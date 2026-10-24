# isPointwiseLeftKanExtensionEquivOfGuitartExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6f552d496ceee271082dcf51d1753b29f8a8c6f23676d9e39c8763180077d08",
  "kind": "def",
  "lexical_name": "isPointwiseLeftKanExtensionEquivOfGuitartExact",
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
  "slug": "ispointwiseleftkanextensionequivofguitartexact--80360ec4cc984823e2b2ae5f",
  "source": {
    "blob": "0d08978648aa3aacc3d3fc2330c3a149c4a87fe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80360ec4cc984823e2b2ae5f8a081e0042cd9e7989d09ab32376d6b666506e90",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6f552d496ceee271082dcf51d1753b29f8a8c6f23676d9e39c8763180077d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPointwiseLeftKanExtensionEquivOfGuitartExact
    (w : TwoSquare T L R B) [w.GuitartExact] [B.EssSurj] :
    (E.compTwoSquare w).IsPointwiseLeftKanExtension ≃
      E.IsPointwiseLeftKanExtension where
  toFun h := E.isPointwiseLeftKanExtensionOfCompTwoSquare w h
  invFun h := h.compTwoSquare w
  left_inv _ := by subsingleton
  right_inv _ := by subsingleton

end Functor.LeftExtension

namespace Functor.RightExtension

variable {T : C₁ ⥤ C₂} {L : C₁ ⥤ C₃} {R : C₂ ⥤ C₄} {B : C₃ ⥤ C₄}
  {F : C₃ ⥤ D} (E : B.RightExtension F)

/-- Given a square `w : TwoSquare T L R B` (consisting of a natural transformation
`T ⋙ R ⟶ L ⋙ B`), this is the obvious map `B.RightExtension F → T.RightExtension (L ⋙ F)`
obtained by the precomposition with `L` and the postcomposition with `w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d08978648aa3aacc3d3fc2330c3a149c4a87fe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
