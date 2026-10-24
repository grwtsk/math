# sheafIsoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7eac0f8162c68268cbad0d0def79c82474d9c0f00d8f19af59b03a5d6e34f29",
  "kind": "def",
  "lexical_name": "sheafIsoOfIso",
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
  "slug": "sheafisoofiso--64a3435fd5ed0c84f5eb290a",
  "source": {
    "blob": "382e944b3efe4352074de4332429a980521cd61c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64a3435fd5ed0c84f5eb290a079320ee654cc561b98e0b2baec2c637a2bd68a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7eac0f8162c68268cbad0d0def79c82474d9c0f00d8f19af59b03a5d6e34f29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafIsoOfIso (H : X ≅ Y) : Y.2 ≅ H.hom.base _* X.2 where
  hom := H.hom.c
  inv := Presheaf.pushforwardToOfIso ((forget _).mapIso H).symm H.inv.c
  hom_inv_id := by
    ext U
    rw [NatTrans.comp_app]
    simpa using congr_arg (fun f => f ≫ eqToHom _) (congr_app H.inv_hom_id (op U))
  inv_hom_id := by
    ext U
    dsimp
    rw [NatTrans.id_app]
    simp only [Presheaf.pushforwardToOfIso_app, Iso.symm_inv, mapIso_hom, forget_map,
      Iso.symm_hom, mapIso_inv, eqToHom_map, assoc]
    have eq₁ := congr_app H.hom_inv_id (op ((Opens.map H.hom.base).obj U))
    have eq₂ := H.hom.c.naturality (eqToHom (congr_obj (congr_arg Opens.map
      ((forget C).congr_map H.inv_hom_id.symm)) U)).op
    rw [id_c, NatTrans.id_app, id_comp, eqToHom_map, comp_c_app] at eq₁
    rw [eqToHom_op, eqToHom_map] at eq₂
    erw [eq₂, reassoc_of% eq₁]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382e944b3efe4352074de4332429a980521cd61c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
