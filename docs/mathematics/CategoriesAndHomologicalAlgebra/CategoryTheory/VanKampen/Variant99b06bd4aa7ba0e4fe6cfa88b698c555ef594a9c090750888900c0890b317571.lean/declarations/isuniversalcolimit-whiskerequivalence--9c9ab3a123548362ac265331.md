# IsUniversalColimit.whiskerEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7988a283-06d7-658e-5066-4ce0cea0f596",
  "kind": "theorem",
  "lexical_name": "IsUniversalColimit.whiskerEquivalence",
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
  "slug": "isuniversalcolimit-whiskerequivalence--9c9ab3a123548362ac265331",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9ab3a123548362ac2653319bd70ce9f0ceed2f3a0368f999b77fe10ad00f0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7988a283-06d7-658e-5066-4ce0cea0f596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUniversalColimit.whiskerEquivalence {K : Type*} [Category* K] (e : J ≌ K)
    {F : K ⥤ C} {c : Cocone F} (hc : IsUniversalColimit c) :
    IsUniversalColimit (c.whisker e.functor) := by
  intro F' c' α f e' hα H
  convert!
    hc (c'.whisker e.inverse) (whiskerLeft e.inverse α ≫ (e.invFunIdAssoc F).hom) f ?_
      ((hα.whiskerLeft _).comp (.of_isIso _)) ?_ using 1
  · exact (IsColimit.whiskerEquivalenceEquiv e.symm).nonempty_congr
  · convert! congr_arg (whiskerLeft e.inverse) e'
    ext
    simp
  · intro k
    rw [← Category.comp_id f]
    refine (H (e.inverse.obj k)).paste_vert ?_
    exact IsPullback.of_vert_isIso ⟨by simp⟩

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
