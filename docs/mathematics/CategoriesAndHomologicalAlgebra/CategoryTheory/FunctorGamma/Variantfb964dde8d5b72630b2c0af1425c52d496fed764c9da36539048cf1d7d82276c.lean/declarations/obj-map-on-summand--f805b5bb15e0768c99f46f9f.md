# Obj.map_on_summand'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e81d82fe-89f4-5b83-e59c-01b783341c3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c8a01a0-5a8f-76bd-1d84-c8c976bb9567",
  "kind": "theorem",
  "lexical_name": "Obj.map_on_summand'",
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
  "slug": "obj-map-on-summand--f805b5bb15e0768c99f46f9f",
  "source": {
    "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 249,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f805b5bb15e0768c99f46f9ffcd89ab62ee51c0b68aa6d461b2336ba8acca771",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c8a01a0-5a8f-76bd-1d84-c8c976bb9567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Obj.map_on_summand' {Δ Δ' : SimplexCategoryᵒᵖ} (A : Splitting.IndexSet Δ) (θ : Δ ⟶ Δ') :
    ((splitting K).cofan Δ).inj A ≫ (obj K).map θ =
      Obj.Termwise.mapMono K (image.ι (θ.unop ≫ A.e)) ≫
        ((splitting K).cofan Δ').inj (A.pull θ) := by
  apply Obj.map_on_summand
  apply image.fac

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c97a363cb05fb590c5bebbe6516853faab1bf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
