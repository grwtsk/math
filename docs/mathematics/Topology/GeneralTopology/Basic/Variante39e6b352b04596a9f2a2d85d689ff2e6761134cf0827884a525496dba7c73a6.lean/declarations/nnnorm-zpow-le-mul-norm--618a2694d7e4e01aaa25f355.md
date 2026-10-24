# nnnorm_zpow_le_mul_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0da97073-30cd-5896-444a-3893105e7588",
  "kind": "theorem",
  "lexical_name": "nnnorm_zpow_le_mul_norm",
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
  "slug": "nnnorm-zpow-le-mul-norm--618a2694d7e4e01aaa25f355",
  "source": {
    "blob": "c700082d1a0bf4ea8779800957d94d938ec63c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1902,
    "line": 1891,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:618a2694d7e4e01aaa25f3555e79761707d486f586b76e8f4a568057dcb8ffe8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da97073-30cd-5896-444a-3893105e7588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1891–1902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnnorm_zpow_le_mul_norm (n : ℤ) (a : α) : ‖a ^ n‖₊ ≤ ‖n‖₊ * ‖a‖₊ := by
  simpa only [← NNReal.coe_le_coe, NNReal.coe_mul] using norm_zpow_le_mul_norm n a
#align nnnorm_zpow_le_mul_norm nnnorm_zpow_le_mul_norm
#align nnnorm_zsmul_le nnnorm_zsmul_le

end

namespace LipschitzWith

variable [PseudoEMetricSpace α] {K Kf Kg : ℝ≥0} {f g : α → E}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean#L1891).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c700082d1a0bf4ea8779800957d94d938ec63c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
