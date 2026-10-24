# shiftShortComplexFunctorIso_add'_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e09c4098267b48eacfa842fdb2dd9c3666ac15fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cde3cae-550c-dbf3-e47f-785727ef31d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2db922c1-ab71-0c06-ce6e-914460958f75",
  "kind": "lemma",
  "lexical_name": "shiftShortComplexFunctorIso_add'_hom_app",
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
  "slug": "shiftshortcomplexfunctoriso-add-hom-app--44a6786cfca6646e135319dc",
  "source": {
    "blob": "e09c4098267b48eacfa842fdb2dd9c3666ac15fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44a6786cfca6646e135319dc5a8197d30168e3266847a6e8e3507970c2df51fb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db922c1-ab71-0c06-ce6e-914460958f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftShortComplexFunctorIso_add'_hom_app
    (n m mn : ℤ) (hmn : m + n = mn) (a a' a'' : ℤ) (ha' : n + a = a') (ha'' : m + a' = a'')
    (K : CochainComplex C ℤ) :
    (shiftShortComplexFunctorIso C mn a a'' (by rw [← ha'', ← ha', ← add_assoc, hmn])).hom.app K =
      (shortComplexFunctor C (ComplexShape.up ℤ) a).map
        ((CategoryTheory.shiftFunctorAdd' (CochainComplex C ℤ) m n mn hmn).hom.app K) ≫
        (shiftShortComplexFunctorIso C n a a' ha').hom.app (K⟦m⟧) ≫
        (shiftShortComplexFunctorIso C m a' a'' ha'').hom.app K := by
  ext <;> dsimp <;> simp only [← hmn, Int.negOnePow_add, shiftFunctorAdd'_hom_app_f',
    XIsoOfEq_shift, Linear.comp_units_smul, Linear.units_smul_comp,
    XIsoOfEq_hom_comp_XIsoOfEq_hom, smul_smul]

variable [CategoryWithHomology C]

namespace ShiftSequence

variable (C) in
/-- The natural isomorphism `(K⟦n⟧).homology a ≅ K.homology a'` when `n + a = a'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09c4098267b48eacfa842fdb2dd9c3666ac15fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
