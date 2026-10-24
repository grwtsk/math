# shiftIso_hom_app_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "954522bcd90ba27e877f86d11f00a70940d56fd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36f48f3f-0b87-e434-3f2b-78f8bfb835ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ed0bf5e-d466-cc58-594f-2de7fc3012a8",
  "kind": "lemma",
  "lexical_name": "shiftIso_hom_app_comp",
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
  "slug": "shiftiso-hom-app-comp--8142e06dde3297805482c333",
  "source": {
    "blob": "954522bcd90ba27e877f86d11f00a70940d56fd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8142e06dde3297805482c333d5322bc618edf36529029818047332c90d1f077a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed0bf5e-d466-cc58-594f-2de7fc3012a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftIso_hom_app_comp (n m mn : M) (hnm : m + n = mn)
    (a a' a'' : M) (ha' : n + a = a') (ha'' : m + a' = a'') (X : C) :
    (shiftIso F n a a' ha').hom.app ((shiftFunctor C m).obj X) ≫
      (shiftIso F m a' a'' ha'').hom.app X =
        (shift F a).map ((shiftFunctorAdd' C m n mn hnm).inv.app X) ≫
          (F.shiftIso mn a a'' (by rw [← hnm, ← ha'', ← ha', add_assoc])).hom.app X := by
  rw [F.shiftIso_add'_hom_app n m mn hnm a a' a'' ha' ha'', ← Functor.map_comp_assoc,
    Iso.inv_hom_id_app, Functor.map_id, id_comp]

/-- The morphism `(F.shift a).obj X ⟶ (F.shift a').obj Y` induced by a morphism
`f : X ⟶ Y⟦n⟧` when `n + a = a'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954522bcd90ba27e877f86d11f00a70940d56fd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
