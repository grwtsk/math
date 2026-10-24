# ofLipschitz_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "810acdb8ec91e06f7f0ba0f7556ff9a9655e249b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b5f5c3f-a7a2-d46c-fb9e-edf26f5e7efb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4097486d-ed4d-425f-a45a-615c1265a30c",
  "kind": "theorem",
  "lexical_name": "ofLipschitz_norm_le",
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
  "slug": "oflipschitz-norm-le--d2fe4e879331ddb4022c71e8",
  "source": {
    "blob": "810acdb8ec91e06f7f0ba0f7556ff9a9655e249b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 266,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2fe4e879331ddb4022c71e8adc31e6e343ad647b8a569279c013075f8c27db0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4097486d-ed4d-425f-a45a-615c1265a30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofLipschitz_norm_le (f : V₁ →+ V₂) {K : ℝ≥0} (h : LipschitzWith K f) :
    ‖ofLipschitz f h‖ ≤ K :=
  mkNormedAddGroupHom_norm_le f K.coe_nonneg _

/-- If a bounded group homomorphism map is constructed from a group homomorphism
via the constructor `AddMonoidHom.mkNormedAddGroupHom`, then its norm is bounded by the bound
given to the constructor or zero if this bound is negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810acdb8ec91e06f7f0ba0f7556ff9a9655e249b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
