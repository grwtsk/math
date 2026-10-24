# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dc62a6b2babbc5a0f61996eff4fe87fd7c1dab59149156e7adc5880bd297ad9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bceca10b4ac3dbf9dff2c16e",
  "source": {
    "blob": "7756ee06d680a2cb53d78d4399be69426dfe4785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 158,
    "path": "GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bceca10b4ac3dbf9dff2c16e11f3ded779b6e267e49f36167bcc1370ee1ef74a",
  "verification": {
    "reference": "docs/verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dc62a6b2babbc5a0f61996eff4fe87fd7c1dab59149156e7adc5880bd297ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsRiemannianManifold 𝓘(ℝ, F) F := by
  refine ⟨fun x y ↦ le_antisymm ?_ ?_⟩
  · simp only [riemannianEDist, le_iInf_iff]
    intro γ hγ
    let e : ℝ → F := γ ∘ (projIcc 0 1 zero_le_one)
    have D : ContDiffOn ℝ 1 e (Icc 0 1) :=
      contMDiffOn_iff_contDiffOn.mp (hγ.comp_contMDiffOn contMDiffOn_projIcc)
    rw [lintegral_norm_mfderiv_Icc_eq_pathELength_projIcc,
      pathELength_eq_lintegral_mfderivWithin_Icc]
    simp only [mfderivWithin_eq_fderivWithin, enorm_tangentSpace_vectorSpace]
    conv_lhs =>
      rw [edist_comm, edist_eq_enorm_sub, show x = e 0 by simp [e], show y = e 1 by simp [e]]
    exact (enorm_sub_le_lintegral_derivWithin_Icc_of_contDiffOn_Icc D zero_le_one).trans_eq rfl
  · let γ := ContinuousAffineMap.lineMap (R := ℝ) x y
    have : riemannianEDist 𝓘(ℝ, F) x y ≤ pathELength 𝓘(ℝ, F) γ 0 1 := by
      apply riemannianEDist_le_pathELength ?_ (by simp [γ, ContinuousAffineMap.coe_lineMap_eq])
        (by simp [γ, ContinuousAffineMap.coe_lineMap_eq]) zero_le_one
      rw [contMDiffOn_iff_contDiffOn]
      exact γ.contDiff.contDiffOn
    apply this.trans_eq
    rw [pathELength_eq_lintegral_mfderivWithin_Icc]
    simp only [mfderivWithin_eq_fderivWithin, enorm_tangentSpace_vectorSpace]
    exact lintegral_fderiv_lineMap_eq_edist

end

section

/-!
### Constructing a distance from a Riemannian structure

Let `M` be a real manifold with a Riemannian structure. We construct the associated distance and
show that the associated topology coincides with the pre-existing topology. Therefore, one may
endow `M` with an emetric space structure, called `EMetricSpace.ofRiemannianMetric`.
Moreover, we show that in this case the resulting emetric space satisfies the predicate
`IsRiemannianManifold I M`.

Showing that the distance topology coincides with the pre-existing topology is not trivial. The
two inclusions are proved respectively in `eventually_riemannianEDist_lt` and
`setOfPred_riemannianEDist_lt_subset_nhds`.

For the first one, we have to show that points which are close for the topology are at small
distance. For this, we use the path between the two points which is the pullback of the segment
in the extended chart, and argue that it is short because the images are close in the extended
chart.

For the second one, we have to show that any neighborhood of `x` contains all the points `y`
with `riemannianEDist x y < c` for some `c > 0`. For this, we argue that a short path from `x`
to `y` remains short in the extended chart, and therefore it doesn't have the time to exit
the image of the neighborhood in the extended chart.
-/

open Manifold Metric
open scoped NNReal

variable [RiemannianBundle (fun (x : M) ↦ TangentSpace% x)]
  [IsManifold I 1 M] [IsContinuousRiemannianBundle E (fun (x : M) ↦ TangentSpace% x)]

/-- Register on the tangent space to a normed vector space the same `NormedAddCommGroup` structure
as in the vector space.

Should not be a global instance, as it does not coincide definitionally with the Riemannian
structure for inner product spaces, but can be activated locally. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7756ee06d680a2cb53d78d4399be69426dfe4785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
