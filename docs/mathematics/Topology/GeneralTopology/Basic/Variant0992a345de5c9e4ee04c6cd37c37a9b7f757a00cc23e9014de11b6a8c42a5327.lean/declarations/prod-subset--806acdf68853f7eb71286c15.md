# prod_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bf66d5d6cc6f5d01ff8706a72dd5affe02ecbd3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f7991a4-ff12-947c-85eb-9dee5e4fb7be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:293b60e1-4005-d18d-c509-82d1db893d79",
  "kind": "theorem",
  "lexical_name": "prod_subset",
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
  "slug": "prod-subset--806acdf68853f7eb71286c15",
  "source": {
    "blob": "4bf66d5d6cc6f5d01ff8706a72dd5affe02ecbd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:806acdf68853f7eb71286c1552c7df07b75a16dd00c3a5dfba0e590048a043f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:293b60e1-4005-d18d-c509-82d1db893d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_subset {U} (hU : U ∈ nhds (1 : G × K)) :
    ∃ (V : OpenSubgroup G) (W : OpenSubgroup K), (V : Set G) ×ˢ (W : Set K) ⊆ U := by
  erw [nhds_prod_eq, Filter.mem_prod_iff] at hU
  rcases hU with ⟨U₁, hU₁, U₂, hU₂, h⟩
  cases' is_nonarchimedean _ hU₁ with V hV
  cases' is_nonarchimedean _ hU₂ with W hW
  use V; use W
  rw [Set.prod_subset_iff]
  intro x hX y hY
  exact Set.Subset.trans (Set.prod_mono hV hW) h (Set.mem_sep hX hY)
#align nonarchimedean_group.prod_subset NonarchimedeanGroup.prod_subset
#align nonarchimedean_add_group.prod_subset NonarchimedeanAddGroup.prod_subset

/-- An open neighborhood of the identity in the cartesian square of a nonarchimedean group
contains the cartesian square of an open neighborhood in the group. -/
@[to_additive NonarchimedeanAddGroup.prod_self_subset "An open neighborhood of the identity in
the cartesian square of a nonarchimedean group contains the cartesian square of
an open neighborhood in the group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf66d5d6cc6f5d01ff8706a72dd5affe02ecbd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
