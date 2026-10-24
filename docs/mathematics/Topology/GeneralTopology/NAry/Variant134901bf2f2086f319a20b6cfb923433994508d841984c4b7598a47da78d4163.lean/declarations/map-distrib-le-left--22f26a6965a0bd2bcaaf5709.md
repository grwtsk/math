# map₂_distrib_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "933e6da7c6646321dd8de2185b8bc03b9574ada7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88694a61-4ecf-efdf-5771-63a589b4dbb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4f575ac-0380-a7b8-56fd-fb32290fede3",
  "kind": "theorem",
  "lexical_name": "map₂_distrib_le_left",
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
  "slug": "map-distrib-le-left--22f26a6965a0bd2bcaaf5709",
  "source": {
    "blob": "933e6da7c6646321dd8de2185b8bc03b9574ada7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22f26a6965a0bd2bcaaf570926fc0f396035efc572cf75ba7c4435b102b5785b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4f575ac-0380-a7b8-56fd-fb32290fede3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map₂_distrib_le_left {m : α → δ → ε} {n : β → γ → δ} {m₁ : α → β → β'} {m₂ : α → γ → γ'}
    {n' : β' → γ' → ε} (h_distrib : ∀ a b c, m a (n b c) = n' (m₁ a b) (m₂ a c)) :
    map₂ m f (map₂ n g h) ≤ map₂ n' (map₂ m₁ f g) (map₂ m₂ f h) := by
  rintro s ⟨t₁, ⟨u₁, hu₁, v, hv, ht₁⟩, t₂, ⟨u₂, hu₂, w, hw, ht₂⟩, hs⟩
  refine ⟨u₁ ∩ u₂, inter_mem hu₁ hu₂, _, image2_mem_map₂ hv hw, ?_⟩
  refine (image2_distrib_subset_left h_distrib).trans ((image2_subset ?_ ?_).trans hs)
  · exact (image2_subset_right inter_subset_left).trans ht₁
  · exact (image2_subset_right inter_subset_right).trans ht₂

/-- The other direction does not hold because of the `h`-`h` cross terms on the RHS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `933e6da7c6646321dd8de2185b8bc03b9574ada7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
