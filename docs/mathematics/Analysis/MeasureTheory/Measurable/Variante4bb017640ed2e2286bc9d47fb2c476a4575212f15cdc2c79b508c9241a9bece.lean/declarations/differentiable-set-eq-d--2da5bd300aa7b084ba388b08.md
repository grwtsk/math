# differentiable_set_eq_d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 732,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3412ca2a-a4d5-86d3-6da4-8cec4ac5d5fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79521493-23a3-757d-984b-077ee9fb3892",
  "kind": "theorem",
  "lexical_name": "differentiable_set_eq_d",
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
  "slug": "differentiable-set-eq-d--2da5bd300aa7b084ba388b08",
  "source": {
    "blob": "ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 732,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da5bd300aa7b084ba388b081df7980456bae96363625a94c7de5aacb9da872d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79521493-23a3-757d-984b-077ee9fb3892`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable_set_eq_d (hK : IsComplete K) :
    { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ K } = D f K :=
  Subset.antisymm (differentiable_set_subset_d _) (d_subset_differentiable_set hK)
#align right_deriv_measurable_aux.differentiable_set_eq_D RightDerivMeasurableAux.differentiable_set_eq_d

end RightDerivMeasurableAux

open RightDerivMeasurableAux

variable (f)

/-- The set of right differentiability points of a function, with derivative in a given complete
set, is Borel-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
