# mahlerEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0bb09b208d1a562e0ee0c57f1c42e7d084b07de149b325e673aac9b9b9962b1",
  "kind": "def",
  "lexical_name": "mahlerEquiv",
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
  "slug": "mahlerequiv--709d18cc1f08f6867b6e6b7d",
  "source": {
    "blob": "c1eea98c66d3488a3dce3b861ea4e06b85fdf325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 357,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:709d18cc1f08f6867b6e6b7d158fc2c8ad89edfc2499eccf56fc304c62b51d39",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0bb09b208d1a562e0ee0c57f1c42e7d084b07de149b325e673aac9b9b9962b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mahlerEquiv : C(ℤ_[p], E) ≃ₗᵢ[ℤ_[p]] C₀(ℕ, E) where
  toFun f := ⟨⟨(Δ_[1]^[·] f 0), continuous_of_discreteTopology⟩,
    cocompact_eq_atTop (α := ℕ) ▸ fwdDiff_tendsto_zero f⟩
  invFun a := mahlerSeries a
  map_add' f g := by
    ext x
    simp only [ContinuousMap.coe_add, fwdDiff_iter_add, Pi.add_apply,
      ZeroAtInftyContinuousMap.coe_mk, ZeroAtInftyContinuousMap.coe_add]
  map_smul' r f := by
    ext n
    simp only [ContinuousMap.coe_smul, RingHom.id_apply, ZeroAtInftyContinuousMap.coe_mk,
      ZeroAtInftyContinuousMap.coe_smul, Pi.smul_apply, fwdDiff_iter_const_smul]
  left_inv f := (hasSum_mahler f).tsum_eq
  right_inv a := ZeroAtInftyContinuousMap.ext <|
    fwdDiff_mahlerSeries (cocompact_eq_atTop (α := ℕ) ▸ zero_at_infty a)
  norm_map' f := by
    simp only [LinearEquiv.coe_mk, ← ZeroAtInftyContinuousMap.norm_toBCF_eq_norm]
    apply le_antisymm
    · exact BoundedContinuousFunction.norm_le_of_nonempty.mpr
        (fun n ↦ norm_fwdDiff_iter_apply_le 1 f 0 n)
    · rw [← (hasSum_mahler f).tsum_eq]
      refine (norm_tsum_le _).trans (ciSup_le fun n ↦ ?_)
      refine le_trans (le_of_eq ?_) (BoundedContinuousFunction.norm_coe_le_norm _ n)
      simp [(hasSum_mahler f).tsum_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1eea98c66d3488a3dce3b861ea4e06b85fdf325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
