# exists_eq_insert_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6a9217c-c7b0-097f-59d5-47c124fb2462",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f46f2ed-908f-c109-17ec-9d2a3cd56cc2",
  "kind": "theorem",
  "lexical_name": "exists_eq_insert_iff",
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
  "slug": "exists-eq-insert-iff--80c758d01c604efa160dd251",
  "source": {
    "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 512,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80c758d01c604efa160dd2511fd72c13c9c3dd011729a61f1123042b65037ef3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f46f2ed-908f-c109-17ec-9d2a3cd56cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_insert_iff [DecidableEq α] {s t : Finset α} :
    (∃ (a : _) (_ : a ∉ s), insert a s = t) ↔ s ⊆ t ∧ s.card + 1 = t.card := by
  constructor
  · rintro ⟨a, ha, rfl⟩
    exact ⟨subset_insert _ _, (card_insert_of_not_mem ha).symm⟩
  · rintro ⟨hst, h⟩
    obtain ⟨a, ha⟩ : ∃ a, t \ s = {a} :=
      card_eq_one.1 (by rw [card_sdiff hst, ← h, add_tsub_cancel_left])
    refine'
      ⟨a, fun hs => (_ : a ∉ {a}) <| mem_singleton_self _, by
        rw [insert_eq, ← ha, sdiff_union_of_subset hst]⟩
    rw [← ha]
    exact not_mem_sdiff_of_mem_right hs
#align finset.exists_eq_insert_iff Finset.exists_eq_insert_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569c6f8297515ce337ad9ae4c9ebb94bd2554386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
