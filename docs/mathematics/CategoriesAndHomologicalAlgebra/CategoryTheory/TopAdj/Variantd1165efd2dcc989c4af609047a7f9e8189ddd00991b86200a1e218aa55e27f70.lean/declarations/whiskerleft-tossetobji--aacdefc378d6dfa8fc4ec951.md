# ι₀_whiskerLeft_toSSetObjI_μ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70e0a21e645a91a4b295fa8b44028ae0eaefda08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5668a10-eea0-93c2-5736-2ba764db2607",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7df7fc97-ee6f-5655-e73b-d8358a0f5e24",
  "kind": "lemma",
  "lexical_name": "ι₀_whiskerLeft_toSSetObjI_μ",
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
  "slug": "whiskerleft-tossetobji--aacdefc378d6dfa8fc4ec951",
  "source": {
    "blob": "70e0a21e645a91a4b295fa8b44028ae0eaefda08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aacdefc378d6dfa8fc4ec951d9055da6b43905b59b0cee5bb02566f22fa4787a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df7fc97-ee6f-5655-e73b-d8358a0f5e24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι₀_whiskerLeft_toSSetObjI_μ (X : TopCat.{u}) :
    SSet.ι₀ ≫ TopCat.toSSet.obj X ◁ SSet.stdSimplex.toSSetObjI ≫
      Functor.LaxMonoidal.μ TopCat.toSSet X TopCat.I = TopCat.toSSet.map TopCat.ι₀ := by
  rw [← cancel_mono (μIso _ _ _).inv, Category.assoc, Category.assoc, μIso_inv,
    μ_δ, Category.comp_id]
  apply CartesianMonoidalCategory.hom_ext <;> simp [← Functor.map_comp]

open Functor.Monoidal in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e0a21e645a91a4b295fa8b44028ae0eaefda08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
