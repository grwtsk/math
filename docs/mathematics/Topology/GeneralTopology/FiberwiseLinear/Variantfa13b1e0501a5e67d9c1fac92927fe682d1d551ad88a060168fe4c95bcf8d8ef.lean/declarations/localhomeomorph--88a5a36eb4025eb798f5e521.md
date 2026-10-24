# localHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ce0c0779953342a8a437ac2cd3efd60ff23363263cf677dee40c8527fb2afb0",
  "kind": "def",
  "lexical_name": "localHomeomorph",
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
  "slug": "localhomeomorph--88a5a36eb4025eb798f5e521",
  "source": {
    "blob": "809580bde548bbb432f34084fe214a1b745c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88a5a36eb4025eb798f5e5213a8237dbfa8c517798867d772bf156b1f032a905",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ce0c0779953342a8a437ac2cd3efd60ff23363263cf677dee40c8527fb2afb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localHomeomorph (φ : B → F ≃L[𝕜] F) (hU : IsOpen U)
    (hφ : ContinuousOn (fun x => φ x : B → F →L[𝕜] F) U)
    (h2φ : ContinuousOn (fun x => (φ x).symm : B → F →L[𝕜] F) U) :
    LocalHomeomorph (B × F) (B × F) where
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
  continuous_toFun :=
    have : ContinuousOn (fun p : B × F => ((φ p.1 : F →L[𝕜] F), p.2)) (U ×ˢ univ) :=
      hφ.prod_map continuousOn_id
    continuousOn_fst.prod (isBoundedBilinearMapApply.continuous.comp_continuousOn this)
  continuous_invFun :=
    haveI : ContinuousOn (fun p : B × F => (((φ p.1).symm : F →L[𝕜] F), p.2)) (U ×ˢ univ) :=
      h2φ.prod_map continuousOn_id
    continuousOn_fst.prod (isBoundedBilinearMapApply.continuous.comp_continuousOn this)
#align fiberwise_linear.local_homeomorph FiberwiseLinear.localHomeomorph

/-- Compute the composition of two local homeomorphisms induced by fiberwise linear
equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809580bde548bbb432f34084fe214a1b745c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
