# Scheme.Modules.isIso_fromTildeΓ_of_isQuasicoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f5cc516c0e9c3ff9d006df1ea28e1cfd70a4edb4082496111e578e4b06e9fa5",
  "kind": "instance",
  "lexical_name": "Scheme.Modules.isIso_fromTildeΓ_of_isQuasicoherent",
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
  "slug": "scheme-modules-isiso-fromtilde-of-isquasicoherent--8769939c18a9cb0c11b799f0",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 850,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8769939c18a9cb0c11b799f090e97df1e02a07c0529757f5ba1830c66c44f612",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f5cc516c0e9c3ff9d006df1ea28e1cfd70a4edb4082496111e578e4b06e9fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Scheme.Modules.isIso_fromTildeΓ_of_isQuasicoherent (M : (Spec R).Modules)
    [M.IsQuasicoherent] : IsIso M.fromTildeΓ := by
  rw [isIso_fromTildeΓ_iff_isLocalizing, isLocalizing_iff_aux]
  obtain ⟨ι, U, pres, hU, hU'⟩ := M.exists_isOpenCover_presentation
  obtain ⟨s, hs⟩ := hU.exists_finite_of_compactSpace
  choose κ hκ a ha using fun i : s ↦
    PrimeSpectrum.isBasis_basic_opens.exists_iSup_eq_of_isCompact (U i) (hU' i).isCompact
  refine Aux.of_eq_iSup_basicOpen _ (fun i : Sigma κ ↦ a _ i.2) ?_ ?_
  · rw [IsOpenCover] at hs
    rw [eq_comm, iSup_sigma, ← hs]
    exact iSup_congr fun i ↦ (ha i).symm
  · intro i
    let t := (Spec R).homOfLE (U := PrimeSpectrum.basicOpen (a _ i.2)) (V := U i.1)
      (by rw [ha]; exact le_iSup_of_le _ le_rfl)
    let iso : restrictFunctor (U i.1).ι ⋙ restrictFunctor ((basicOpenIsoSpecAway _).inv ≫ t) ≅
        restrictFunctor (Spec.map (CommRingCat.ofHom <| algebraMap _ _)) :=
      (restrictFunctorComp _ _).symm ≪≫
        restrictFunctorCongr (by simp [t, basicOpenIsoSpecAway])
    let pres := SheafOfModules.Presentation.ofIsIso.{u, u, u} (iso.app M).hom <|
      presentationRestrict ((basicOpenIsoSpecAway _).inv ≫ t) (pres i.1)
    have : IsIso _ := isIso_fromTildeΓ_of_presentation (M.restrict _) pres
    rw [isIso_fromTildeΓ_iff_isLocalizing, isLocalizing_iff_aux] at this
    exact aux_basicOpen_of_aux_restrict _ _ this

set_option backward.isDefEq.respectTransparency false in
/-- An `𝒪_{Spec R}` module `M` is quasicoherent if and only if it is isomorphic to `Γ(M)^~`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
