# Over.pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76c70425ffd6d41ecc125733c9b80a2ac13f30c927c82947b37ebf1b18f520cb",
  "kind": "def",
  "lexical_name": "Over.pullback",
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
  "slug": "over-pullback--55e7e6c18583cf6b413494f9",
  "source": {
    "blob": "4de10ebc53319293f881da605a718f9f11021c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55e7e6c18583cf6b413494f9569d7e4d83b3d4a3ae0fd805aa9df00093eb08d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76c70425ffd6d41ecc125733c9b80a2ac13f30c927c82947b37ebf1b18f520cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Over.pullback (f : X ⟶ Y) [P.HasPullbacksAlong f]
    [P.IsStableUnderBaseChangeAlong f] [Q.IsStableUnderBaseChange] :
    P.Over Q Y ⥤ P.Over Q X where
  obj A := Over.mk Q (Limits.pullback.snd A.hom f)
    (pullback_snd A.hom f A.prop)
  map {A B} g := Over.homMk (pullback.lift (pullback.fst A.hom f ≫ g.left)
    (pullback.snd A.hom f) (by simp [pullback.condition])) (by simp)
    (pullbackLift_fst_snd _ _ g.prop_hom_left)

variable {P} {Q}

set_option backward.isDefEq.respectTransparency false in
set_option backward.defeqAttrib.useBackward true in
/-- `Over.pullback` commutes with composition. -/
@[simps! hom_app_left inv_app_left]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4de10ebc53319293f881da605a718f9f11021c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
