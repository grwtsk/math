# overlap_two_connected_pieces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab5513b0-e422-9fb4-672d-0e16b7ca344b",
  "kind": "theorem",
  "lexical_name": "overlap_two_connected_pieces",
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
  "slug": "overlap-two-connected-pieces--d8d7a32d6031a912f10b6097",
  "source": {
    "blob": "ddf71eebb095fe85fd6eba6a0e266ad0b8332a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d7a32d6031a912f10b609724f365455452fa409717adecc242d40a3c9b9911",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab5513b0-e422-9fb4-672d-0e16b7ca344b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlap_two_connected_pieces :
    ({t : ℝ | t ≠ 0} = Set.Iio 0 ∪ Set.Ioi 0) ∧
      Disjoint (Set.Iio (0 : ℝ)) (Set.Ioi 0) ∧
      IsConnected (Set.Iio (0 : ℝ)) ∧ IsConnected (Set.Ioi (0 : ℝ)) ∧
      IsOpen (Set.Iio (0 : ℝ)) ∧ IsOpen (Set.Ioi (0 : ℝ)) := by
  refine ⟨?_, Set.disjoint_left.mpr ?_, isConnected_Iio, isConnected_Ioi,
    isOpen_Iio, isOpen_Ioi⟩
  · ext t
    simp only [Set.mem_ofPred_eq, Set.mem_union, Set.mem_Iio, Set.mem_Ioi]
    exact ne_iff_lt_or_gt
  · intro t ht hn
    change t < 0 at ht
    change 0 < t at hn
    exact lt_asymm ht hn

/-- In particular, the overlap is not connected; one index edge would lose information. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf71eebb095fe85fd6eba6a0e266ad0b8332a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
