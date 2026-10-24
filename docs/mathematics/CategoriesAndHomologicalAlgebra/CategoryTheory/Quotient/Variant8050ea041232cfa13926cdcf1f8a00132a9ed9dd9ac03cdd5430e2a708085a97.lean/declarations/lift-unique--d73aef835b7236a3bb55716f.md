# lift_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33832d71af95c5df518100b0236b155ae362151b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c96e922a-2c90-137e-23fa-2944e108cdb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b61ecfa0-5f9a-b4ae-b94f-609436a64c77",
  "kind": "theorem",
  "lexical_name": "lift_unique",
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
  "slug": "lift-unique--d73aef835b7236a3bb55716f",
  "source": {
    "blob": "33832d71af95c5df518100b0236b155ae362151b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d73aef835b7236a3bb55716f96c5857c9633010d94b11ec7ab944540b626ae63",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b61ecfa0-5f9a-b4ae-b94f-609436a64c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_unique (Φ : Quotient r ⥤ D) (hΦ : functor r ⋙ Φ = F) : Φ = lift r F H := by
  subst_vars
  fapply Functor.hext
  · rintro X
    dsimp [lift, Functor]
    congr
  · rintro _ _ f
    dsimp [lift, Functor]
    refine Quot.inductionOn f (fun _ ↦ ?_) -- porting note: this line was originally an `apply`
    simp only [Quot.liftOn_mk, Functor.comp_map]
    congr
#align category_theory.quotient.lift_unique CategoryTheory.Quotient.lift_unique

/-- The original functor factors through the induced functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33832d71af95c5df518100b0236b155ae362151b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
