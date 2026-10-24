# forget_createsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ee422e24d5b7700abdfe37835a40517d9c847c1cdf0237608c9e3fb91017e27",
  "kind": "instance",
  "lexical_name": "forget_createsLimit",
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
  "slug": "forget-createslimit--d0c599c541ad9782369e9e1c",
  "source": {
    "blob": "1c3af4a0562c2e9805058ade191b7dbb9a99fceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 154,
    "path": "GRWTSK/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0c599c541ad9782369e9e1cd4f02dd99638ae11205726ce72c1b5494b8bee7d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ee422e24d5b7700abdfe37835a40517d9c847c1cdf0237608c9e3fb91017e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forget_createsLimit :
    CreatesLimit F (forget MonCat.{u}) := by
  apply createsLimitOfReflectsIso
  intro c t
  have : Small.{u} (Functor.sections (F ⋙ forget MonCat)) :=
    (Types.hasLimit_iff_small_sections _).mp (HasLimit.mk { cone := c, isLimit := t })
  refine LiftsToLimit.mk (LiftableCone.mk
    { pt := ↧(Types.Small.limitCone (F ⋙ forget MonCat)).pt,
      π := NatTrans.mk
        (fun j => ofHom (limitπMonoidHom F j))
        (MonCat.HasLimits.limitCone F).π.naturality }
    (Cone.ext
      ((Types.isLimitEquivSections t).trans (equivShrink _)).symm.toIso
      (fun _ ↦ ?_))) ?_
  · ext
    simp [Types.isLimitEquivSections]
    simp [← CategoryTheory.comp_apply]
    rfl
  refine IsLimit.ofFaithful (forget MonCat.{u}) (Types.Small.limitConeIsLimit.{v, u} _) ?_ ?_
  · intro _
    refine ofHom
      { toFun := (Types.Small.limitConeIsLimit.{v, u} _).lift ((forget MonCat).mapCone _),
        map_one' := by simp; rfl, map_mul' := ?_ }
    · intro x y
      simp only [Types.Small.limitCone_pt, Functor.comp_obj, Functor.mapCone_pt,
        Types.Small.limitConeIsLimit_lift, Functor.const_obj_obj, Functor.mapCone_π_app,
        ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk, map_mul]
      rw [← equivShrink_mul]
      rfl
  · exact fun _ ↦ rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3af4a0562c2e9805058ade191b7dbb9a99fceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
