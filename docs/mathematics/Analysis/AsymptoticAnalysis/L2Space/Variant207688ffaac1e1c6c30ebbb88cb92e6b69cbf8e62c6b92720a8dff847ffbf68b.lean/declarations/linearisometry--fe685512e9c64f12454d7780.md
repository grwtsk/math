# linearIsometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a21566c6963e8bbeafb62df8f4c8740155b3d3d2ef55ac11137536563fed3ef",
  "kind": "def",
  "lexical_name": "linearIsometry",
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
  "slug": "linearisometry--fe685512e9c64f12454d7780",
  "source": {
    "blob": "e76c750c5aa131e73c2a50d1eb09ff7a7c3beaa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 210,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe685512e9c64f12454d7780a909aa6191bd24d775b72e39a454bdcd61cbea37",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a21566c6963e8bbeafb62df8f4c8740155b3d3d2ef55ac11137536563fed3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def linearIsometry : lp G 2 →ₗᵢ[𝕜] E where
  toFun f := ∑' i, V i (f i)
  map_add' f g := by
    simp only [tsum_add (hV.summable_of_lp f) (hV.summable_of_lp g), lp.coeFn_add, Pi.add_apply,
      LinearIsometry.map_add]
  map_smul' c f := by
    simpa only [LinearIsometry.map_smul, Pi.smul_apply, lp.coeFn_smul] using
      tsum_const_smul c (hV.summable_of_lp f)
  norm_map' f := by
    classical
      -- needed for lattice instance on `Finset ι`, for `Filter.atTop_neBot`
      have H : 0 < (2 : ℝ≥0∞).toReal := by norm_num
      suffices ‖∑' i : ι, V i (f i)‖ ^ (2 : ℝ≥0∞).toReal = ‖f‖ ^ (2 : ℝ≥0∞).toReal by
        exact Real.rpow_left_injOn H.ne' (norm_nonneg _) (norm_nonneg _) this
      refine' tendsto_nhds_unique _ (lp.hasSum_norm H f)
      convert (hV.summable_of_lp f).hasSum.norm.rpow_const (Or.inr H.le) using 1
      ext s
      exact_mod_cast (hV.norm_sum f s).symm
#align orthogonal_family.linear_isometry OrthogonalFamily.linearIsometry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76c750c5aa131e73c2a50d1eb09ff7a7c3beaa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
