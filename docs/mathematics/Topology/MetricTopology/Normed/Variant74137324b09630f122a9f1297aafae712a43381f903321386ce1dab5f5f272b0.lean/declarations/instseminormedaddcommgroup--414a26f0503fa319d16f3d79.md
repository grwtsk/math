# instSeminormedAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6f25204639e24dcc3f0fb4eac588e10910ee7901f0b4563671d6d78aacd759a",
  "kind": "instance",
  "lexical_name": "instSeminormedAddCommGroup",
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
  "slug": "instseminormedaddcommgroup--414a26f0503fa319d16f3d79",
  "source": {
    "blob": "3a8455226a8b93d19a0e9139efb131b0a6670280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 206,
    "path": "GRWTSK/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:414a26f0503fa319d16f3d794a9123bdf0445c39f6a61581aa7ece13cf2b420c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6f25204639e24dcc3f0fb4eac588e10910ee7901f0b4563671d6d78aacd759a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSeminormedAddCommGroup : SeminormedAddCommGroup (α →ᵇ β) where
  dist_eq f g := by simp only [norm_eq, dist_eq, dist_eq_norm, sub_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a8455226a8b93d19a0e9139efb131b0a6670280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
