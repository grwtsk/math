# cellPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c10d416fe4d0665880246ce92063e09f8bb59973cbe5373a4cf79a32998d84bd",
  "kind": "def",
  "lexical_name": "cellPoint",
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
  "slug": "cellpoint--fab78940572725095bd83aec",
  "source": {
    "blob": "16c48ea3cf616019d64984c78cdd912ed822c839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantddca666186d759be20f5c685b4cb6f17e64a7e9cdffd6a3d3d3085167a334c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fab78940572725095bd83aece08c26e4e9267b908571fd1b8107ef84c996a5ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantddca666186d759be20f5c685b4cb6f17e64a7e9cdffd6a3d3d3085167a334c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c10d416fe4d0665880246ce92063e09f8bb59973cbe5373a4cf79a32998d84bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cellPoint
    (M : GeometricPrismCarrier V)
    {c : M.CellId}
    (hc : c ∈ M.cells)
    {p : M.Point}
    (hp : p ∈ M.cellCarrier c) : M.CarrierPoint :=
  ⟨p, M.cell_mem_carrier c hc hp⟩

/-- Every carrier point is covered by at least one declared finite cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantddca666186d759be20f5c685b4cb6f17e64a7e9cdffd6a3d3d3085167a334c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantddca666186d759be20f5c685b4cb6f17e64a7e9cdffd6a3d3d3085167a334c1e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c48ea3cf616019d64984c78cdd912ed822c839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
