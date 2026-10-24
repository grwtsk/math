# isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c30e2e0a-0809-9db5-ae4a-b15474b9a175",
  "kind": "theorem",
  "lexical_name": "isStableUnderBaseChange",
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
  "slug": "isstableunderbasechange--5d8402bd4ffd100a67aca246",
  "source": {
    "blob": "ef34b06cff60c634df9ec888bdb06ad41b241450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 629,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8402bd4ffd100a67aca2469ab41e4ca9520e400348515b808a8e1c0c36727f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c30e2e0a-0809-9db5-ae4a-b15474b9a175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStableUnderBaseChange (hP' : Q.IsStableUnderBaseChange) :
    P.IsStableUnderBaseChange :=
  MorphismProperty.IsStableUnderBaseChange.mk'
    (fun X Y S f g _ H => by
      rw [IsLocalAtTarget.iff_of_openCover (P := P) (S.affineCover.pullbackCover f)]
      intro i
      let e : pullback (pullback.fst f g) ((S.affineCover.pullbackCover f).map i) ≅
          _ := by
        refine pullbackSymmetry _ _ ≪≫ pullbackRightPullbackFstIso f g _ ≪≫ ?_ ≪≫
          (pullbackRightPullbackFstIso (S.affineCover.map i) g
            (pullback.snd f (S.affineCover.map i))).symm
        exact asIso
          (pullback.map _ _ _ _ (𝟙 _) (𝟙 _) (𝟙 _) (by simpa using pullback.condition) (by simp))
      have : e.hom ≫ pullback.fst _ _ =
          (S.affineCover.pullbackCover f).pullbackHom (pullback.fst _ _) i := by
        simp [e, Scheme.Cover.pullbackHom]
      rw [← this, P.cancel_left_of_respectsIso]
      apply HasAffineProperty.pullback_fst_of_right hP'
      letI := isLocal_affineProperty P
      rw [← pullbackSymmetry_hom_comp_snd, Q.cancel_left_of_respectsIso]
      apply of_isPullback (.of_hasPullback _ _) H)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef34b06cff60c634df9ec888bdb06ad41b241450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
