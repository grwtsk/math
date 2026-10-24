# interior_compact_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70064aa1-4830-5e79-1efd-875f89877754",
  "kind": "theorem",
  "lexical_name": "interior_compact_eq_empty",
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
  "slug": "interior-compact-eq-empty--0c248e56cea211f3df7b041a",
  "source": {
    "blob": "418f344c03386dca4a4c3678ec93e015156c4498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c248e56cea211f3df7b041acd901511d580938d59b2db8288a32fef921ce8e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70064aa1-4830-5e79-1efd-875f89877754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_compact_eq_empty [T2Space β] (di : DenseInducing i) (hd : Dense (range i)ᶜ)
    {s : Set α} (hs : IsCompact s) : interior s = ∅ := by
  refine' eq_empty_iff_forall_not_mem.2 fun x hx => _
  rw [mem_interior_iff_mem_nhds] at hx
  have := di.closure_image_mem_nhds hx
  rw [(hs.image di.continuous).isClosed.closure_eq] at this
  rcases hd.inter_nhds_nonempty this with ⟨y, hyi, hys⟩
  exact hyi (image_subset_range _ _ hys)
#align dense_inducing.interior_compact_eq_empty DenseInducing.interior_compact_eq_empty

/-- The product of two dense inducings is a dense inducing -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `418f344c03386dca4a4c3678ec93e015156c4498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
