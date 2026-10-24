# yonedaSectionsSmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f79e7fe2b01cc749ae2a6e8c53410e5cec467742d628058ffdb47dc3dab3428d",
  "kind": "def",
  "lexical_name": "yonedaSectionsSmall",
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
  "slug": "yonedasectionssmall--21600d333719b129f0cf9479",
  "source": {
    "blob": "8992435f9413dbadbfedc8a572c84932a7b09a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 453,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21600d333719b129f0cf9479c8b83a2b1b2c3a992ac48b93f94f00cef35a29e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f79e7fe2b01cc749ae2a6e8c53410e5cec467742d628058ffdb47dc3dab3428d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaSectionsSmall {C : Type u₁} [SmallCategory C] (X : C) (F : Cᵒᵖ ⥤ Type u₁) :
    (yoneda.obj X ⟶ F) ≅ F.obj (op X) :=
  yonedaSections X F ≪≫ uliftTrivial _
#align category_theory.yoneda_sections_small CategoryTheory.yonedaSectionsSmall

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8992435f9413dbadbfedc8a572c84932a7b09a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
