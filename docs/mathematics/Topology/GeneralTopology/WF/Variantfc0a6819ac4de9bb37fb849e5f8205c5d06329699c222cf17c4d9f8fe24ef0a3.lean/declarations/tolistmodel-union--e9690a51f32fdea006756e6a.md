# toListModel_unionₘ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6d55cf1-9cd1-1f79-83ca-4e21df815659",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9343faa-6c77-1d81-1585-9344e05c683f",
  "kind": "theorem",
  "lexical_name": "toListModel_unionₘ",
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
  "slug": "tolistmodel-union--e9690a51f32fdea006756e6a",
  "source": {
    "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1200,
    "line": 1191,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9690a51f32fdea006756e6ab3c0a9dfefb02bd6fff9ba000d77509096c4dd38",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9343faa-6c77-1d81-1585-9344e05c683f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1191–1200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toListModel_unionₘ [BEq α] [Hashable α] [EquivBEq α] [LawfulHashable α]
    {m₁ m₂ : Raw₀ α β} (h₁ : Raw.WFImp m₁.1) (h₂ : Raw.WFImp m₂.1) :
    Perm (toListModel (unionₘ m₁ m₂).1.buckets)
      (List.insertList (toListModel m₁.1.buckets) (toListModel m₂.1.buckets)) := by
  refine Perm.trans ?_ (Perm.symm (List.insertList_perm_insertSmallerList h₁.distinct h₂.distinct))
  rw [unionₘ, insertSmallerList, h₁.size_eq, h₂.size_eq]
  split
  · exact toListModel_insertListIfNewₘ ‹_›
  · exact toListModel_insertListₘ ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean#L1191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35e589640be1153e2c0deac9541e0bded402d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
