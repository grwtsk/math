# hom_inv_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ff25128-0b9c-e62f-4dec-11b7701ce8c6",
  "kind": "lemma",
  "lexical_name": "hom_inv_id",
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
  "slug": "hom-inv-id--42b6ddd7b8cbc15228e33dcc",
  "source": {
    "blob": "9416211610574d325340696a1c2b6864a3a5a126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42b6ddd7b8cbc15228e33dccabe4409d0e33f56943af228da30fd468bc5cce91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff25128-0b9c-e62f-4dec-11b7701ce8c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_inv_id : hom f g ≫ inv f g = 𝟙 _ := by
  ext n
  simp [hom, inv, lift_desc_f _ _ _ _ _ _ _ n (n+1) rfl, ext_from_iff _ (n + 1) _ rfl]

set_option linter.style.maxHeartbeats false in
-- no reason was present for this heartbeat bump at the time of the creation of the linter
set_option maxHeartbeats 400000 in
/-- Given two composable morphisms `f` and `g` in the category of cochain complexes,
this is the `homotopyInvHomId` field of the homotopy equivalence
`mappingConeCompHomotopyEquiv f g` between `mappingCone g` and the mapping cone of
the morphism `mappingCone f ⟶ mappingCone (f ≫ g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416211610574d325340696a1c2b6864a3a5a126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
