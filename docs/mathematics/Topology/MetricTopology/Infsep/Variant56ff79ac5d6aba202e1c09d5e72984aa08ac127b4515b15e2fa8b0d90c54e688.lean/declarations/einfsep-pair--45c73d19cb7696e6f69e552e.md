# einfsep_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e14410b7-58c8-d99e-07c0-d339140f367b",
  "kind": "theorem",
  "lexical_name": "einfsep_pair",
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
  "slug": "einfsep-pair--45c73d19cb7696e6f69e552e",
  "source": {
    "blob": "5ded06d8a961e71b879c1c49853bcb9d828a18c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 222,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c73d19cb7696e6f69e552ebb389d12a0ad9c4b79cdb00ffcd012da5abe37fb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e14410b7-58c8-d99e-07c0-d339140f367b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem einfsep_pair (hxy : x ≠ y) : ({x, y} : Set α).einfsep = edist x y := by
  nth_rw 1 [← min_self (edist x y)]
  convert einfsep_pair_eq_inf hxy using 2
  rw [edist_comm]
#align set.einfsep_pair Set.einfsep_pair

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ded06d8a961e71b879c1c49853bcb9d828a18c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
