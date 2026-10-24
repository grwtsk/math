# ratio_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbc60b10-99d3-c17a-76b0-2df6bddbacc6",
  "kind": "theorem",
  "lexical_name": "ratio_symm",
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
  "slug": "ratio-symm--f9c6b5ea8ed360935ed52795",
  "source": {
    "blob": "434f99c221881589c6c4271181ee6041d760d4bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 135,
    "path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9c6b5ea8ed360935ed52795f4ac61394610861b4cdc0ab0ef1a54d21dd875dd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbc60b10-99d3-c17a-76b0-2df6bddbacc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratio_symm (e : X ≃ᵈ Y) : ratio e.symm = (ratio e)⁻¹ :=
  eq_inv_of_mul_eq_one_left <| by rw [← ratio_trans, symm_trans_self, ratio_refl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `434f99c221881589c6c4271181ee6041d760d4bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
