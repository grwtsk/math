# partialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd83b89d2a0e8054a4c2f9e2996848357deae4daf65a177db5ee6158b5b4fe6c",
  "kind": "def",
  "lexical_name": "partialHomeomorph",
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
  "slug": "partialhomeomorph--45e20db81c025c52f6f6740a",
  "source": {
    "blob": "2f28b69cc1c51a2c2cad47e5969de84c560ea859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45e20db81c025c52f6f6740ac5d4e0e545eb937f31a017cb70da708d17d9111d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd83b89d2a0e8054a4c2f9e2996848357deae4daf65a177db5ee6158b5b4fe6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partialHomeomorph (φ : B → F ≃L[𝕜] F) (hU : IsOpen U)
    (hφ : ContinuousOn (fun x => φ x : B → F →L[𝕜] F) U)
    (h2φ : ContinuousOn (fun x => (φ x).symm : B → F →L[𝕜] F) U) :
    PartialHomeomorph (B × F) (B × F) where
  toFun x := (x.1, φ x.1 x.2)
  invFun x := (x.1, (φ x.1).symm x.2)
  source := U ×ˢ univ
  target := U ×ˢ univ
  map_source' _x hx := mk_mem_prod hx.1 (mem_univ _)
  map_target' _x hx := mk_mem_prod hx.1 (mem_univ _)
  left_inv' _ _ := Prod.ext rfl (ContinuousLinearEquiv.symm_apply_apply _ _)
  right_inv' _ _ := Prod.ext rfl (ContinuousLinearEquiv.apply_symm_apply _ _)
  open_source := hU.prod isOpen_univ
  open_target := hU.prod isOpen_univ
  continuousOn_toFun :=
    have : ContinuousOn (fun p : B × F => ((φ p.1 : F →L[𝕜] F), p.2)) (U ×ˢ univ) :=
      hφ.prodMap continuousOn_id
    continuousOn_fst.prodMk (isBoundedBilinearMap_apply.continuous.comp_continuousOn this)
  continuousOn_invFun :=
    have : ContinuousOn (fun p : B × F => (((φ p.1).symm : F →L[𝕜] F), p.2)) (U ×ˢ univ) :=
      h2φ.prodMap continuousOn_id
    continuousOn_fst.prodMk (isBoundedBilinearMap_apply.continuous.comp_continuousOn this)

/-- Compute the composition of two partial homeomorphisms induced by fiberwise linear
equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f28b69cc1c51a2c2cad47e5969de84c560ea859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
