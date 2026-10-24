# IsPreconnected.mem_intervals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec58c516e95199231596874e646f4157df3bc781",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3a5c6f5-d071-9e4e-d7cd-5baace5e5900",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15b0b4b6-48c7-1396-52dc-c1187e309878",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.mem_intervals",
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
  "slug": "ispreconnected-mem-intervals--e81bc47aef5e891dc38ac86a",
  "source": {
    "blob": "ec58c516e95199231596874e646f4157df3bc781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e81bc47aef5e891dc38ac86a476c7aedc3e76c04f81cfdc50e41f386bfcaff36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b0b4b6-48c7-1396-52dc-c1187e309878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.mem_intervals {s : Set α} (hs : IsPreconnected s) :
    s ∈
      ({Icc (sInf s) (sSup s), Ico (sInf s) (sSup s), Ioc (sInf s) (sSup s), Ioo (sInf s) (sSup s),
          Ici (sInf s), Ioi (sInf s), Iic (sSup s), Iio (sSup s), univ, ∅} : Set (Set α)) := by
  rcases s.eq_empty_or_nonempty with (rfl | hne)
  · apply_rules [Or.inr, mem_singleton]
  have hs' : IsConnected s := ⟨hne, hs⟩
  by_cases hb : BddBelow s <;> by_cases ha : BddAbove s
  · refine mem_of_subset_of_mem ?_ <| mem_Icc_Ico_Ioc_Ioo_of_subset_of_subset
      (hs'.Ioo_csInf_csSup_subset hb ha) (subset_Icc_csInf_csSup hb ha)
    simp only [insert_subset_iff, mem_insert_iff, mem_singleton_iff, true_or, or_true,
      singleton_subset_iff, and_self]
  · refine Or.inr <| Or.inr <| Or.inr <| Or.inr ?_
    rcases mem_Ici_Ioi_of_subset_of_subset (hs.Ioi_csInf_subset hb ha) fun x hx ↦
      csInf_le hb hx with hs | hs
    · exact Or.inl hs
    · exact Or.inr (Or.inl hs)
  · iterate 6 apply Or.inr
    rcases mem_Iic_Iio_of_subset_of_subset (hs.Iio_csSup_subset hb ha) fun x hx ↦
      le_csSup ha hx with hs | hs
    · exact Or.inl hs
    · exact Or.inr (Or.inl hs)
  · iterate 8 apply Or.inr
    exact Or.inl (hs.eq_univ_of_unbounded hb ha)

/-- A preconnected set is either one of the intervals `Icc`, `Ico`, `Ioc`, `Ioo`, `Ici`, `Ioi`,
`Iic`, `Iio`, or `univ`, or `∅`. The converse statement requires `α` to be densely ordered. Though
one can represent `∅` as `(Inf ∅, Inf ∅)`, we include it into the list of possible cases to improve
readability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec58c516e95199231596874e646f4157df3bc781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
