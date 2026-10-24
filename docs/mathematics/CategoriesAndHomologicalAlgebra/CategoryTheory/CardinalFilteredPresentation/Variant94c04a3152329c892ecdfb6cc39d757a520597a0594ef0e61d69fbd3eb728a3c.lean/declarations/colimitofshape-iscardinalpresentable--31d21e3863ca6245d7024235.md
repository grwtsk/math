# ColimitOfShape.isCardinalPresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f455005b150757b2827cc5f21f101bc030e06259",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:304bc797-0656-8fed-e8d8-6ae3f337af25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3521df8-2312-98ab-b523-e3a5cd0c6630",
  "kind": "lemma",
  "lexical_name": "ColimitOfShape.isCardinalPresentable",
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
  "slug": "colimitofshape-iscardinalpresentable--31d21e3863ca6245d7024235",
  "source": {
    "blob": "f455005b150757b2827cc5f21f101bc030e06259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31d21e3863ca6245d7024235bf8dd2ec9527e5a979582d1894081df1b0128e14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3521df8-2312-98ab-b523-e3a5cd0c6630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ColimitOfShape.isCardinalPresentable {X : C} {J : Type w} [SmallCategory J]
    (p : P.ColimitOfShape J X) {κ : Cardinal.{w}} [Fact κ.IsRegular]
    (hP : P ≤ isCardinalPresentable C κ) [LocallySmall.{w} C]
    (κ' : Cardinal.{w}) [Fact κ'.IsRegular] (h : κ ≤ κ')
    (hJ : HasCardinalLT (Arrow J) κ') :
    IsCardinalPresentable X κ' :=
  p.toColimitPresentation.isCardinalPresentable κ
    (fun j ↦ hP _ (p.prop_diag_obj j)) _ h hJ

variable {κ : Cardinal.{w}} [Fact κ.IsRegular]

variable (P κ) in
/-- The condition that `P : ObjectProperty C` consists of `κ`-presentable objects
and that any object of `C` is a `κ`-filtered colimit of objects satisfying `P`.
(This notion is particularly relevant when `C` is locally `w`-small and `P` is
essentially `w`-small, see `HasCardinalFilteredGenerators`, which appears in
the definitions of locally presentable and accessible categories.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f455005b150757b2827cc5f21f101bc030e06259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
