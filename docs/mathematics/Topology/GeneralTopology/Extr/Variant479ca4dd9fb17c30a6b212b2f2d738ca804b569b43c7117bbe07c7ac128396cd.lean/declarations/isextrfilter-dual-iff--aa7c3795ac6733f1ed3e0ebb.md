# isExtrFilter_dual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa2802d3-37bd-c26e-3d4c-dca39023ba25",
  "kind": "theorem",
  "lexical_name": "isExtrFilter_dual_iff",
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
  "slug": "isextrfilter-dual-iff--aa7c3795ac6733f1ed3e0ebb",
  "source": {
    "blob": "446db5e629fbf0fbf1ce1b0e215406c049843101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa7c3795ac6733f1ed3e0ebbd9403a91ce241c69bf7a9c1af29417dcaa37d79b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa2802d3-37bd-c26e-3d4c-dca39023ba25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isExtrFilter_dual_iff : IsExtrFilter (toDual ∘ f) l a ↔ IsExtrFilter f l a :=
  or_comm
#align is_extr_filter_dual_iff isExtrFilter_dual_iff

alias ⟨IsMinFilter.undual, IsMaxFilter.dual⟩ := isMinFilter_dual_iff
#align is_min_filter.undual IsMinFilter.undual
#align is_max_filter.dual IsMaxFilter.dual

alias ⟨IsMaxFilter.undual, IsMinFilter.dual⟩ := isMaxFilter_dual_iff
#align is_max_filter.undual IsMaxFilter.undual
#align is_min_filter.dual IsMinFilter.dual

alias ⟨IsExtrFilter.undual, IsExtrFilter.dual⟩ := isExtrFilter_dual_iff
#align is_extr_filter.undual IsExtrFilter.undual
#align is_extr_filter.dual IsExtrFilter.dual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Extr/Variant479ca4dd9fb17c30a6b212b2f2d738ca804b569b43c7117bbe07c7ac128396cd.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `446db5e629fbf0fbf1ce1b0e215406c049843101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
