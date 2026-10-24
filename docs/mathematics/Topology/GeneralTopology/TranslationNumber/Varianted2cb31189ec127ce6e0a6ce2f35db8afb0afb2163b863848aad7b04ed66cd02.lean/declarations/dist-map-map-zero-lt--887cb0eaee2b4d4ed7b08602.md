# dist_map_map_zero_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97c50fde-e224-8a76-1a61-e35d36a10ab2",
  "kind": "theorem",
  "lexical_name": "dist_map_map_zero_lt",
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
  "slug": "dist-map-map-zero-lt--887cb0eaee2b4d4ed7b08602",
  "source": {
    "blob": "2189cde89d38a940c68fec7aac9732defd94ff80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 457,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:887cb0eaee2b4d4ed7b086026cdb1c20c43b399e542d13aa0f89003fd46c67a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c50fde-e224-8a76-1a61-e35d36a10ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_map_map_zero_lt : dist (f 0 + g 0) (f (g 0)) < 1 := by
  rw [dist_comm, Real.dist_eq, abs_lt, lt_sub_iff_add_lt', sub_lt_iff_lt_add', ← sub_eq_add_neg]
  exact ⟨f.lt_map_map_zero g, f.map_map_zero_lt g⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2189cde89d38a940c68fec7aac9732defd94ff80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
