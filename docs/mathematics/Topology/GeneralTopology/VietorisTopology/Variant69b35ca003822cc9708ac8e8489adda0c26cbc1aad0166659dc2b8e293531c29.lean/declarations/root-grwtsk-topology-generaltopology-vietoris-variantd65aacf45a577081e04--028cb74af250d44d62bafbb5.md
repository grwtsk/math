# _root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.isClosed_range_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bd2e32b-9954-faa1-1819-2b72298199c8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.isClosed_range_singleton",
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
  "slug": "root-grwtsk-topology-generaltopology-vietoris-variantd65aacf45a577081e04--028cb74af250d44d62bafbb5",
  "source": {
    "blob": "524bba0218c9cea79b453a081dfae042d893f368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:028cb74af250d44d62bafbb5cc8fcd61f1db99cf75c24d9f4ff36d11ee9d16c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bd2e32b-9954-faa1-1819-2b72298199c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.isClosed_range_singleton [T2Space α] {t : TopologicalSpace (Set α)}
    (h₁ : IsOpen {(∅ : Set α)}) (h₂ : ∀ {U : Set α}, IsOpen U → IsOpen {s | (s ∩ U).Nonempty}) :
    IsClosed (Set.range ({·} : α → Set α)) := by
  rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
  intro s hs
  rcases Set.eq_empty_or_nonempty s with rfl | h
  · rwa [(isOpen_singleton_iff_nhds_eq_pure _).mp h₁, Filter.mem_pure]
  rcases h.exists_eq_singleton_or_nontrivial with ⟨x, rfl⟩ | ⟨x, hx, y, hy, hxy⟩
  · cases hs <| Set.mem_range_self x
  obtain ⟨U, V, hU, hV, hxU, hyV, hUV⟩ := t2_separation hxy
  filter_upwards [(h₂ hU).inter (h₂ hV) |>.mem_nhds ⟨⟨x, hx, hxU⟩, ⟨y, hy, hyV⟩⟩]
  rintro _ ⟨hzU, hzV⟩ ⟨z, rfl⟩
  rw [Set.mem_ofPred, Set.singleton_inter_nonempty] at hzU hzV
  exact hUV.notMem_of_mem_left hzU hzV

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524bba0218c9cea79b453a081dfae042d893f368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
