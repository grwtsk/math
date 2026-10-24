# restrictStalkIso_inv_eq_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:356eb62c-87c8-4cdd-f987-4d993fa70f15",
  "kind": "theorem",
  "lexical_name": "restrictStalkIso_inv_eq_germ",
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
  "slug": "restrictstalkiso-inv-eq-germ--2e0b9fadf4ca0ad1afe24958",
  "source": {
    "blob": "c4752822f1559fc8296adb1ec55b018763baa8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0b9fadf4ca0ad1afe249585859be2d176d28fbab0cb96657c837d8fff352b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:356eb62c-87c8-4cdd-f987-4d993fa70f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictStalkIso_inv_eq_germ {U : TopCat} (X : PresheafedSpace.{_, _, v} C)
    {f : U ⟶ (X : TopCat.{v})} (h : IsOpenEmbedding f) (V : Opens U) (x : U) (hx : x ∈ V) :
    X.presheaf.germ (h.isOpenMap.functor.obj V) (f x) ⟨x, hx, rfl⟩ ≫
        (restrictStalkIso X h x).inv =
      (X.restrict h).presheaf.germ _ x hx := by
  rw [← restrictStalkIso_hom_eq_germ, Category.assoc, Iso.hom_inv_id, Category.comp_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4752822f1559fc8296adb1ec55b018763baa8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
