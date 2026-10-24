# LayerCategoryEquivalence.logicToWisdom_object_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f52a2dac-4eb4-6d5d-b6cf-2dfb664ba962",
  "kind": "theorem",
  "lexical_name": "LayerCategoryEquivalence.logicToWisdom_object_bijective",
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
  "slug": "layercategoryequivalence-logictowisdom-object-bijective--853ac831126db1f731e398fb",
  "source": {
    "blob": "f3925a2ccf091f8e84837a09ced796486e718897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:853ac831126db1f731e398fb210b3c5586ae174d2be51393730d6717a94c3da9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f52a2dac-4eb4-6d5d-b6cf-2dfb664ba962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LayerCategoryEquivalence.logicToWisdom_object_bijective
    (E : LayerCategoryEquivalence) :
    Bijective E.logicToWisdom.obj :=
by
  constructor
  · intro A B h
    calc
      A = E.wisdomToLogic.obj (E.logicToWisdom.obj A) :=
        (E.logic_wisdom_object_round_trip A).symm
      _ = E.wisdomToLogic.obj (E.logicToWisdom.obj B) := by rw [h]
      _ = B := E.logic_wisdom_object_round_trip B
  · intro W
    exact ⟨E.wisdomToLogic.obj W, E.wisdom_logic_object_round_trip W⟩

end Think.Logic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3925a2ccf091f8e84837a09ced796486e718897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
