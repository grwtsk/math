# glueData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f54435d44297e7ceb63220e7d382725d246625a03ecbda29be2126329f581e4",
  "kind": "def",
  "lexical_name": "glueData",
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
  "slug": "gluedata--f35a85afd6a1bd82c2062306",
  "source": {
    "blob": "807d549eba1105b449311e8bb91afdf0b6f6dd1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 278,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f35a85afd6a1bd82c2062306656a30524edde41cfb30b5ad754a7de601617753",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f54435d44297e7ceb63220e7d382725d246625a03ecbda29be2126329f581e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def glueData : Scheme.GlueData where
  J := X.affineOpens
  U := I.glueDataObj
  V ij := I.glueDataObjPullback ij.1 ij.2
  f i j := pullback.fst _ _
  f_id i :=
    have : IsIso (X.homOfLE (inf_le_left (a := i.1) (b := i.1))) :=
      ⟨X.homOfLE (by simp), by simp, by simp⟩
    inferInstance
  t i j := I.glueDataT i j
  t_id i := by
    apply pullback.hom_ext
    · rw [← cancel_mono (glueDataObjι _ _)]
      simp [pullback.condition]
    · simp
  t' i j k := pullback.lift
    (I.glueDataT'Aux _ _ _ _ inf_le_right) (I.glueDataT'Aux _ _ _ _ inf_le_left) (by simp)
  t_fac i j k := by
    apply pullback.hom_ext
    · rw [← cancel_mono (glueDataObjι _ _)]
      simp
    · rw [← cancel_mono (Scheme.Opens.ι _)]
      simp [pullback.condition_assoc]
  cocycle i j k := by
    dsimp only
    apply pullback.hom_ext
    · apply pullback.hom_ext
      · rw [← cancel_mono (glueDataObjι _ _), ← cancel_mono (Scheme.Opens.ι _)]
        simp only [Category.assoc, limit.lift_π, PullbackCone.mk_π_app,
          glueDataT'Aux_fst, limit.lift_π_assoc, cospan_left, glueDataT_fst, Scheme.homOfLE_ι,
          glueDataT'Aux_snd_ι, glueDataT'Aux_fst_assoc, glueDataT_fst_assoc, Category.id_comp]
        rw [pullback.condition_assoc (f := I.glueDataObjι i)]
        simp
      · rw [← cancel_mono (Scheme.Opens.ι _)]
        simp [pullback.condition_assoc]
    · apply pullback.hom_ext
      · rw [← cancel_mono (glueDataObjι _ _), ← cancel_mono (Scheme.Opens.ι _)]
        simp only [Category.assoc, limit.lift_π, PullbackCone.mk_π_app,
          glueDataT'Aux_fst, limit.lift_π_assoc, cospan_left, glueDataT_fst, Scheme.homOfLE_ι,
          glueDataT'Aux_snd_ι, glueDataT'Aux_fst_assoc, glueDataT_fst_assoc, Category.id_comp]
        rw [← pullback.condition_assoc, pullback.condition_assoc (f := I.glueDataObjι i),
          X.homOfLE_ι]
      · rw [← cancel_mono (Scheme.Opens.ι _)]
        simp only [Category.assoc, limit.lift_π, PullbackCone.mk_π_app,
          glueDataT'Aux_snd_ι, limit.lift_π_assoc, cospan_left, glueDataT'Aux_fst_assoc,
          glueDataT_fst_assoc, Scheme.homOfLE_ι, Category.id_comp]
        rw [pullback.condition_assoc, pullback.condition_assoc, X.homOfLE_ι]
  f_open i j := inferInstance

set_option backward.defeqAttrib.useBackward true in
/-- (Implementation) The map from `Spec(𝒪ₓ/I)` to `X`. See `IdealSheafData.subschemeι` instead. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807d549eba1105b449311e8bb91afdf0b6f6dd1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
