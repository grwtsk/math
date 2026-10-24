# eventually_isCompact_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:338f5f0e-f77c-c9cc-1aa9-f05060d28fdb",
  "kind": "lemma",
  "lexical_name": "eventually_isCompact_closedBall",
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
  "slug": "eventually-iscompact-closedball--0d48440437fe717dd1c6a217",
  "source": {
    "blob": "8896af950abbae801da7693a8173b8fdd2e68f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d48440437fe717dd1c6a217076f85b0b0a7f51ba00a4bf8f774fd0b5705cfe2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:338f5f0e-f77c-c9cc-1aa9-f05060d28fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_isCompact_closedBall [WeaklyLocallyCompactSpace α] (x : α) :
    ∀ᶠ r in 𝓝 (0 : ℝ), IsCompact (closedBall x r) := by
  rcases exists_compact_mem_nhds x with ⟨s, s_compact, hs⟩
  filter_upwards [eventually_closedBall_subset hs] with r hr
  exact IsCompact.of_isClosed_subset s_compact isClosed_closedBall hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8896af950abbae801da7693a8173b8fdd2e68f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
