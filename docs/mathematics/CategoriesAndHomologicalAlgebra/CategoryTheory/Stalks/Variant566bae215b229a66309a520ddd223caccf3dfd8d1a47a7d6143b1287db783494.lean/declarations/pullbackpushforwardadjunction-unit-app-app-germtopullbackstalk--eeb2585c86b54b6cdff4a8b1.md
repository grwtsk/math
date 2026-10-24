# pullbackPushforwardAdjunction_unit_app_app_germToPullbackStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ba3cc5d-c249-c48d-5dd1-72ca50b1470f",
  "kind": "lemma",
  "lexical_name": "pullbackPushforwardAdjunction_unit_app_app_germToPullbackStalk",
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
  "slug": "pullbackpushforwardadjunction-unit-app-app-germtopullbackstalk--eeb2585c86b54b6cdff4a8b1",
  "source": {
    "blob": "0ec33ddcff63ecf8702fa7553958511a1dd4d021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 309,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeb2585c86b54b6cdff4a8b1fbd0f14ff438d9561264917a42b77846e1bf7af8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ba3cc5d-c249-c48d-5dd1-72ca50b1470f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackPushforwardAdjunction_unit_app_app_germToPullbackStalk
    (f : X ⟶ Y) (F : Y.Presheaf C) (V : (Opens Y)ᵒᵖ) (x : X) (hx : f x ∈ V.unop) :
    ((pullbackPushforwardAdjunction C f).unit.app F).app V ≫ germToPullbackStalk C f F _ x hx =
      F.germ _ (f x) hx := by
  simpa using pullbackPushforwardAdjunction_unit_pullback_map_germToPullbackStalk
    C f F ((Opens.map f).obj V.unop) x hx V.unop (by rfl)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The morphism `(f⁻¹ℱ)ₓ ⟶ ℱ_{f(x)}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec33ddcff63ecf8702fa7553958511a1dd4d021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
