# measure_iInter_eq_iInf

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
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb5926db-26d0-a0f8-05c9-90d7e6862304",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c02d771-24e0-7448-6691-f804fcac3f47",
  "kind": "theorem",
  "lexical_name": "measure_iInter_eq_iInf",
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
  "slug": "measure-iinter-eq-iinf--4981b4a5825d850ef05ab7bb",
  "source": {
    "blob": "ad6667f902bfc546b425be27a18d9e6954b1b5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 499,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4981b4a5825d850ef05ab7bb348e5da060d3167744a5a8c8bdbdf2b658ece4e3",
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

Occurrence: `result:8c02d771-24e0-7448-6691-f804fcac3f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_iInter_eq_iInf [Countable ι] {s : ι → Set α} (h : ∀ i, MeasurableSet (s i))
    (hd : Directed (· ⊇ ·) s) (hfin : ∃ i, μ (s i) ≠ ∞) : μ (⋂ i, s i) = ⨅ i, μ (s i) := by
  rcases hfin with ⟨k, hk⟩
  have : ∀ (t) (_ : t ⊆ s k), μ t ≠ ∞ := fun t ht => ne_top_of_le_ne_top hk (measure_mono ht)
  rw [← ENNReal.sub_sub_cancel hk (iInf_le _ k), ENNReal.sub_iInf, ←
    ENNReal.sub_sub_cancel hk (measure_mono (iInter_subset _ k)), ←
    measure_diff (iInter_subset _ k) (MeasurableSet.iInter h) (this _ (iInter_subset _ k)),
    diff_iInter, measure_iUnion_eq_iSup]
  · congr 1
    refine' le_antisymm (iSup_mono' fun i => _) (iSup_mono fun i => _)
    · rcases hd i k with ⟨j, hji, hjk⟩
      use j
      rw [← measure_diff hjk (h _) (this _ hjk)]
      exact measure_mono (diff_subset_diff_right hji)
    · rw [tsub_le_iff_right, ← measure_union, Set.union_comm]
      exact measure_mono (diff_subset_iff.1 <| Subset.refl _)
      apply disjoint_sdiff_left
      apply h i
  · exact hd.mono_comp _ fun _ _ => diff_subset_diff_right
#align measure_theory.measure_Inter_eq_infi MeasureTheory.measure_iInter_eq_iInf

/-- Continuity from below: the measure of the union of an increasing sequence of measurable sets
is the limit of the measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6667f902bfc546b425be27a18d9e6954b1b5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
