# Under.pushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a4bd8c9828fdc99228a9e37b00c2fe61224ad0fef2da4d768e1c0e88ee04628",
  "kind": "def",
  "lexical_name": "Under.pushout",
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
  "slug": "under-pushout--545a80d0cc03551aaadc6128",
  "source": {
    "blob": "392b56c18d793f83ee5f0ce5be48603b6c3d63fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 289,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:545a80d0cc03551aaadc6128f42fdb2c7a77b3e0f3db5f6dd772d4dc6251c0e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a4bd8c9828fdc99228a9e37b00c2fe61224ad0fef2da4d768e1c0e88ee04628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Under.pushout (f : X ⟶ Y) [P.HasPushoutsAlong f]
    [P.IsStableUnderCobaseChangeAlong f] [Q.IsStableUnderCobaseChange] :
    P.Under Q X ⥤ P.Under Q Y where
  obj A := Under.mk Q (Limits.pushout.inr A.hom f)
    (pushout_inr A.hom f A.prop)
  map {A B} g := Under.homMk (pushout.desc (g.right ≫ pushout.inl _ _)
    (pushout.inr _ _) (by simp [pushout.condition])) (by simp)
    (pushoutDesc_inl_inr _ (by simp) g.prop_hom_right)
  map_comp _ _ := by ext; apply pushout.hom_ext <;> simp

variable {P} {Q}

set_option backward.isDefEq.respectTransparency false in
set_option backward.defeqAttrib.useBackward true in
/-- `Under.pushout` commutes with composition. -/
@[simps! hom_app_right inv_app_right]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant68f04a3bcc747b5ee608da61a48a3879cf689fad5f7f89bc8bff47e6314108c4.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392b56c18d793f83ee5f0ce5be48603b6c3d63fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
