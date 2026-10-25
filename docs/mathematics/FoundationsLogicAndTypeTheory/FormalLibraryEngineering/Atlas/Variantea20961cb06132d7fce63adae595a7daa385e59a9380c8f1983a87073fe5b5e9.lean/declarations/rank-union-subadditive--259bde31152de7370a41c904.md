# rank_union_subadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b01dbb-a723-e480-0ab3-21239582b227",
  "kind": "theorem",
  "lexical_name": "rank_union_subadditive",
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
  "slug": "rank-union-subadditive--259bde31152de7370a41c904",
  "source": {
    "blob": "a95ed8709c866b5be0c8f5f63a72a08f6be0da4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:259bde31152de7370a41c90443354ba8d23f84994ad19375fc5c0651999feaa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b01dbb-a723-e480-0ab3-21239582b227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_union_subadditive {cl : ClosureOperator (Finset α)}
    {candidates atlas first second : Finset α} {leftRank rightRank : ℕ}
    (hleft : rank cl candidates atlas first = some leftRank)
    (hright : rank cl candidates atlas second = some rightRank) :
    ∃ jointRank, rank cl candidates atlas (first ∪ second) = some jointRank ∧
      jointRank ≤ leftRank + rightRank := by
  obtain ⟨leftCarriers, hleftSub, hleftSuff, hleftCard⟩ := rank_attained hleft
  obtain ⟨rightCarriers, hrightSub, hrightSuff, hrightCard⟩ := rank_attained hright
  have hsub := Finset.union_subset hleftSub hrightSub
  have hsuff := sufficient_union hleftSuff hrightSuff
  obtain ⟨jointRank, hjoint⟩ := rank_defined_of_sufficient hsub hsuff
  refine ⟨jointRank, hjoint, ?_⟩
  calc
    jointRank ≤ (leftCarriers ∪ rightCarriers).card := rank_le_card hjoint hsub hsuff
    _ ≤ leftCarriers.card + rightCarriers.card := Finset.card_union_le _ _
    _ = leftRank + rightRank := by rw [hleftCard, hrightCard]

/-- Savings from shared finite carriers, guarded by the proved subadditivity inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantea20961cb06132d7fce63adae595a7daa385e59a9380c8f1983a87073fe5b5e9.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95ed8709c866b5be0c8f5f63a72a08f6be0da4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
