# germ_stalkClosedPointTo_Spec_fromSpecStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:895a22fb-6cc0-c482-6f47-c01740b1abb5",
  "kind": "lemma",
  "lexical_name": "germ_stalkClosedPointTo_Spec_fromSpecStalk",
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
  "slug": "germ-stalkclosedpointto-spec-fromspecstalk--2b11a0a46f75e473f2a14e39",
  "source": {
    "blob": "35e8e98b1de8d9c695a7cc513e2d966b9ca200dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 335,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b11a0a46f75e473f2a14e39ef5eb20966d5cf57cfb3168d8231915410c9aeab",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:895a22fb-6cc0-c482-6f47-c01740b1abb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma germ_stalkClosedPointTo_Spec_fromSpecStalk
    {x : X} (f : X.presheaf.stalk x ⟶ R) [IsLocalHom f.hom] (U : Opens X) (hU) :
    X.presheaf.germ U _ hU ≫ stalkClosedPointTo (Spec.map f ≫ X.fromSpecStalk x) =
      X.presheaf.germ U x (by simpa using hU) ≫ f := by
  have : (Spec.map f ≫ X.fromSpecStalk x) (closedPoint R) = x := by
    rw [Hom.comp_apply, Spec_closedPoint, fromSpecStalk_closedPoint]
  have : x ∈ U := this ▸ hU
  simp only [germ_stalkClosedPointTo, Hom.comp_app,
    fromSpecStalk_app (X := X) (x := x) this, Category.assoc, Iso.trans_hom, Functor.mapIso_hom,
      (Spec.map f).app_eq_appLE, Hom.appLE_map_assoc, Hom.map_appLE_assoc]
  simp_rw [← Opens.map_top (Spec.map f).base]
  rw [← (Spec.map f).app_eq_appLE, ΓSpecIso_naturality, Iso.inv_hom_id_assoc]

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e8e98b1de8d9c695a7cc513e2d966b9ca200dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
