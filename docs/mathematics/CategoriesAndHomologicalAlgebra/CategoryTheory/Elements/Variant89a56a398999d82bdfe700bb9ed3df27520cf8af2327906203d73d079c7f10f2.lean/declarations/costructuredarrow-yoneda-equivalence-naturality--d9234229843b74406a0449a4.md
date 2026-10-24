# costructuredArrow_yoneda_equivalence_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bcaa8f2d9f758a95f0f7a37b33b5fcd021ba2c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d34b62d-3926-893b-315f-420288335867",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0117a22-cf3a-e800-18ce-3172b9bf5b0d",
  "kind": "theorem",
  "lexical_name": "costructuredArrow_yoneda_equivalence_naturality",
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
  "slug": "costructuredarrow-yoneda-equivalence-naturality--d9234229843b74406a0449a4",
  "source": {
    "blob": "8bcaa8f2d9f758a95f0f7a37b33b5fcd021ba2c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9234229843b74406a0449a475fd2c5aabb9a919e740e345a1d5da483de14f69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0117a22-cf3a-e800-18ce-3172b9bf5b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem costructuredArrow_yoneda_equivalence_naturality {F₁ F₂ : Cᵒᵖ ⥤ Type v} (α : F₁ ⟶ F₂) :
    (map α).op ⋙ toCostructuredArrow F₂ = toCostructuredArrow F₁ ⋙ CostructuredArrow.map α := by
  fapply Functor.ext
  · intro X
    simp only [CostructuredArrow.map_mk, toCostructuredArrow_obj, Functor.op_obj,
      Functor.comp_obj]
    congr
    ext _ f
    simpa using congr_fun (α.naturality f.op).symm (unop X).snd
  · simp

/-- The equivalence `F.elementsᵒᵖ ≌ (yoneda, F)` is compatible with the forgetful functors. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bcaa8f2d9f758a95f0f7a37b33b5fcd021ba2c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
