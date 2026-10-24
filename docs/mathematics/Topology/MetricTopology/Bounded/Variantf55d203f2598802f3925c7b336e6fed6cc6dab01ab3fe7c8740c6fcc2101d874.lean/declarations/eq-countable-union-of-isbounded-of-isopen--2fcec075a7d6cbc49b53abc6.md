# eq_countable_union_of_isBounded_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f6f769c-d175-52c4-fddb-be6e4f81d28a",
  "kind": "theorem",
  "lexical_name": "eq_countable_union_of_isBounded_of_isOpen",
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
  "slug": "eq-countable-union-of-isbounded-of-isopen--2fcec075a7d6cbc49b53abc6",
  "source": {
    "blob": "e8b44879c772a201808447253625cf36f8799167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fcec075a7d6cbc49b53abc6f321da2961747f63dd5f8c1547452949b5d6f652",
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

Occurrence: `result:1f6f769c-d175-52c4-fddb-be6e4f81d28a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_countable_union_of_isBounded_of_isOpen {U : Set α} (hU : IsOpen U) :
    ∃ f : ℕ → Set α, Monotone f ∧ ⋃ i, f i = U ∧ ∀ i, IsBounded (f i) ∧ IsOpen (f i) := by
  obtain rfl | ⟨x, -⟩ := U.eq_empty_or_nonempty
  · exact ⟨fun i ↦ ∅, monotone_const, by simp_all⟩
  refine ⟨fun i ↦ U ∩ ball x i, fun i j hij ↦ ?_, ?_, fun i ↦ ⟨?_, hU.inter isOpen_ball⟩⟩
  · exact inter_subset_inter_right _ (ball_subset_ball (Nat.cast_le.2 hij))
  · simp [← inter_iUnion]
  · exact isBounded_ball.subset inter_subset_right

/-- Spheres are bounded -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b44879c772a201808447253625cf36f8799167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
