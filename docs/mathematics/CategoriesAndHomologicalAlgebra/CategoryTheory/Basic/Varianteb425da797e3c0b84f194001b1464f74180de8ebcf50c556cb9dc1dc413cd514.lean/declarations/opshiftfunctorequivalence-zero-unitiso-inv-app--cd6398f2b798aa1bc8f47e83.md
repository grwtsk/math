# opShiftFunctorEquivalence_zero_unitIso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f336e41e98c3168d53b422a184db398db2ea8d1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:126d6503-7d29-ead7-33f3-42267d060027",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77beeb1d-0f61-65d4-c117-5c750d31bb18",
  "kind": "lemma",
  "lexical_name": "opShiftFunctorEquivalence_zero_unitIso_inv_app",
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
  "slug": "opshiftfunctorequivalence-zero-unitiso-inv-app--cd6398f2b798aa1bc8f47e83",
  "source": {
    "blob": "f336e41e98c3168d53b422a184db398db2ea8d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd6398f2b798aa1bc8f47e83b0496fc6afec45b13a4a831cca39cb5f90715c8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77beeb1d-0f61-65d4-c117-5c750d31bb18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opShiftFunctorEquivalence_zero_unitIso_inv_app (X : Cᵒᵖ) :
    (opShiftFunctorEquivalence C 0).unitIso.inv.app X =
      (((shiftFunctorZero Cᵒᵖ ℤ).hom.app X).unop⟦(0 : ℤ)⟧').op ≫
        ((shiftFunctorZero C ℤ).inv.app X.unop).op := by
  apply Quiver.Hom.unop_inj
  dsimp [opShiftFunctorEquivalence]
  rw [shiftFunctorZero_op_hom_app, unop_comp, Quiver.Hom.unop_op, Functor.map_comp,
    shiftFunctorCompIsoId_zero_zero_inv_app, assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb425da797e3c0b84f194001b1464f74180de8ebcf50c556cb9dc1dc413cd514.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f336e41e98c3168d53b422a184db398db2ea8d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
