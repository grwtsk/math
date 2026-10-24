# fast_actual_budgets_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb1f8288c414f04de7612ebb9498e02053c2851",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ed13abe-03bb-a5cb-a42c-c67e02bc027c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb8ea8f8-3359-4f11-2dae-6aec1a3047bf",
  "kind": "theorem",
  "lexical_name": "fast_actual_budgets_tendsto",
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
  "slug": "fast-actual-budgets-tendsto--ead7ba8819da6bb67e8d64e7",
  "source": {
    "blob": "9cb1f8288c414f04de7612ebb9498e02053c2851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead7ba8819da6bb67e8d64e7f546d89bed493e3140ab5c6b77c66e7eb3564829",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb8ea8f8-3359-4f11-2dae-6aec1a3047bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fast_actual_budgets_tendsto :
    Tendsto (fun X : ℕ => ‖correctedNumerator X (1 / 2 + (fastEpsilon X : ℂ))‖)
      atTop (nhds 0) ∧
    Tendsto (fun X : ℕ =>
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) /
        Real.sqrt (cutoffSchedule X)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X - 1) *
      Real.log (cutoffSchedule X) ^ 2) atTop (nhds 0) := by
  refine ⟨?_, ?_, ?_⟩
  · exact squeeze_zero' (Eventually.of_forall (fun X => norm_nonneg _))
      (eventually_atTop.mpr ⟨4, fun X hX => (fast_endpoint_bounds X hX).1⟩)
      fast_explicit_budgets_tendsto.2.1
  · exact squeeze_zero' (Eventually.of_forall (fun X => by positivity))
      (eventually_atTop.mpr ⟨4, fun X hX => (fast_endpoint_bounds X hX).2⟩)
      fast_explicit_budgets_tendsto.2.2.1
  · exact squeeze_zero' (Eventually.of_forall (fun X => by positivity))
      (eventually_atTop.mpr ⟨4, fun X hX => fast_taylor_bound X hX⟩)
      fast_explicit_budgets_tendsto.2.2.2

/-- The bounds apply to both actual admitted full-line endpoint vectors, including their whole tails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb1f8288c414f04de7612ebb9498e02053c2851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
