# identity_N₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87671ee9-2f87-58ef-da70-063384281b0b",
  "kind": "theorem",
  "lexical_name": "identity_N₂",
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
  "slug": "identity-n--090285623dcc8d6bee9c40da",
  "source": {
    "blob": "f82166a9505601dd88a18d5960b1f9c9086341d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:090285623dcc8d6bee9c40dae47adec180cfe1163f0855a38156d215b0817b7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87671ee9-2f87-58ef-da70-063384281b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem identity_N₂ :
    (𝟙 (N₂ : Karoubi (SimplicialObject C) ⥤ _) ◫ N₂Γ₂.inv) ≫
    (Functor.associator _ _ _).inv ≫ Γ₂N₂.natTrans ◫ 𝟙 (@N₂ C _ _) = 𝟙 N₂ := by
  ext P : 2
  simp only [NatTrans.comp_app, NatTrans.hcomp_app, Functor.comp_map, Functor.associator,
    NatTrans.id_app, Functor.comp_obj]
  rw [Γ₂.map_id, N₂.map_id, comp_id, id_comp, id_comp, identity_N₂_objectwise P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f82166a9505601dd88a18d5960b1f9c9086341d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
