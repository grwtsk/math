# contDiffWithinAtProp_mono_of_mem_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a8841a5-08e3-978c-2484-5947da6a603c",
  "kind": "theorem",
  "lexical_name": "contDiffWithinAtProp_mono_of_mem_nhdsWithin",
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
  "slug": "contdiffwithinatprop-mono-of-mem-nhdswithin--065482c5e8625e87d44117ef",
  "source": {
    "blob": "3a8fd08a24c8d264cab038a5aa88f876ff523695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfe6dca179bbcf7589829e29effc901ba3909515aa94e20a02c69ecc2cf2acfe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:065482c5e8625e87d44117ef85e970f0f143cd7d15996b5f0c8b57ca2236af53",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantfe6dca179bbcf7589829e29effc901ba3909515aa94e20a02c69ecc2cf2acfe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a8841a5-08e3-978c-2484-5947da6a603c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffWithinAtProp_mono_of_mem_nhdsWithin
    (n : ℕ∞ω) ⦃s x t⦄ ⦃f : H → H'⦄ (hts : s ∈ 𝓝[t] x)
    (h : ContDiffWithinAtProp I I' n f s x) : ContDiffWithinAtProp I I' n f t x := by
  refine h.mono_of_mem_nhdsWithin ?_
  refine inter_mem ?_ (mem_of_superset self_mem_nhdsWithin inter_subset_right)
  rwa [← Filter.mem_map, ← I.image_eq, I.symm_map_nhdsWithin_image]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantfe6dca179bbcf7589829e29effc901ba3909515aa94e20a02c69ecc2cf2acfe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfe6dca179bbcf7589829e29effc901ba3909515aa94e20a02c69ecc2cf2acfe2.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a8fd08a24c8d264cab038a5aa88f876ff523695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
