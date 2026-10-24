# IsTangentAt.eq_of_isTangentAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16b412f8-286c-588e-0265-79e959e52a6e",
  "kind": "lemma",
  "lexical_name": "IsTangentAt.eq_of_isTangentAt",
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
  "slug": "istangentat-eq-of-istangentat--b8f7bebbab6d76c321c02f7f",
  "source": {
    "blob": "9a7f5481966cd1a194bb0ba3c7840825129541bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 152,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f7bebbab6d76c321c02f7f2cfdafffac030a45608fbf5130e22f5569081cb4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16b412f8-286c-588e-0265-79e959e52a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTangentAt.eq_of_isTangentAt {s : Sphere P} {p q : P} {as : AffineSubspace ℝ P}
    (hp : s.IsTangentAt p as) (hq : s.IsTangentAt q as) : p = q := by
  have hqp := hp.inner_left_eq_zero_of_mem hq.mem_space
  have hpq := hq.inner_left_eq_zero_of_mem hp.mem_space
  rw [← neg_vsub_eq_vsub_rev, inner_neg_left, neg_eq_zero, ← hpq, ← sub_eq_zero,
    ← inner_sub_right, vsub_sub_vsub_cancel_right] at hqp
  simpa using hqp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7f5481966cd1a194bb0ba3c7840825129541bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
