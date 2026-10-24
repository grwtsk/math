# Scheme.Modules.exists_isOpenCover_presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eae1ff9-28e8-dbcb-bbae-8d45556fe913",
  "kind": "lemma",
  "lexical_name": "Scheme.Modules.exists_isOpenCover_presentation",
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
  "slug": "scheme-modules-exists-isopencover-presentation--a6b5fe9ca7f3f26eeaf934c6",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 600,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b5fe9ca7f3f26eeaf934c69cb76da3f2734b43d8fba30f0c92684e8676e86a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eae1ff9-28e8-dbcb-bbae-8d45556fe913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Modules.exists_isOpenCover_presentation {X : Scheme.{u}} (M : X.Modules)
    [M.IsQuasicoherent] :
    ∃ (ι : Type u) (U : ι → X.Opens) (_ : ∀ i, (M.restrict (U i).ι).Presentation),
      IsOpenCover U ∧ (∀ i, IsAffineOpen (U i)) := by
  obtain ⟨⟨I, W, cov, pres⟩⟩ := SheafOfModules.IsQuasicoherent.nonempty_quasicoherentData (M := M)
  choose κ hsub heq using fun i ↦ Opens.isBasis_iff_cover.mp X.isBasis_affineOpens (W i)
  refine ⟨Σ (i : I), κ i, fun j ↦ j.2, fun i ↦ ?_, ?_, ?_⟩
  · let u := X.homOfLE (U := i.2) (V := W i.1) (by simp [heq, le_sSup])
    have : PreservesColimitsOfSize.{u, u} (restrictFunctor u) := inferInstance
    let F := (overEquiv (W i.1)).functor ⋙ restrictFunctor u
    let iso : SheafOfModules.overFunctor X.ringCatSheaf _ ⋙ F ≅ restrictFunctor
      (Scheme.Opens.ι i.2.1) := (Functor.associator _ _ _).symm ≪≫
        Functor.isoWhiskerRight (Scheme.Modules.overFunctorEquiv _) _ ≪≫
        (restrictFunctorComp _ _).symm ≪≫ (restrictFunctorCongr (by simp [u]))
    exact SheafOfModules.Presentation.ofIsIso.{u, u, u} (iso.app M).hom <|
      (pres i.1).map F (Scheme.Modules.restrictUnitIso _).symm
  · rw [Opens.coversTop_iff, IsOpenCover] at cov
    rw [IsOpenCover, iSup_sigma, ← cov]
    refine iSup_congr fun i ↦ ?_
    rw [heq i, sSup_eq_iSup']
  · intro j
    exact hsub _ j.2.2

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
