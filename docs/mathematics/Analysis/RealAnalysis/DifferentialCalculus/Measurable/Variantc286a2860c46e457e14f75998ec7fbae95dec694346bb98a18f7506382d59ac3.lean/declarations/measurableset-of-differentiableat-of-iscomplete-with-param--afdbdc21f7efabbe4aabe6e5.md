# measurableSet_of_differentiableAt_of_isComplete_with_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1991cad6d5de38ffa61622884de5bbed9981ac1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 873,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0a0fb20-dcff-8ca7-7773-7218970e9243",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:816b7ebd-7834-1571-0978-715415d56ad2",
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
  "slug": "measurableset-of-differentiableat-of-iscomplete-with-param--afdbdc21f7efabbe4aabe6e5",
  "source": {
    "blob": "e1991cad6d5de38ffa61622884de5bbed9981ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 873,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afdbdc21f7efabbe4aabe6e5bb9fc2754f6a53f7a2c3807dc36022733a793ad9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:816b7ebd-7834-1571-0978-715415d56ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_of_differentiableAt_of_isComplete_with_param
    (hf : Continuous f.uncurry) {K : Set (E →L[𝕜] F)} (hK : IsComplete K) :
    MeasurableSet {p : α × E | DifferentiableAt 𝕜 (f p.1) p.2 ∧ fderiv 𝕜 (f p.1) p.2 ∈ K} := by
  have : {p : α × E | DifferentiableAt 𝕜 (f p.1) p.2 ∧ fderiv 𝕜 (f p.1) p.2 ∈ K}
          = {p : α × E | p.2 ∈ D (f p.1) K} := by simp [← differentiable_set_eq_D K hK]
  rw [this]
  simp only [D, mem_iInter, mem_iUnion]
  simp only [setOf_forall, setOf_exists]
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1991cad6d5de38ffa61622884de5bbed9981ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
