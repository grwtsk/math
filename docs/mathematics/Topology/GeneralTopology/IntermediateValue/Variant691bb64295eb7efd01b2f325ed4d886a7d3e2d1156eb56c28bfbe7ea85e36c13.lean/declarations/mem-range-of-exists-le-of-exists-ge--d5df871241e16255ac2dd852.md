# mem_range_of_exists_le_of_exists_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f713f6e-bbed-0fee-dee0-33e08980ab5a",
  "kind": "theorem",
  "lexical_name": "mem_range_of_exists_le_of_exists_ge",
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
  "slug": "mem-range-of-exists-le-of-exists-ge--d5df871241e16255ac2dd852",
  "source": {
    "blob": "0bdb0f39f02c29a5c37460dd0e8f870530eb8261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5df871241e16255ac2dd8523ec3607fb4630ff6d06263b7d43320b7878845c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f713f6e-bbed-0fee-dee0-33e08980ab5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_range_of_exists_le_of_exists_ge [PreconnectedSpace X] {c : α} {f : X → α}
    (hf : Continuous f) (h₁ : ∃ a, f a ≤ c) (h₂ : ∃ b, c ≤ f b) : c ∈ range f :=
  let ⟨a, ha⟩ := h₁; let ⟨b, hb⟩ := h₂; intermediate_value_univ a b hf ⟨ha, hb⟩

/-!
### (Pre)connected sets in a linear order

In this section we prove the following results:

* `IsPreconnected.ordConnected`: any preconnected set `s` in a linear order is `OrdConnected`,
  i.e. `a ∈ s` and `b ∈ s` imply `Icc a b ⊆ s`;

* `IsPreconnected.mem_intervals`: any preconnected set `s` in a conditionally complete linear order
  is one of the intervals `Set.Icc`, `set.`Ico`, `set.Ioc`, `set.Ioo`, ``Set.Ici`, `Set.Iic`,
  `Set.Ioi`, `Set.Iio`; note that this is false for non-complete orders: e.g., in `ℝ \ {0}`, the set
  of positive numbers cannot be represented as `Set.Ioi _`.

-/


/-- If a preconnected set contains endpoints of an interval, then it includes the whole interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bdb0f39f02c29a5c37460dd0e8f870530eb8261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
