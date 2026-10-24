# iso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ea668302cc4c4e943bc6b6d143e5fbc410714a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8062bbc-7898-d9a1-ee17-9fbf62f9fbf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7c80e60-fe8d-bd44-13ca-2c643abd918b",
  "kind": "lemma",
  "lexical_name": "iso_inv_app",
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
  "slug": "iso-inv-app--41b44cd4ffddcfbb29610eb9",
  "source": {
    "blob": "3ea668302cc4c4e943bc6b6d143e5fbc410714a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41b44cd4ffddcfbb29610eb921839f2c12f6a1eec65f615debd7b058f5f71642",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7c80e60-fe8d-bd44-13ca-2c643abd918b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iso_inv_app (a : A) (X : C) :
    (iso F r hF a).inv.app ((functor r).obj X) =
      (F.commShiftIso a).inv.app X ≫
      (lift r F hF).map (((functor r).commShiftIso a).hom.app X) := by
  dsimp only [iso, natIsoLift]
  rw [natTransLift_app]
  dsimp
  erw [id_comp, comp_id, comp_id, comp_id, Functor.map_id, id_comp]

attribute [irreducible] iso

end LiftCommShift

/-- When `r : HomRel C` is compatible with the shift by an additive monoid, and
`F : C ⥤ D` is a functor which commutes with the shift and is compatible with `r`, then
the induced functor `Quotient.lift r F _ : Quotient r ⥤ D` also commutes with the shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea668302cc4c4e943bc6b6d143e5fbc410714a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
