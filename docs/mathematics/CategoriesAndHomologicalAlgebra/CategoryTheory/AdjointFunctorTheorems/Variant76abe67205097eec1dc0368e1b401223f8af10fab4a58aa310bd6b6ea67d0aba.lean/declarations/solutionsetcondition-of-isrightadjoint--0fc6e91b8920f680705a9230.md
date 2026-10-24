# solutionSetCondition_of_isRightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70462aa2882952ea4c42df9daf82f58af3de0ba4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24745e06-eb49-26ba-a8d2-0252dac93246",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19c391c5-f231-8598-4671-0b493904f631",
  "kind": "theorem",
  "lexical_name": "solutionSetCondition_of_isRightAdjoint",
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
  "slug": "solutionsetcondition-of-isrightadjoint--0fc6e91b8920f680705a9230",
  "source": {
    "blob": "70462aa2882952ea4c42df9daf82f58af3de0ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc6e91b8920f680705a92307d48d2e3eb9e3e09da13498016f9eb2975d507af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19c391c5-f231-8598-4671-0b493904f631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solutionSetCondition_of_isRightAdjoint [G.IsRightAdjoint] : SolutionSetCondition G := by
  intro A
  refine
    ⟨PUnit, fun _ => G.leftAdjoint.obj A, fun _ => (Adjunction.ofIsRightAdjoint G).unit.app A, ?_⟩
  intro B h
  refine ⟨PUnit.unit, ((Adjunction.ofIsRightAdjoint G).homEquiv _ _).symm h, ?_⟩
  rw [← Adjunction.homEquiv_unit, Equiv.apply_symm_apply]

/-- The general adjoint functor theorem says that if `G : D ⥤ C` preserves limits and `D` has them,
if `G` satisfies the solution set condition then `G` is a right adjoint.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70462aa2882952ea4c42df9daf82f58af3de0ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
