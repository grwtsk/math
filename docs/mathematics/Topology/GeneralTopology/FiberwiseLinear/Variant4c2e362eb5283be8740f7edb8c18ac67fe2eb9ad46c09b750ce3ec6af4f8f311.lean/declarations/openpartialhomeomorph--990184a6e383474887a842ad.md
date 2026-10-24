# openPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f5f62a3277eae12362948b0cd9ce88612bbfda8580c41c3b86fdd6788c206f1",
  "kind": "def",
  "lexical_name": "openPartialHomeomorph",
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
  "slug": "openpartialhomeomorph--990184a6e383474887a842ad",
  "source": {
    "blob": "2fedd9be284f48d9ee4554cd5d687b57eb15cf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:990184a6e383474887a842ad30a812966d04598ce3d6e4e970f63dd606e9dc2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f5f62a3277eae12362948b0cd9ce88612bbfda8580c41c3b86fdd6788c206f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openPartialHomeomorph (φ : B → F ≃L[𝕜] F) (hU : IsOpen U)
    (hφ : ContinuousOn (fun x => φ x : B → F →L[𝕜] F) U)
    (h2φ : ContinuousOn (fun x => (φ x).symm : B → F →L[𝕜] F) U) :
    OpenPartialHomeomorph (B × F) (B × F) where
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

/-- Compute the composition of two open partial homeomorphisms induced by fiberwise linear
equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fedd9be284f48d9ee4554cd5d687b57eb15cf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
