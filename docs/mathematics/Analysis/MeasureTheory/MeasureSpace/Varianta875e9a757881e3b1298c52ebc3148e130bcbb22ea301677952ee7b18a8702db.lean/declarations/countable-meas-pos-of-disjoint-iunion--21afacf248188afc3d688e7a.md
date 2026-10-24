# countable_meas_pos_of_disjoint_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6667f902bfc546b425be27a18d9e6954b1b5d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ca83599-e8f5-e3bb-7c0b-2c511832bb58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a42a7c16-9c7e-4f8b-426f-9fb4af63ed68",
  "kind": "theorem",
  "lexical_name": "countable_meas_pos_of_disjoint_iUnion",
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
  "slug": "countable-meas-pos-of-disjoint-iunion--21afacf248188afc3d688e7a",
  "source": {
    "blob": "ad6667f902bfc546b425be27a18d9e6954b1b5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3433,
    "line": 3417,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21afacf248188afc3d688e7a9b950aad4912442c3de2f263af97901d5898e203",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a42a7c16-9c7e-4f8b-426f-9fb4af63ed68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3417–3433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_meas_pos_of_disjoint_iUnion {ι : Type*} [MeasurableSpace α] {μ : Measure α}
    [SigmaFinite μ] {As : ι → Set α} (As_mble : ∀ i : ι, MeasurableSet (As i))
    (As_disj : Pairwise (Disjoint on As)) : Set.Countable { i : ι | 0 < μ (As i) } := by
  have obs : { i : ι | 0 < μ (As i) } ⊆ ⋃ n, { i : ι | 0 < μ (As i ∩ spanningSets μ n) } := by
    intro i i_in_nonzeroes
    by_contra con
    simp only [mem_iUnion, mem_setOf_eq, not_exists, not_lt, nonpos_iff_eq_zero] at *
    simp [(forall_measure_inter_spanningSets_eq_zero _).mp con] at i_in_nonzeroes
  apply Countable.mono obs
  refine' countable_iUnion fun n => countable_meas_pos_of_disjoint_of_meas_iUnion_ne_top μ _ _ _
  · exact fun i => MeasurableSet.inter (As_mble i) (measurable_spanningSets μ n)
  · exact fun i j i_ne_j b hbi hbj =>
      As_disj i_ne_j (hbi.trans (inter_subset_left _ _)) (hbj.trans (inter_subset_left _ _))
  · refine' (lt_of_le_of_lt (measure_mono _) (measure_spanningSets_lt_top μ n)).ne
    exact iUnion_subset fun i => inter_subset_right _ _
#align measure_theory.measure.countable_meas_pos_of_disjoint_Union MeasureTheory.Measure.countable_meas_pos_of_disjoint_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean#L3417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6667f902bfc546b425be27a18d9e6954b1b5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
