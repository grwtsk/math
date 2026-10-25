# mem_Icc_Ico_Ioc_Ioo_of_subset_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdc34017-57b0-be5c-b96c-9acda3b27e5f",
  "kind": "theorem",
  "lexical_name": "mem_Icc_Ico_Ioc_Ioo_of_subset_of_subset",
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
  "slug": "mem-icc-ico-ioc-ioo-of-subset-of-subset--624325469dfa50a09e3830d0",
  "source": {
    "blob": "de38560156467c13316615eba6ea535fceac51d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 583,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:624325469dfa50a09e3830d068fe5220afffeee2df017e6b76e687786590941c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdc34017-57b0-be5c-b96c-9acda3b27e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_Icc_Ico_Ioc_Ioo_of_subset_of_subset {s : Set α} (ho : Ioo a b ⊆ s) (hc : s ⊆ Icc a b) :
    s ∈ ({Icc a b, Ico a b, Ioc a b, Ioo a b} : Set (Set α)) := by
  by_cases ha : a ∈ s <;> by_cases hb : b ∈ s
  · refine Or.inl (Subset.antisymm hc ?_)
    rwa [← Ico_sdiff_left, sdiff_singleton_subset_iff, insert_eq_of_mem ha, ← Icc_sdiff_right,
      sdiff_singleton_subset_iff, insert_eq_of_mem hb] at ho
  · refine Or.inr <| Or.inl <| Subset.antisymm ?_ ?_
    · rw [← Icc_sdiff_right]
      exact subset_sdiff_singleton hc hb
    · rwa [← Ico_sdiff_left, sdiff_singleton_subset_iff, insert_eq_of_mem ha] at ho
  · refine Or.inr <| Or.inr <| Or.inl <| Subset.antisymm ?_ ?_
    · rw [← Icc_sdiff_left]
      exact subset_sdiff_singleton hc ha
    · rwa [← Ioc_sdiff_right, sdiff_singleton_subset_iff, insert_eq_of_mem hb] at ho
  · refine Or.inr <| Or.inr <| Or.inr <| Subset.antisymm ?_ ho
    rw [← Ico_sdiff_left, ← Icc_sdiff_right]
    apply_rules [subset_sdiff_singleton]

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant06adc091d45d93269a94d9b01cbd12118f87fe138a1d855ea71bf35b63abdad7.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de38560156467c13316615eba6ea535fceac51d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
