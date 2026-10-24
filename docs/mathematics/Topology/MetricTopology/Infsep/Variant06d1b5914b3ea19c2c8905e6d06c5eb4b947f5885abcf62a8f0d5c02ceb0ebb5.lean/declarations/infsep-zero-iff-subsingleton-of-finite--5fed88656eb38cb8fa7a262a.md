# infsep_zero_iff_subsingleton_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d8e47b5-c83a-2ccf-852a-5493d76eebf4",
  "kind": "theorem",
  "lexical_name": "infsep_zero_iff_subsingleton_of_finite",
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
  "slug": "infsep-zero-iff-subsingleton-of-finite--5fed88656eb38cb8fa7a262a",
  "source": {
    "blob": "552efd3e7ff0867c76f9ca635cfb869880c78112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 462,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant06d1b5914b3ea19c2c8905e6d06c5eb4b947f5885abcf62a8f0d5c02ceb0ebb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fed88656eb38cb8fa7a262a02f327040bdf2d85c1f7262f9b1a4c1276208bc3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant06d1b5914b3ea19c2c8905e6d06c5eb4b947f5885abcf62a8f0d5c02ceb0ebb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d8e47b5-c83a-2ccf-852a-5493d76eebf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infsep_zero_iff_subsingleton_of_finite [Finite s] : s.infsep = 0 ↔ s.Subsingleton := by
  rw [infsep_zero, einfsep_eq_top_iff, or_iff_right_iff_imp]
  exact fun H => (einfsep_pos_of_finite.ne' H).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant06d1b5914b3ea19c2c8905e6d06c5eb4b947f5885abcf62a8f0d5c02ceb0ebb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant06d1b5914b3ea19c2c8905e6d06c5eb4b947f5885abcf62a8f0d5c02ceb0ebb5.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `552efd3e7ff0867c76f9ca635cfb869880c78112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
