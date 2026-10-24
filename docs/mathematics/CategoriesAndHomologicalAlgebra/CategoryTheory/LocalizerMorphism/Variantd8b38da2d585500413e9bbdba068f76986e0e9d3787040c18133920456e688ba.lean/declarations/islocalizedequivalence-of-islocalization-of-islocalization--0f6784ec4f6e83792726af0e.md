# IsLocalizedEquivalence.of_isLocalization_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:860eb3c9-0ace-0865-5aa0-dc92b16843db",
  "kind": "lemma",
  "lexical_name": "IsLocalizedEquivalence.of_isLocalization_of_isLocalization",
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
  "slug": "islocalizedequivalence-of-islocalization-of-islocalization--0f6784ec4f6e83792726af0e",
  "source": {
    "blob": "e73bc93bc18354b9603e6d75f4a13ff4c82d20d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f6784ec4f6e83792726af0e625c10a288976c98630ba29d23057851fdb80fd3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:860eb3c9-0ace-0865-5aa0-dc92b16843db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalizedEquivalence.of_isLocalization_of_isLocalization
    [(Φ.functor ⋙ L₂).IsLocalization W₁] :
    IsLocalizedEquivalence Φ := by
  have : CatCommSq Φ.functor (Φ.functor ⋙ L₂) L₂ (𝟭 D₂) :=
    CatCommSq.mk (Functor.rightUnitor _).symm
  exact IsLocalizedEquivalence.mk' Φ (Φ.functor ⋙ L₂) L₂ (𝟭 D₂)

/-- When the underlying functor `Φ.functor` of `Φ : LocalizerMorphism W₁ W₂` is
an equivalence of categories and that `W₁` and `W₂` essentially correspond to each
other via this equivalence, then `Φ` is a localized equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e73bc93bc18354b9603e6d75f4a13ff4c82d20d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
