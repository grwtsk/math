# transContinuousLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d07c0684c37526a02345d20786e06b5121999ecd8fd3ef78a3e4194cae1020d",
  "kind": "def",
  "lexical_name": "transContinuousLinearEquiv",
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
  "slug": "transcontinuouslinearequiv--04dedd1d853bb474cebef912",
  "source": {
    "blob": "c257b2570657633197939c06452f7a4e7b1dd120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 399,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04dedd1d853bb474cebef912682d8b160cb8ff580755f7c5857552f7986b0d3c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d07c0684c37526a02345d20786e06b5121999ecd8fd3ef78a3e4194cae1020d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transContinuousLinearEquiv : ModelWithCorners 𝕜 E' H where
  toPartialEquiv := I.toPartialEquiv.trans e.toEquiv.toPartialEquiv
  source_eq := by simp
  convex_range' := by
    split_ifs with h
    · simp only [PartialEquiv.coe_trans, Equiv.toPartialEquiv_apply, LinearEquiv.coe_toEquiv,
      ContinuousLinearEquiv.coe_toLinearEquiv, toPartialEquiv_coe]
      rw [range_comp]
      let := h.rclike
      let := NormedSpace.restrictScalars ℝ 𝕜 E
      let := NormedSpace.restrictScalars ℝ 𝕜 E'
      let eR : E →L[ℝ] E' := ContinuousLinearMap.restrictScalars ℝ (e : E →L[𝕜] E')
      change Convex ℝ (⇑eR '' range ↑I)
      apply I.convex_range.linear_image
    · simp [range_eq_univ_of_not_isRCLikeNormedField I h, range_comp]
  nonempty_interior' := by
    simp only [PartialEquiv.coe_trans, Equiv.toPartialEquiv_apply, LinearEquiv.coe_toEquiv,
      ContinuousLinearEquiv.coe_toLinearEquiv, toPartialEquiv_coe, range_comp,
      ContinuousLinearEquiv.image_eq_preimage_symm]
    apply Nonempty.mono (preimage_interior_subset_interior_preimage e.symm.continuous)
    rw [← ContinuousLinearEquiv.image_eq_preimage_symm]
    simpa using I.nonempty_interior
  continuous_toFun := e.continuous.comp I.continuous
  continuous_invFun := I.continuous_symm.comp e.symm.continuous

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c257b2570657633197939c06452f7a4e7b1dd120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
