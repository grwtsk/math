# mem_range_rank_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a7aed38-4428-bd4c-dba4-6ef136c364ab",
  "kind": "theorem",
  "lexical_name": "mem_range_rank_of_le",
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
  "slug": "mem-range-rank-of-le--60bdff3a89acb6641140a5be",
  "source": {
    "blob": "12a100dd036822f4a6dc448070e0cc8ee4d6d8ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant0aeaad7e58e5addaf753ba40e6b0d143caabc99a81b1e1c54996bcbdb7f1528c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60bdff3a89acb6641140a5be23191911592fc76ccc7d6f775f2bd6a09060c575",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant0aeaad7e58e5addaf753ba40e6b0d143caabc99a81b1e1c54996bcbdb7f1528c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a7aed38-4428-bd4c-dba4-6ef136c364ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_range_rank_of_le {o : Ordinal} (ha : Acc r a) (ho : o ≤ ha.rank) :
    ∃ (b : α) (hb : Acc r b), hb.rank = o := by
  obtain rfl | ho := ho.eq_or_lt
  · exact ⟨a, ha, rfl⟩
  · revert ho
    refine ha.recOn fun a ha IH ho ↦ ?_
    rw [rank_eq, Ordinal.lt_iSup_iff] at ho
    obtain ⟨⟨b, hb⟩, ho⟩ := ho
    rw [Order.lt_succ_iff] at ho
    obtain rfl | ho := ho.eq_or_lt
    exacts [⟨b, ha b hb, rfl⟩, IH _ hb ho]

end Acc

/-! ### Rank in a well-founded relation -/

namespace IsWellFounded

variable (r : α → α → Prop) [hwf : IsWellFounded α r]

/-- The rank of an element `a` under a well-founded relation `r` is defined recursively as the
smallest ordinal greater than the ranks of all elements below it (i.e. elements `b` such that
`r b a`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant0aeaad7e58e5addaf753ba40e6b0d143caabc99a81b1e1c54996bcbdb7f1528c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant0aeaad7e58e5addaf753ba40e6b0d143caabc99a81b1e1c54996bcbdb7f1528c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a100dd036822f4a6dc448070e0cc8ee4d6d8ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
