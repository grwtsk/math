# hasSum_repr_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a947884-9c6b-dfd5-1678-7413dd2630a1",
  "kind": "theorem",
  "lexical_name": "hasSum_repr_symm",
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
  "slug": "hassum-repr-symm--17599d565a170a789f9e15f7",
  "source": {
    "blob": "e76c750c5aa131e73c2a50d1eb09ff7a7c3beaa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 460,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17599d565a170a789f9e15f7fcb5c3efdb219040ed709926a88b6824fb35eb24",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a947884-9c6b-dfd5-1678-7413dd2630a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasSum_repr_symm (b : HilbertBasis ι 𝕜 E) (f : ℓ²(ι, 𝕜)) :
    HasSum (fun i => f i • b i) (b.repr.symm f) := by
  suffices H : (fun i : ι => f i • b i) = fun b_1 : ι => b.repr.symm.toContinuousLinearEquiv <|
    (fun i : ι => lp.single 2 i (f i) (E := (fun _ : ι => 𝕜))) b_1
  · rw [H]
    have : HasSum (fun i : ι => lp.single 2 i (f i)) f := lp.hasSum_single ENNReal.two_ne_top f
    exact (↑b.repr.symm.toContinuousLinearEquiv : ℓ²(ι, 𝕜) →L[𝕜] E).hasSum this
  ext i
  apply b.repr.injective
  letI : NormedSpace 𝕜 (lp (fun _i : ι => 𝕜) 2) := by infer_instance
  have : lp.single (E := (fun _ : ι => 𝕜)) 2 i (f i * 1) = f i • lp.single 2 i 1 :=
    lp.single_smul (E := (fun _ : ι => 𝕜)) 2 i (1 : 𝕜) (f i)
  rw [mul_one] at this
  rw [LinearIsometryEquiv.map_smul, b.repr_self, ← this,
    LinearIsometryEquiv.coe_toContinuousLinearEquiv]
  exact (b.repr.apply_symm_apply (lp.single 2 i (f i))).symm
#align hilbert_basis.has_sum_repr_symm HilbertBasis.hasSum_repr_symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76c750c5aa131e73c2a50d1eb09ff7a7c3beaa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
