# cauchySeq_finset_iff_tprod_vanishing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4679153-f1cb-3674-0be3-1418a259d500",
  "kind": "theorem",
  "lexical_name": "cauchySeq_finset_iff_tprod_vanishing",
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
  "slug": "cauchyseq-finset-iff-tprod-vanishing--efbefcf3b9bd3132068e7c2e",
  "source": {
    "blob": "012d8e3b94ea55cc7b2ad74566caecb6d9ac6479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efbefcf3b9bd3132068e7c2e0b51b08cd4232b0ea2b9f4345d85338e620d2069",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4679153-f1cb-3674-0be3-1418a259d500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_finset_iff_tprod_vanishing :
    (CauchySeq fun s : Finset β ↦ ∏ b ∈ s, f b) ↔
      ∀ e ∈ 𝓝 (1 : α), ∃ s : Finset β, ∀ t : Set β, Disjoint t s → (∏' b : t, f b) ∈ e := by
  simp_rw [cauchySeq_finset_iff_prod_vanishing, Set.disjoint_left, disjoint_left]
  refine ⟨fun vanish e he ↦ ?_, fun vanish e he ↦ ?_⟩
  · obtain ⟨o, ho, o_closed, oe⟩ := exists_mem_nhds_isClosed_subset he
    obtain ⟨s, hs⟩ := vanish o ho
    refine ⟨s, fun t hts ↦ oe ?_⟩
    by_cases ht : Multipliable fun a : t ↦ f a
    · classical
      refine o_closed.mem_of_tendsto ht.hasProd (Eventually.of_forall fun t' ↦ ?_)
      rw [← prod_subtype_map_embedding fun _ _ ↦ by rfl]
      apply hs
      simp_rw [Finset.mem_map]
      rintro _ ⟨b, -, rfl⟩
      exact hts b.prop
    · exact tprod_eq_one_of_not_multipliable ht ▸ mem_of_mem_nhds ho
  · obtain ⟨s, hs⟩ := vanish _ he
    exact ⟨s, fun t hts ↦ (t.tprod_subtype f).symm ▸ hs _ hts⟩

variable [CompleteSpace α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `012d8e3b94ea55cc7b2ad74566caecb6d9ac6479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
