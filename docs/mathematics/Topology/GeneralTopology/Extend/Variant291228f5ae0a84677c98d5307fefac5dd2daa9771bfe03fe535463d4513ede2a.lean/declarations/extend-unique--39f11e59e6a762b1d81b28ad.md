# extend_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71b3877d-3be6-1088-2d14-92fd90a25bae",
  "kind": "theorem",
  "lexical_name": "extend_unique",
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
  "slug": "extend-unique--39f11e59e6a762b1d81b28ad",
  "source": {
    "blob": "64586a1800972510dee4a1bf7062309541b6ce9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/Extend/Variant291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39f11e59e6a762b1d81b28ad0dec5fbbd40f657588a0374eeef1c33e03694932",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Extend/Variant291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71b3877d-3be6-1088-2d14-92fd90a25bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem extend_unique (h_dense : DenseRange e) (h_e : IsUniformInducing e)
    (g : Eₗ →SL[σ₁₂] F) (H : g.comp e = f) : extend f e = g := by
  simp only [extend, h_dense, h_e, and_self, ↓reduceDIte]
  exact ContinuousLinearMap.coeFn_injective <|
    uniformly_extend_unique h_e h_dense (ContinuousLinearMap.ext_iff.1 H) g.continuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Extend/Variant291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Extend/Variant291228f5ae0a84677c98d5307fefac5dd2daa9771bfe03fe535463d4513ede2a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64586a1800972510dee4a1bf7062309541b6ce9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
