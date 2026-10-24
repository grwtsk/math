# measurableSet_of_differentiableAt_of_isComplete_with_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bee688db-7d81-89b9-a144-ee88bb4df29d",
  "kind": "theorem",
  "lexical_name": "measurableSet_of_differentiableAt_of_isComplete_with_param",
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
  "slug": "measurableset-of-differentiableat-of-iscomplete-with-param--118f3396368db65f5ea4d658",
  "source": {
    "blob": "ce9cb930538ae370bc57e7e93aada8057e5ba0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 878,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:118f3396368db65f5ea4d65860f34afd04b565f4d686c73bddcd3146b0f6470d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bee688db-7d81-89b9-a144-ee88bb4df29d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 878–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_of_differentiableAt_of_isComplete_with_param
    (hf : Continuous f.uncurry) {K : Set (E →L[𝕜] F)} (hK : IsComplete K) :
    MeasurableSet {p : α × E | DifferentiableAt 𝕜 (f p.1) p.2 ∧ fderiv 𝕜 (f p.1) p.2 ∈ K} := by
  have : {p : α × E | DifferentiableAt 𝕜 (f p.1) p.2 ∧ fderiv 𝕜 (f p.1) p.2 ∈ K}
          = {p : α × E | p.2 ∈ D (f p.1) K} := by simp [← differentiable_set_eq_D K hK]
  rw [this]
  simp only [D, mem_iInter, mem_iUnion]
  simp only [ofPred_forall, ofPred_exists]
  refine MeasurableSet.iInter (fun _ ↦ ?_)
  refine MeasurableSet.iUnion (fun _ ↦ ?_)
  refine MeasurableSet.iInter (fun _ ↦ ?_)
  refine MeasurableSet.iInter (fun _ ↦ ?_)
  refine MeasurableSet.iInter (fun _ ↦ ?_)
  refine MeasurableSet.iInter (fun _ ↦ ?_)
  have : ProperSpace E := .of_locallyCompactSpace 𝕜
  exact (isOpen_B_with_param hf K).measurableSet

variable (𝕜)
variable [CompleteSpace F]

/-- The set of differentiability points of a continuous function depending on a parameter taking
values in a complete space is Borel-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean#L878).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9cb930538ae370bc57e7e93aada8057e5ba0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
