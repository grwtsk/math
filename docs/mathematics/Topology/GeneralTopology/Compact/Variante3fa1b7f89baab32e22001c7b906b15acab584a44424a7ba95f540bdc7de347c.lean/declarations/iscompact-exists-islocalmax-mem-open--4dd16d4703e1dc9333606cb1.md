# IsCompact.exists_isLocalMax_mem_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "751d9bfb7d451295a7ab83b6cab831fd64b8c643",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eb73c4a-e2ac-ab5c-c32f-d9076c55af7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97c4ac14-9d81-117f-850b-38898dc1b040",
  "kind": "theorem",
  "lexical_name": "IsCompact.exists_isLocalMax_mem_open",
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
  "slug": "iscompact-exists-islocalmax-mem-open--4dd16d4703e1dc9333606cb1",
  "source": {
    "blob": "751d9bfb7d451295a7ab83b6cab831fd64b8c643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 474,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dd16d4703e1dc9333606cb1d25fe111880c719a735b4f6c0040dbdd16b88921",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c4ac14-9d81-117f-850b-38898dc1b040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.exists_isLocalMax_mem_open [ClosedIciTopology α] {f : β → α} {s t : Set β}
    {z : β} (ht : IsCompact t) (hst : s ⊆ t) (hf : ContinuousOn f t) (hz : z ∈ t)
    (hfz : ∀ z' ∈ t \ s, f z' < f z) (hs : IsOpen s) : ∃ x ∈ s, IsLocalMax f x :=
  let ⟨x, hxs, h⟩ := ht.exists_isMaxOn_mem_subset hf hz hfz
  ⟨x, hxs, h.isLocalMax <| mem_nhds_iff.2 ⟨s, hst, hs, hxs⟩⟩

end OrderClosedTopology

variable {α β γ : Type*} [ConditionallyCompleteLinearOrder α] [TopologicalSpace α]
  [OrderTopology α] [TopologicalSpace β] [TopologicalSpace γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751d9bfb7d451295a7ab83b6cab831fd64b8c643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
