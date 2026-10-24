# EuclideanSpace.instIsManifoldSphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68803ed5df1095b9881940460ac47c53e76a8df2f182ab053924ba8b41bc4c8e",
  "kind": "instance",
  "lexical_name": "EuclideanSpace.instIsManifoldSphere",
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
  "slug": "euclideanspace-instismanifoldsphere--8402d8119952bd46789aec37",
  "source": {
    "blob": "52a1e72eb4485c2e15934198c6dad7d3d2f431ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 379,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8402d8119952bd46789aec37f55bd241225135728cbbcfe86a6d6321611090bf",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68803ed5df1095b9881940460ac47c53e76a8df2f182ab053924ba8b41bc4c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance EuclideanSpace.instIsManifoldSphere
    {n : ℕ} [Fact (finrank ℝ E = n + 1)] :
    IsManifold (𝓡 n) ω (sphere (0 : E) 1) :=
  isManifold_of_contDiffOn (𝓡 n) ω (sphere (0 : E) 1)
    (by
      rintro _ _ ⟨v, rfl⟩ ⟨v', rfl⟩
      let U :=
        (-- Removed type ascription, and this helped for some reason with timeout issues?
            OrthonormalBasis.fromOrthogonalSpanSingleton (𝕜 := ℝ)
            n (ne_zero_of_mem_unit_sphere v)).repr
      let U' :=
        (-- Removed type ascription, and this helped for some reason with timeout issues?
            OrthonormalBasis.fromOrthogonalSpanSingleton (𝕜 := ℝ)
            n (ne_zero_of_mem_unit_sphere v')).repr
      have H₁ := U'.contDiff.comp_contDiffOn (contDiffOn_stereoToFun (n := ω))
      -- Porting note: need to help with implicit variables again
      have H₂ := (contDiff_stereoInvFunAux (m := ω) (v := v.val)|>.comp
        (ℝ ∙ (v : E))ᗮ.subtypeL.contDiff).comp U.symm.contDiff
      convert H₁.comp_inter (H₂.contDiffOn : ContDiffOn ℝ ω _ Set.univ) using 1
      -- -- squeezed from `ext, simp [sphere_ext_iff, stereographic'_symm_apply, real_inner_comm]`
      simp only [PartialHomeomorph.trans_toPartialEquiv, PartialHomeomorph.symm_toPartialEquiv,
        PartialEquiv.trans_source, PartialEquiv.symm_source, stereographic'_target,
        stereographic'_source]
      simp only [modelWithCornersSelf_coe, modelWithCornersSelf_coe_symm, Set.preimage_id,
        Set.range_id, Set.inter_univ, Set.univ_inter, Set.compl_singleton_eq, Set.preimage_setOf_eq]
      simp only [id, comp_apply, Submodule.subtypeL_apply, PartialHomeomorph.coe_coe_symm,
        innerSL_apply, Ne, sphere_ext_iff, real_inner_comm (v' : E)]
      rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a1e72eb4485c2e15934198c6dad7d3d2f431ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
