# isCodetector_iff_reflectsIsomorphisms_yoneda_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 639,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b61422e-117c-70f5-9250-98fcd444db37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aea78bdb-4528-eb07-3a07-586b7936d70d",
  "kind": "theorem",
  "lexical_name": "isCodetector_iff_reflectsIsomorphisms_yoneda_obj",
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
  "slug": "iscodetector-iff-reflectsisomorphisms-yoneda-obj--66c5bda648eeef17aee3eb45",
  "source": {
    "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 639,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66c5bda648eeef17aee3eb454090ccd338dc13719afb533bd8e6b897148084e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aea78bdb-4528-eb07-3a07-586b7936d70d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCodetector_iff_reflectsIsomorphisms_yoneda_obj (G : C) :
    IsCodetector G ↔ ReflectsIsomorphisms (yoneda.obj G) := by
  refine' ⟨fun hG => ⟨fun f hf => _⟩, fun h => (isCodetector_def _).2 fun X Y f hf => _⟩
  · refine' (isIso_unop_iff _).1 (hG.def _ _)
    rwa [isIso_iff_bijective, Function.bijective_iff_existsUnique] at hf
  · rw [← isIso_op_iff]
    suffices IsIso ((yoneda.obj G).map f.op) by
      exact @isIso_of_reflects_iso _ _ _ _ _ _ _ (yoneda.obj G) _ h
    rwa [isIso_iff_bijective, Function.bijective_iff_existsUnique]
#align category_theory.is_codetector_iff_reflects_isomorphisms_yoneda_obj CategoryTheory.isCodetector_iff_reflectsIsomorphisms_yoneda_obj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87cc9d0c11c5f75f12a5e615098d2941aae08780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
