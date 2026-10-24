# oppositeShiftFunctorZero_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5224cb71859263fd2b8db95e7d108395d5adfe2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a52906a-bc6a-1d55-cadc-e161fb5e32cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11474a2d-c83b-6b24-c9b7-cfa75daa5499",
  "kind": "lemma",
  "lexical_name": "oppositeShiftFunctorZero_hom_app",
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
  "slug": "oppositeshiftfunctorzero-hom-app--580564d9e62b3a23449cf54f",
  "source": {
    "blob": "5224cb71859263fd2b8db95e7d108395d5adfe2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:580564d9e62b3a23449cf54fb215d92484f97f552ae6afaa2e98a5938ff9fc8e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11474a2d-c83b-6b24-c9b7-cfa75daa5499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma oppositeShiftFunctorZero_hom_app (X : OppositeShift C A) :
    (shiftFunctorZero (OppositeShift C A) A).hom.app X =
      ((shiftFunctorZero C A).inv.app X.unop).op := by
  rw [← cancel_mono ((shiftFunctorZero (OppositeShift C A) A).inv.app X),
    Iso.hom_inv_id_app, oppositeShiftFunctorZero_inv_app, ← op_comp,
    Iso.hom_inv_id_app, op_id]
  rfl

variable {C A}
variable (X : OppositeShift C A) (a b c : A) (h : a + b = c)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5224cb71859263fd2b8db95e7d108395d5adfe2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
