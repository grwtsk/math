# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a972b474056ace3f2f98b682b7f3b1c19a17f5134dd0491f2338db91505f0803",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2ab32b97dffb0d9d92a19b0b",
  "source": {
    "blob": "c478f756cbb46f1a6d18cec9f7eab18d92ee4c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ab32b97dffb0d9d92a19b0b6d4e1165e8af37ee0b1949be9d9da9fe39add41a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a972b474056ace3f2f98b682b7f3b1c19a17f5134dd0491f2338db91505f0803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R} [Zero R] [Zero β] [PseudoMetricSpace R] [SMul R β] [IsBoundedSMul R β] :
    IsBoundedSMul R C(α, β) where
  dist_smul_pair' r f g := by
    simpa only [← dist_mkOfCompact] using dist_smul_pair r (mkOfCompact f) (mkOfCompact g)
  dist_pair_smul' r₁ r₂ f := by
    simpa only [← dist_mkOfCompact] using dist_pair_smul r₁ r₂ (mkOfCompact f)

end

-- TODO at some point we will need lemmas characterising this norm!
-- At the moment the only way to reason about it is to transfer `f : C(α,E)` back to `α →ᵇ E`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c478f756cbb46f1a6d18cec9f7eab18d92ee4c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
