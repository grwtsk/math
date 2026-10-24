# Scheme.preservesColimit_yoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff6a1390e9d27f179d655670922f45ea852adf4c243501cc7c49cfc4c9bba6f3",
  "kind": "instance",
  "lexical_name": "Scheme.preservesColimit_yoneda",
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
  "slug": "scheme-preservescolimit-yoneda--5da05f5ec82f5e97bcfb3d2a",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1364,
    "line": 1336,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5da05f5ec82f5e97bcfb3d2a85c0a09aceb2a86fb74af39318cdfb47de015230",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff6a1390e9d27f179d655670922f45ea852adf4c243501cc7c49cfc4c9bba6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1336–1364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Scheme.preservesColimit_yoneda (D : I ⥤ Over S) [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f).left]
    [∀ (i : I), CompactSpace (D.obj i).left] [∀ (i : I), QuasiSeparatedSpace (D.obj i).left]
    (X : Over S) [LocallyOfFinitePresentation X.hom] :
    PreservesColimit D.op (yoneda.obj X) where
  preserves {c hc} := by
    rw [Limits.Types.isColimit_iff_coconeTypesIsColimit]
    have (i : I) : CompactSpace ((D ⋙ Over.forget S).obj i) := by dsimp; infer_instance
    have (i : I) : QuasiSeparatedSpace ((D ⋙ Over.forget S).obj i) := by dsimp; infer_instance
    have {i j : I} (f : i ⟶ j) : IsAffineHom ((D ⋙ Over.forget S).map f) := by
      dsimp; infer_instance
    refine ⟨⟨?_, ?_⟩⟩
    · rw [Functor.CoconeTypes.descColimitType_injective_iff_of_isFiltered']
      intro k g₁ g₂ hg
      obtain ⟨k, hik, heq⟩ := Scheme.exists_hom_comp_eq_comp_of_locallyOfFiniteType
        (D ⋙ Over.forget _) (.mk (fun _ ↦ (D.obj _).hom)) X.hom _ (isLimitOfPreserves _ hc.unop)
        g₁.left g₂.left (Over.w g₁).symm (Over.w g₂).symm congr($(hg).left)
      use .op k, hik.op
      cat_disch
    · intro g
      obtain ⟨k, u, h, h'⟩ := Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation
        (D ⋙ Over.forget _) (.mk (fun _ ↦ (D.obj _).hom)) X.hom _ (isLimitOfPreserves _ hc.unop)
        g.left (by ext; simp)
      use Functor.ιColimitType _ (.op k) (Over.homMk u)
      cat_disch

end LocallyOfFinitePresentation

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L1336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
