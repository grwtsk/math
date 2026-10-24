# addHaar_eq_zero_of_disjoint_translates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0d1e44d-177a-919b-1eea-ec11c4216e3f",
  "kind": "theorem",
  "lexical_name": "addHaar_eq_zero_of_disjoint_translates",
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
  "slug": "addhaar-eq-zero-of-disjoint-translates--a8d70a5ff425faddd67eac50",
  "source": {
    "blob": "c95bf2c56c27d9f880c0438348b4a221d7abf93b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d70a5ff425faddd67eac503d5b309c345dfff9d7d04bf8ecea2258dff5fda1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0d1e44d-177a-919b-1eea-ec11c4216e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_eq_zero_of_disjoint_translates {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] [MeasurableSpace E] [BorelSpace E] [FiniteDimensional ℝ E] (μ : Measure E)
    [IsAddHaarMeasure μ] {s : Set E} (u : ℕ → E) (hu : IsBounded (range u))
    (hs : Pairwise (Disjoint on fun n => {u n} + s)) (h's : MeasurableSet s) : μ s = 0 := by
  suffices H : ∀ R, μ (s ∩ closedBall 0 R) = 0 by
    apply le_antisymm _ (zero_le _)
    calc
      μ s ≤ ∑' n : ℕ, μ (s ∩ closedBall 0 n) := by
        conv_lhs => rw [← iUnion_inter_closedBall_nat s 0]
        exact measure_iUnion_le _
      _ = 0 := by simp only [H, tsum_zero]
  intro R
  apply addHaar_eq_zero_of_disjoint_translates_aux μ u
    (isBounded_closedBall.subset inter_subset_right) hu _ (h's.inter measurableSet_closedBall)
  refine pairwise_disjoint_mono hs fun n => ?_
  exact add_subset_add Subset.rfl inter_subset_left

/-- A strict vector subspace has measure zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95bf2c56c27d9f880c0438348b4a221d7abf93b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
