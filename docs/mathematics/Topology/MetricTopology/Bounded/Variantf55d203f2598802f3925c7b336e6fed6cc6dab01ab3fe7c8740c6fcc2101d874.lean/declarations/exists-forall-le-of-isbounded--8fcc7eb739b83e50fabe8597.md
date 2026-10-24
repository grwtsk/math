# exists_forall_le_of_isBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e186d244-5eaf-109f-2b76-d55d7a2e6b0e",
  "kind": "theorem",
  "lexical_name": "exists_forall_le_of_isBounded",
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
  "slug": "exists-forall-le-of-isbounded--8fcc7eb739b83e50fabe8597",
  "source": {
    "blob": "e8b44879c772a201808447253625cf36f8799167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 654,
    "path": "GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fcc7eb739b83e50fabe8597c12b0d8b6ecca0ac227299a4fa0795be417c82f4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e186d244-5eaf-109f-2b76-d55d7a2e6b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_le_of_isBounded {f : β → α} (hf : Continuous f) (x₀ : β)
    (h : Bornology.IsBounded {x : β | f x ≤ f x₀}) :
    ∃ x, ∀ y, f x ≤ f y := by
  refine hf.exists_forall_le' (x₀ := x₀) ?_
  have hU : {x : β | f x₀ < f x} ∈ Filter.cocompact β := by
    refine Filter.mem_cocompact'.mpr ⟨_, ?_, fun ⦃_⦄ a ↦ a⟩
    simp only [Set.compl_ofPred, not_lt]
    exact Metric.isCompact_of_isClosed_isBounded (isClosed_le (by fun_prop) (by fun_prop)) h
  filter_upwards [hU] with x hx using hx.le

/-- A version of the **Extreme Value Theorem**: if the set where a continuous function `f`
into a linearly ordered space takes values `≥ f x₀` is bounded for some `x₀`,
then `f` has a global maximum (under suitable topological assumptions).

This is a convenient combination of `Continuous.exists_forall_ge'` and
`Metric.isCompact_of_isClosed_isBounded`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b44879c772a201808447253625cf36f8799167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
