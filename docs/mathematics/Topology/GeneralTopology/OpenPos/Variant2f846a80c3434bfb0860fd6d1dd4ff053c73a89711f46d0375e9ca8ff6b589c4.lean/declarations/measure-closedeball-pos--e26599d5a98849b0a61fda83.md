# measure_closedEBall_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e026c43-e118-f318-828e-fed48e1448a3",
  "kind": "theorem",
  "lexical_name": "measure_closedEBall_pos",
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
  "slug": "measure-closedeball-pos--e26599d5a98849b0a61fda83",
  "source": {
    "blob": "cb59e04a55e2d176b5e257711a7a5d6fb3641bf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/OpenPos/Variant2f846a80c3434bfb0860fd6d1dd4ff053c73a89711f46d0375e9ca8ff6b589c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e26599d5a98849b0a61fda830563ce1a9b999423425fb87be0dffb67877a26d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenPos/Variant2f846a80c3434bfb0860fd6d1dd4ff053c73a89711f46d0375e9ca8ff6b589c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e026c43-e118-f318-828e-fed48e1448a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_closedEBall_pos (x : X) {r : ℝ≥0∞} (hr : r ≠ 0) : 0 < μ (closedEBall x r) :=
  (measure_eball_pos μ x hr).trans_le (measure_mono eball_subset_closedEBall)

end Metric

section MeasureZero
/-! ## Meagre sets and measure zero
In general, neither of meagre and measure zero implies the other.
- The set of Liouville numbers is a Lebesgue measure zero subset of ℝ, but is not meagre.
  (In fact, its complement is meagre. See `Real.disjoint_residual_ae`.)

- The complement of the set of Liouville numbers in $[0,1]$ is meagre and has measure 1.
  For another counterexample, for all $α ∈ (0,1)$, there is a generalised Cantor set $C ⊆ [0,1]$
  of measure `α`. Cantor sets are nowhere dense (hence meagre). Taking a countable union of
  fat Cantor sets whose measure approaches 1 even yields a meagre set of measure 1.

However, with respect to a measure which is positive on non-empty open sets, *closed* measure
zero sets are nowhere dense and σ-compact measure zero sets in a Hausdorff space are meagre.
-/

variable {X : Type*} [TopologicalSpace X] [MeasurableSpace X] {s : Set X}
  {μ : Measure X} [IsOpenPosMeasure μ]

/-- A *closed* measure zero subset is nowhere dense. (Closedness is required: for instance, the
rational numbers are countable (thus have measure zero), but are dense (hence not nowhere dense).)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenPos/Variant2f846a80c3434bfb0860fd6d1dd4ff053c73a89711f46d0375e9ca8ff6b589c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenPos/Variant2f846a80c3434bfb0860fd6d1dd4ff053c73a89711f46d0375e9ca8ff6b589c4.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb59e04a55e2d176b5e257711a7a5d6fb3641bf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
