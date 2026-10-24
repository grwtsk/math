# of_source_openCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:696fede2-486b-c5c4-40e9-891921dc6e71",
  "kind": "theorem",
  "lexical_name": "of_source_openCover",
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
  "slug": "of-source-opencover--d51bca8a0c074ed415387ee8",
  "source": {
    "blob": "26f03c4e4fd6f07813b86af00e58b6663b93f91a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 319,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51bca8a0c074ed415387ee87eb8ba6fe655050550e7f5ceb0b5156b782dd259",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:696fede2-486b-c5c4-40e9-891921dc6e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_source_openCover [IsAffine Y]
    (𝒰 : X.OpenCover) [∀ i, IsAffine (𝒰.obj i)] (H : ∀ i, Q ((𝒰.map i ≫ f).appTop.hom)) :
    P f := by
  rw [HasAffineProperty.iff_of_isAffine (P := P)]
  intro U
  let S i : X.affineOpens := ⟨_, isAffineOpen_opensRange (𝒰.map i)⟩
  induction U using of_affine_open_cover S 𝒰.iSup_opensRange with
  | basicOpen U r H =>
    simp_rw [Scheme.affineBasicOpen_coe,
      ← f.appLE_map (U := ⊤) le_top (homOfLE (X.basicOpen_le r)).op]
    have := U.2.isLocalization_basicOpen r
    exact (isLocal_ringHomProperty P).StableUnderCompositionWithLocalizationAwayTarget _ r _ H
  | openCover U s hs H =>
    apply (isLocal_ringHomProperty P).ofLocalizationSpanTarget.ofIsLocalization
      (isLocal_ringHomProperty P).respectsIso _ _ hs
    rintro r
    refine ⟨_, _, _, IsAffineOpen.isLocalization_basicOpen U.2 r, ?_⟩
    rw [RingHom.algebraMap_toAlgebra, ← CommRingCat.hom_comp, Scheme.Hom.appLE_map]
    exact H r
  | hU i =>
    specialize H i
    rw [← (isLocal_ringHomProperty P).respectsIso.cancel_right_isIso _
      ((IsOpenImmersion.isoOfRangeEq (𝒰.map i) (S i).1.ι
      Subtype.range_coe.symm).inv.app _), ← CommRingCat.hom_comp, ← Scheme.comp_appTop,
      IsOpenImmersion.isoOfRangeEq_inv_fac_assoc, Scheme.comp_appTop,
      Scheme.Opens.ι_appTop, Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map] at H
    exact (f.appLE_congr _ rfl (by simp) (fun f => Q f.hom)).mp H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f03c4e4fd6f07813b86af00e58b6663b93f91a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
