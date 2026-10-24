# withLpProdComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcf3d073880187f793b071f31958575ec18c88dc6b8fc1863e30e29ba52e61e3",
  "kind": "def",
  "lexical_name": "withLpProdComm",
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
  "slug": "withlpprodcomm--d9191df883532a36efe386bc",
  "source": {
    "blob": "88631d0fb14b4c0c8b9160981fd79f9827d91b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1136,
    "line": 1128,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9191df883532a36efe386bc0098d50fa8495b8ac716d8f46e45b9bed8dbea73",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcf3d073880187f793b071f31958575ec18c88dc6b8fc1863e30e29ba52e61e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1128–1136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withLpProdComm : WithLp p (α × β) ≃ᵢ WithLp p (β × α) where
  __ := WithLp.congr p (Equiv.prodComm α β)
  isometry_toFun _ _ := by
    rcases p.trichotomy with rfl | rfl | hp
    · absurd hp.elim; simp
    · simp [WithLp.prod_edist_eq_sup, max_comm]
    · simp [WithLp.prod_edist_eq_add hp, add_comm]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean#L1128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88631d0fb14b4c0c8b9160981fd79f9827d91b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
