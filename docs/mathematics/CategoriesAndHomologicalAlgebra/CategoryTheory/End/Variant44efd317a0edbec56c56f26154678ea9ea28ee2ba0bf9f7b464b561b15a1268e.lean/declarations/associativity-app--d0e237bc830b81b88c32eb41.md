# associativity_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a878926-a775-09ec-76d7-6c8051f8aa0f",
  "kind": "theorem",
  "lexical_name": "associativity_app",
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
  "slug": "associativity-app--d0e237bc830b81b88c32eb41",
  "source": {
    "blob": "691cfba3196f131566a8415eced0eef249377a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44efd317a0edbec56c56f26154678ea9ea28ee2ba0bf9f7b464b561b15a1268e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e237bc830b81b88c32eb417c93f0fd86e8e04ec4b6e42e065f04e281961ce9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44efd317a0edbec56c56f26154678ea9ea28ee2ba0bf9f7b464b561b15a1268e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a878926-a775-09ec-76d7-6c8051f8aa0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associativity_app (m₁ m₂ m₃ : M) (X : C) [F.LaxMonoidal] :
    (F.obj m₃).map ((μ F m₁ m₂).app X) ≫
        (μ F (m₁ ⊗ m₂) m₃).app X ≫ (F.map (α_ m₁ m₂ m₃).hom).app X =
      (μ F m₂ m₃).app ((F.obj m₁).obj X) ≫ (μ F m₁ (m₂ ⊗ m₃)).app X := by
  have := congr_app (associativity F m₁ m₂ m₃) X
  dsimp at this
  simpa using this

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44efd317a0edbec56c56f26154678ea9ea28ee2ba0bf9f7b464b561b15a1268e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44efd317a0edbec56c56f26154678ea9ea28ee2ba0bf9f7b464b561b15a1268e.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `691cfba3196f131566a8415eced0eef249377a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
