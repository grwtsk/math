# Prod.instIsBoundedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a57a138ac2a0a37b1c4de7fdd3a3e0a9784bdd911db58aeb785ab9d68f9ac69",
  "kind": "instance",
  "lexical_name": "Prod.instIsBoundedSMul",
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
  "slug": "prod-instisboundedsmul--3c30b9e4c1c651fd4cb72128",
  "source": {
    "blob": "a1668b25fcccf38fe31344d1ea1e3b60de07a122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 214,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c30b9e4c1c651fd4cb72128f2a31a7f252bf7fab0548f05fb8f52005e906c59",
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

Occurrence: `declaration:6a57a138ac2a0a37b1c4de7fdd3a3e0a9784bdd911db58aeb785ab9d68f9ac69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instIsBoundedSMul {α β γ : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β]
    [PseudoMetricSpace γ] [Zero α] [Zero β] [Zero γ] [SMul α β] [SMul α γ] [IsBoundedSMul α β]
    [IsBoundedSMul α γ] : IsBoundedSMul α (β × γ) where
  dist_smul_pair' _x _y₁ _y₂ :=
    max_le ((dist_smul_pair _ _ _).trans <| mul_le_mul_of_nonneg_left (le_max_left _ _) dist_nonneg)
      ((dist_smul_pair _ _ _).trans <| mul_le_mul_of_nonneg_left (le_max_right _ _) dist_nonneg)
  dist_pair_smul' _x₁ _x₂ _y :=
    max_le ((dist_pair_smul _ _ _).trans <| mul_le_mul_of_nonneg_left (le_max_left _ _) dist_nonneg)
      ((dist_pair_smul _ _ _).trans <| mul_le_mul_of_nonneg_left (le_max_right _ _) dist_nonneg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1668b25fcccf38fe31344d1ea1e3b60de07a122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
