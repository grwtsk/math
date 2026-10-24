# natTrans_app_f_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1980bc73-769d-cb80-cce3-851a1c0b2313",
  "kind": "theorem",
  "lexical_name": "natTrans_app_f_app",
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
  "slug": "nattrans-app-f-app--82dad358d3e05be9adf3d7be",
  "source": {
    "blob": "ca3f4382b221c40c1acee6973d25b5eff1a87a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82dad358d3e05be9adf3d7bee1ee2d76392a36a17fc68508f2cfbc535caf4216",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1980bc73-769d-cb80-cce3-851a1c0b2313`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natTrans_app_f_app (P : Karoubi (SimplicialObject C)) :
    Γ₂N₂.natTrans.app P = by
      exact (N₂ ⋙ Γ₂).map P.decompId_i ≫
        (compatibility_Γ₂N₁_Γ₂N₂.hom ≫ Γ₂N₁.natTrans).app P.X ≫ P.decompId_p := by
  dsimp only [natTrans]
  rw [whiskeringLeft_obj_preimage_app
    (compatibility_Γ₂N₁_Γ₂N₂.hom ≫ Γ₂N₁.natTrans : _ ⟶ toKaroubi _ ⋙ 𝟭 _) P, Functor.id_map]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₂N₂.nat_trans_app_f_app AlgebraicTopology.DoldKan.Γ₂N₂.natTrans_app_f_app

-- Porting note: added to speed up elaboration
attribute [irreducible] natTrans

end Γ₂N₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3f4382b221c40c1acee6973d25b5eff1a87a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
