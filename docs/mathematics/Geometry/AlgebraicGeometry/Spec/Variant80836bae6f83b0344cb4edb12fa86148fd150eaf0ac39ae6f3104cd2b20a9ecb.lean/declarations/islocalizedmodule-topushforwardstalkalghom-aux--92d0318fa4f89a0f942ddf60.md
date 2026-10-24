# isLocalizedModule_toPushforwardStalkAlgHom_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6290c3d4-06d1-6cb0-9fc5-9546cceecfe0",
  "kind": "theorem",
  "lexical_name": "isLocalizedModule_toPushforwardStalkAlgHom_aux",
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
  "slug": "islocalizedmodule-topushforwardstalkalghom-aux--92d0318fa4f89a0f942ddf60",
  "source": {
    "blob": "4d8023ddae09cd7bb7e908b9b65af9a818c1ee75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 413,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92d0318fa4f89a0f942ddf60d67e7af42936df169ecede3ab013bed9081ad08b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6290c3d4-06d1-6cb0-9fc5-9546cceecfe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalizedModule_toPushforwardStalkAlgHom_aux (y) :
    ∃ x : S × p.asIdeal.primeCompl, x.2 • y = toPushforwardStalkAlgHom R S p x.1 := by
  obtain ⟨U, hp, s, e⟩ := TopCat.Presheaf.germ_exist
    -- Porting note : originally the first variable does not need to be explicit
    (Spec.topMap (algebraMap ↑R ↑S) _* (structureSheaf S).val) _ y
  obtain ⟨_, ⟨r, rfl⟩, hpr : p ∈ PrimeSpectrum.basicOpen r, hrU : PrimeSpectrum.basicOpen r ≤ U⟩ :=
    PrimeSpectrum.isTopologicalBasis_basic_opens.exists_subset_of_mem_open (show p ∈ U from hp) U.2
  change PrimeSpectrum.basicOpen r ≤ U at hrU
  replace e :=
    ((Spec.topMap (algebraMap R S) _* (structureSheaf S).1).germ_res_apply (homOfLE hrU)
          ⟨p, hpr⟩ _).trans e
  set s' := (Spec.topMap (algebraMap R S) _* (structureSheaf S).1).map (homOfLE hrU).op s with h
  replace e : ((Spec.topMap (algebraMap R S) _* (structureSheaf S).val).germ ⟨p, hpr⟩) s' = y
  · rw [h]; exact e
  clear_value s'; clear! U
  obtain ⟨⟨s, ⟨_, n, rfl⟩⟩, hsn⟩ :=
    @IsLocalization.surj _ _ _ _ _ _
      (StructureSheaf.IsLocalization.to_basicOpen S <| algebraMap R S r) s'
  refine' ⟨⟨s, ⟨r, hpr⟩ ^ n⟩, _⟩
  rw [Submonoid.smul_def, Algebra.smul_def, algebraMap_pushforward_stalk, toPushforwardStalk,
    comp_apply, comp_apply]
  iterate 2
    erw [← (Spec.topMap (algebraMap R S) _* (structureSheaf S).1).germ_res_apply (homOfLE le_top)
      ⟨p, hpr⟩]
  rw [← e]
  -- Porting note : without this `change`, Lean doesn't know how to rewrite `map_mul`
  let f := TopCat.Presheaf.germ (Spec.topMap (algebraMap R S) _* (structureSheaf S).val) ⟨p, hpr⟩
  change f _ * f _ = f _
  rw [← map_mul, mul_comm]
  dsimp only [Subtype.coe_mk] at hsn
  rw [← map_pow (algebraMap R S)] at hsn
  congr 1
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.structure_sheaf.is_localized_module_to_pushforward_stalk_alg_hom_aux AlgebraicGeometry.StructureSheaf.isLocalizedModule_toPushforwardStalkAlgHom_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d8023ddae09cd7bb7e908b9b65af9a818c1ee75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
