# ContinuousLinearMap.mkOfIsCompactOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6a89464944e1b3cc7cdcbb25d74da6135a6c5fb076dca4c75bf32c6c08b5797",
  "kind": "def",
  "lexical_name": "ContinuousLinearMap.mkOfIsCompactOperator",
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
  "slug": "continuouslinearmap-mkofiscompactoperator--f01e13bf58e954247f1ff0e0",
  "source": {
    "blob": "f88bf7f467759e447f735295109664b2cc6f0251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f01e13bf58e954247f1ff0e0a54b4bda513a20e4b9a5505a836e0a25a05873d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6a89464944e1b3cc7cdcbb25d74da6135a6c5fb076dca4c75bf32c6c08b5797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousLinearMap.mkOfIsCompactOperator {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) :
    M₁ →SL[σ₁₂] M₂ :=
  ⟨f, hf.continuous⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f88bf7f467759e447f735295109664b2cc6f0251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
