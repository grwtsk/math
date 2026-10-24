# MemHolder.coe_nnHolderNorm_eq_eHolderNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e8e1f57-d44c-3ef9-0bdb-2ffc3b2b7901",
  "kind": "lemma",
  "lexical_name": "MemHolder.coe_nnHolderNorm_eq_eHolderNorm",
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
  "slug": "memholder-coe-nnholdernorm-eq-eholdernorm--32dfc5bfe7f4d83e462de895",
  "source": {
    "blob": "acb796187791dfe3462b5bde06d31a857c0fa205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 183,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32dfc5bfe7f4d83e462de89520da52b040169f6be644d00bd590955dac16ea06",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e8e1f57-d44c-3ef9-0bdb-2ffc3b2b7901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MemHolder.coe_nnHolderNorm_eq_eHolderNorm
    {r : ℝ≥0} {f : X → Y} (hf : MemHolder r f) :
    (nnHolderNorm r f : ℝ≥0∞) = eHolderNorm r f := by
  rw [nnHolderNorm, coe_toNNReal]
  exact ne_of_lt <| lt_of_le_of_lt hf.holderWith.eHolderNorm_le <| coe_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb796187791dfe3462b5bde06d31a857c0fa205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
