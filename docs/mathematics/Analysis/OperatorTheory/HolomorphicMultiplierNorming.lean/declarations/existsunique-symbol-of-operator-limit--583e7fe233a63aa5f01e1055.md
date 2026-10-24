# existsUnique_symbol_of_operator_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aac63e791fc42f87e7ec9873699d57cd343389f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierNorming.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:475e2e60-41cf-28a4-2e02-9c2ab1faf630",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fbab5f0-b1e2-6d63-959e-61f3e1d15170",
  "kind": "theorem",
  "lexical_name": "existsUnique_symbol_of_operator_limit",
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
  "slug": "existsunique-symbol-of-operator-limit--583e7fe233a63aa5f01e1055",
  "source": {
    "blob": "aac63e791fc42f87e7ec9873699d57cd343389f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 142,
    "path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierNorming.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:583e7fe233a63aa5f01e10557af373599797d7db45e2379ab81cbf3982cf4748",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fbab5f0-b1e2-6d63-959e-61f3e1d15170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_symbol_of_operator_limit (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1)
    {α : Type v} {l : Filter α} [l.NeBot] (F : α → BoundedSymbol D.X)
    (A : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen)
    (h : Tendsto (fun a => completedRepresentation M μ hOpen (F a)) l (𝓝 A)) :
    ∃! f : BoundedSymbol D.X,
      completedRepresentation M μ hOpen f = A ∧ Tendsto F l (𝓝 f) := by
  have hr := (represented_range_isClosed M μ hOpen S hS P).mem_of_tendsto h
    (Eventually.of_forall (fun a => Set.mem_range_self (F a)))
  obtain ⟨f, hf⟩ := hr
  have ht : Tendsto F l (𝓝 f) := by
    apply (representationLinearIsometry M μ hOpen S hS P).isometry.tendsto_nhds_iff.mpr
    simpa only [Function.comp_def, representationLinearIsometry_apply, hf] using h
  refine ⟨f, ⟨hf, ht⟩, ?_⟩
  intro g hg
  exact (representationLinearIsometry M μ hOpen S hS P).injective (hg.1.trans hf.symm)

section Dirac

/-- Evaluation at the support point is well-defined on the historical Dirac quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicMultiplierNorming.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac63e791fc42f87e7ec9873699d57cd343389f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
