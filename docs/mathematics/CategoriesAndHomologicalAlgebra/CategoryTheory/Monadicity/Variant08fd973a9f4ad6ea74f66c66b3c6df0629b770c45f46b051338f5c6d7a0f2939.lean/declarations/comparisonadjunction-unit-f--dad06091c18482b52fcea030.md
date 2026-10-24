# comparisonAdjunction_unit_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e48756e56c9f434a7856720037b671c3cdaaf346",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9446e6c6-934d-39ea-015b-65af53bc3a16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11c551e1-8c24-5bd2-5888-3ff99c5bbdc0",
  "kind": "theorem",
  "lexical_name": "comparisonAdjunction_unit_f",
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
  "slug": "comparisonadjunction-unit-f--dad06091c18482b52fcea030",
  "source": {
    "blob": "e48756e56c9f434a7856720037b671c3cdaaf346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dad06091c18482b52fcea030d9e091cb69225c3942e2d8fdc100b08a4b942b44",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11c551e1-8c24-5bd2-5888-3ff99c5bbdc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparisonAdjunction_unit_f
    [∀ A : adj.toMonad.Algebra, HasCoequalizer (F.map A.a)
      (adj.counit.app (F.obj A.A))]
    (A : adj.toMonad.Algebra) :
    ((comparisonAdjunction adj).unit.app A).f = (beckCoequalizer A).desc (unitCofork A) := by
  apply Limits.Cofork.IsColimit.hom_ext (beckCoequalizer A)
  rw [Cofork.IsColimit.π_desc]
  dsimp only [beckCofork_π, unitCofork_π]
  rw [comparisonAdjunction_unit_f_aux, ← adj.homEquiv_naturality_left A.a, coequalizer.condition,
    adj.homEquiv_naturality_right, adj.homEquiv_unit, Category.assoc]
  apply adj.right_triangle_components_assoc

variable (adj)

/-- The cofork which describes the counit of the adjunction: the morphism from the coequalizer of
this pair to this morphism is the counit.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e48756e56c9f434a7856720037b671c3cdaaf346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
