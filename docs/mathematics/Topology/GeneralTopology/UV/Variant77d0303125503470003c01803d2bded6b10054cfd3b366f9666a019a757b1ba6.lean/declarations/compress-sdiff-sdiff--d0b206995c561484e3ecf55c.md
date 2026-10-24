# compress_sdiff_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06590fdf-8e64-f624-e2f5-12b5e54412df",
  "kind": "theorem",
  "lexical_name": "compress_sdiff_sdiff",
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
  "slug": "compress-sdiff-sdiff--d0b206995c561484e3ecf55c",
  "source": {
    "blob": "fee705f8ab0733c9c7ad58cbdbfcb1f55b3f392c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variant77d0303125503470003c01803d2bded6b10054cfd3b366f9666a019a757b1ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0b206995c561484e3ecf55cd0613ddbc52f7bbee108a7b299a9d0c869282abc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variant77d0303125503470003c01803d2bded6b10054cfd3b366f9666a019a757b1ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06590fdf-8e64-f624-e2f5-12b5e54412df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compress_sdiff_sdiff (a b : α) : compress (a \ b) (b \ a) b = a := by
  refine (compress_of_disjoint_of_le disjoint_sdiff_self_left sdiff_le).trans ?_
  rw [sup_sdiff_self_right, sup_sdiff, disjoint_sdiff_self_right.sdiff_eq_left, sup_eq_right]
  exact sdiff_sdiff_le

/-- Compressing an element is idempotent. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variant77d0303125503470003c01803d2bded6b10054cfd3b366f9666a019a757b1ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variant77d0303125503470003c01803d2bded6b10054cfd3b366f9666a019a757b1ba6.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fee705f8ab0733c9c7ad58cbdbfcb1f55b3f392c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
