# hasCompactSupport_norm_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c8e1bd4-1764-316a-0468-7b32ff5e4b7b",
  "kind": "theorem",
  "lexical_name": "hasCompactSupport_norm_iff",
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
  "slug": "hascompactsupport-norm-iff--88a4cccc42aa9a94ba1daba2",
  "source": {
    "blob": "c700082d1a0bf4ea8779800957d94d938ec63c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2112,
    "line": 2106,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a4cccc42aa9a94ba1daba268ee821977716e73d67956a6843c198fd11be837",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c8e1bd4-1764-316a-0468-7b32ff5e4b7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2106–2112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasCompactSupport_norm_iff : (HasCompactSupport fun x => ‖f x‖) ↔ HasCompactSupport f :=
  hasCompactSupport_comp_left norm_eq_zero
#align has_compact_support_norm_iff hasCompactSupport_norm_iff

alias ⟨_, HasCompactSupport.norm⟩ := hasCompactSupport_norm_iff
#align has_compact_support.norm HasCompactSupport.norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean#L2106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c700082d1a0bf4ea8779800957d94d938ec63c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
