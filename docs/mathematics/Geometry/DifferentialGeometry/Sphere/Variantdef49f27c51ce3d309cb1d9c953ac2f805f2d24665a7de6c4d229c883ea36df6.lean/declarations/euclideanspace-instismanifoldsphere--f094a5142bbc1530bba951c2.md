# EuclideanSpace.instIsManifoldSphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d08750150e013d3d9ca7d33b65ece8b1b708f77f39bac310164e60cf4fdbd0e6",
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
  "slug": "euclideanspace-instismanifoldsphere--f094a5142bbc1530bba951c2",
  "source": {
    "blob": "c15a96b00afe9f36e5147a70b431ab25b64fc15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 395,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f094a5142bbc1530bba951c2c557ef21532a7e301f0eb5e4d7e640e8a73e781b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d08750150e013d3d9ca7d33b65ece8b1b708f77f39bac310164e60cf4fdbd0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–426.

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
      have H₂ := (contDiff_stereoInvFunAux (m := ω) (v := v.val) |>.comp
        (ℝ ∙ (v : E))ᗮ.subtypeL.contDiff).comp U.symm.contDiff
      convert! H₁.comp_inter (H₂.contDiffOn : ContDiffOn ℝ ω _ Set.univ) using 1
        -- -- squeezed from `ext, simp [sphere_ext_iff, stereographic'_symm_apply, real_inner_comm]`

      -- -- squeezed from `ext, simp [sphere_ext_iff, stereographic'_symm_apply, real_inner_comm]`
      simp only [OpenPartialHomeomorph.trans_toPartialEquiv,
        OpenPartialHomeomorph.symm_toPartialEquiv, PartialEquiv.trans_source,
        PartialEquiv.symm_source, stereographic'_target, stereographic'_source]
      simp only [modelWithCornersSelf_coe, modelWithCornersSelf_coe_symm,
        Set.range_id, Set.inter_univ, Set.univ_inter, Set.compl_singleton_eq,
        Set.preimage_ofPred_eq]
      simp only [id, comp_apply, OpenPartialHomeomorph.coe_toPartialEquiv_symm,
        innerSL_apply_apply, Ne, sphere_ext_iff, real_inner_comm (v' : E)]
      rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c15a96b00afe9f36e5147a70b431ab25b64fc15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
