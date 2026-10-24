# diam_union'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae2183a8-3138-cfeb-3b68-41e83d62a56b",
  "kind": "theorem",
  "lexical_name": "diam_union'",
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
  "slug": "diam-union--0bf9f588c2b6bf57bd5aacd3",
  "source": {
    "blob": "947b76c5a7dfb12db5aff5c6dd81553e6cb5ea38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 119,
    "path": "GRWTSK/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf9f588c2b6bf57bd5aacd360f2b057652eff45b13914c860f4cdcb86f4cd17",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae2183a8-3138-cfeb-3b68-41e83d62a56b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diam_union' {t : Set α} (h : (s ∩ t).Nonempty) : diam (s ∪ t) ≤ diam s + diam t := by
  let ⟨x, ⟨xs, xt⟩⟩ := h
  simpa using diam_union xs xt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `947b76c5a7dfb12db5aff5c6dd81553e6cb5ea38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
