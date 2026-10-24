# toSpanSingletonLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0dba0d2a051c8ca03f3ba9a03fb024bb96111e3c9f693b2297cae1f659ea636",
  "kind": "def",
  "lexical_name": "toSpanSingletonLE",
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
  "slug": "tospansingletonle--8802c4cc706ece030025535f",
  "source": {
    "blob": "5fcb4432855e52781f08acce8e96afc667aa2f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1074,
    "line": 1055,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8802c4cc706ece030025535f26274fee697cd3db8669cbd2d803116195b360e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0dba0d2a051c8ca03f3ba9a03fb024bb96111e3c9f693b2297cae1f659ea636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSpanSingletonLE : M ≃ₗ[S] (R →L[R] M) where
  toFun := toSpanSingleton R
  invFun f := f 1
  map_add' := toSpanSingleton_add R
  map_smul' := toSpanSingleton_smul R
  left_inv x := by simp
  right_inv f := by ext; simp

end toSpanSingletonLE

section SMulRightₗ

variable {R S T M M₂ : Type*} [Semiring R] [Semiring S] [Semiring T] [Module R S]
  [AddCommMonoid M₂] [Module R M₂] [Module S M₂] [IsScalarTower R S M₂] [TopologicalSpace S]
  [TopologicalSpace M₂] [ContinuousSMul S M₂] [TopologicalSpace M] [AddCommMonoid M] [Module R M]
  [ContinuousAdd M₂] [Module T M₂] [ContinuousConstSMul T M₂] [SMulCommClass R T M₂]
  [SMulCommClass S T M₂]

/-- Given `c : E →L[R] S`, `c.smulRightₗ` is the linear map from `F` to `E →L[R] F`
sending `f` to `fun e => c e • f`. See also `ContinuousLinearMap.smulRightL`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fcb4432855e52781f08acce8e96afc667aa2f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
