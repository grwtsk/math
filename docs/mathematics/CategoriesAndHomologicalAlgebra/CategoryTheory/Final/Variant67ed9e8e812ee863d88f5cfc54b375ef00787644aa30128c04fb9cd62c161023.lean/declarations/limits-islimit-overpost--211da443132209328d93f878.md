# Limits.IsLimit.overPost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:694609bcc88393f3aa9ebb89564b75f5102ffc2f1586ec1f5b7addf9620b7cc6",
  "kind": "def",
  "lexical_name": "Limits.IsLimit.overPost",
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
  "slug": "limits-islimit-overpost--211da443132209328d93f878",
  "source": {
    "blob": "74a11bcbbb7a57c65121d2298588da40b6e9e79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1243,
    "line": 1228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:211da443132209328d93f87814511615a895333a4eacc00052fbf22f95e5907e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:694609bcc88393f3aa9ebb89564b75f5102ffc2f1586ec1f5b7addf9620b7cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1228–1243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Limits.IsLimit.overPost {c : Cone D} (hc : IsLimit c) (j : J)
    [(CategoryTheory.Over.forget j).Initial] : IsLimit (c.overPost j) := by
  haveI : Nonempty (Over j) := ⟨Over.mk (𝟙 j)⟩
  letI c'' := Over.liftCone (Over.forget j ⋙ D) (X := D.obj j)
    (Functor.whiskerRight (Over.forgetCocone j).ι D ≫ (Functor.constComp _ _ _).hom)
    (c.whisker (CategoryTheory.Over.forget j)) (c.π.app j) (by cat_disch)
  letI hc'' : IsLimit c'' :=
    Over.isLimitLiftCone _ _ _ _ _ <| (Functor.Initial.isLimitWhiskerEquiv _ _).symm hc
  refine IsLimit.equivOfNatIsoOfIso ?_ _ _ ?_ hc''
  · exact NatIso.ofComponents (fun k ↦ CategoryTheory.Over.isoMk (Iso.refl _))
  · exact Cone.ext (Iso.refl _)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- If `Over j ⥤ J` is final, restricting a colimit cocone to the diagram below `j`,
preserves the limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean#L1228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a11bcbbb7a57c65121d2298588da40b6e9e79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
