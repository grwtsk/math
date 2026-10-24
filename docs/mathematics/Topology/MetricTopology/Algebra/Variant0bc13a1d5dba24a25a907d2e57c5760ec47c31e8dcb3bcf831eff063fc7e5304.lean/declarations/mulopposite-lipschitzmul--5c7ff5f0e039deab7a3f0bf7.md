# MulOpposite.lipschitzMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fc533ea569172d5fbf33249502d3cd385f45398dcbf09e8b1396e0a6f7fa5d4",
  "kind": "instance",
  "lexical_name": "MulOpposite.lipschitzMul",
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
  "slug": "mulopposite-lipschitzmul--5c7ff5f0e039deab7a3f0bf7",
  "source": {
    "blob": "a1668b25fcccf38fe31344d1ea1e3b60de07a122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c7ff5f0e039deab7a3f0bf78acf8516b906be857209979333b5b6e5be849d97",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fc533ea569172d5fbf33249502d3cd385f45398dcbf09e8b1396e0a6f7fa5d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MulOpposite.lipschitzMul : LipschitzMul βᵐᵒᵖ where
  lipschitz_mul := ⟨LipschitzMul.C β, fun ⟨x₁, x₂⟩ ⟨y₁, y₂⟩ =>
    (lipschitzWith_lipschitz_const_mul_edist ⟨x₂.unop, x₁.unop⟩ ⟨y₂.unop, y₁.unop⟩).trans_eq
      (congr_arg _ <| max_comm _ _)⟩

-- this instance could be deduced from `NormedAddCommGroup.lipschitzAdd`, but we prove it
-- separately here so that it is available earlier in the hierarchy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1668b25fcccf38fe31344d1ea1e3b60de07a122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
