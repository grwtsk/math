# isLeftDerivedFunctor_iff_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bcec7ec-d668-bcf8-734b-ef148cdc4327",
  "kind": "lemma",
  "lexical_name": "isLeftDerivedFunctor_iff_of_iso",
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
  "slug": "isleftderivedfunctor-iff-of-iso--c3cb946bc19b3cb0e4286e5d",
  "source": {
    "blob": "2ffdbdf9221aab38af4fd30d25411e3c194b7cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3cb946bc19b3cb0e4286e5dcaca0d1ac8c44f0f8b5a0142e2bcc88794677a47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bcec7ec-d668-bcf8-734b-ef148cdc4327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftDerivedFunctor_iff_of_iso (α' : L ⋙ LF' ⟶ F) (W : MorphismProperty C)
    [L.IsLocalization W] (e : LF ≅ LF') (comm : whiskerLeft L e.hom ≫ α' = α) :
    LF.IsLeftDerivedFunctor α W ↔ LF'.IsLeftDerivedFunctor α' W := by
  simp only [isLeftDerivedFunctor_iff_isRightKanExtension]
  exact isRightKanExtension_iff_of_iso e _ _ comm

section

variable [L.IsLocalization W] [LF.IsLeftDerivedFunctor α W]

/-- Constructor for natural transformations to a left derived functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffdbdf9221aab38af4fd30d25411e3c194b7cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
