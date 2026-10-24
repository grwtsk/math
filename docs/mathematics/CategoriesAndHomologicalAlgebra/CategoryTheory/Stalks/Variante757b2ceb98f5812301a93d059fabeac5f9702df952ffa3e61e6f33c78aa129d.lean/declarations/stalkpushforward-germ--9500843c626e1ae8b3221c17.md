# stalkPushforward_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c090fae5-fb32-05a6-0ecf-561ff24f06ec",
  "kind": "theorem",
  "lexical_name": "stalkPushforward_germ",
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
  "slug": "stalkpushforward-germ--9500843c626e1ae8b3221c17",
  "source": {
    "blob": "d620ea12831b2d3f8861cfe9574d7736220242f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9500843c626e1ae8b3221c17ce2184ff1a1e282c87efff5342b3261bf8ffabbe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c090fae5-fb32-05a6-0ecf-561ff24f06ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkPushforward_germ (f : X ⟶ Y) (F : X.Presheaf C) (U : Opens Y)
    (x : (Opens.map f).obj U) :
      (f _* F).germ ⟨(f : X → Y) (x : X), x.2⟩ ≫ F.stalkPushforward C f x = F.germ x := by
  rw [stalkPushforward, germ, colimit.ι_map_assoc, colimit.ι_pre, whiskerRight_app]
  erw [CategoryTheory.Functor.map_id, Category.id_comp]
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.stalk_pushforward_germ TopCat.Presheaf.stalkPushforward_germ

-- Here are two other potential solutions, suggested by @fpvandoorn at
-- <https://github.com/leanprover-community/mathlib/pull/1018#discussion_r283978240>
-- However, I can't get the subsequent two proofs to work with either one.
-- def stalkPushforward'' (f : X ⟶ Y) (ℱ : X.Presheaf C) (x : X) :
--   (f _* ℱ).stalk (f x) ⟶ ℱ.stalk x :=
-- colim.map ((Functor.associator _ _ _).inv ≫
--   whiskerRight (NatTrans.op (OpenNhds.inclusionMapIso f x).inv) ℱ) ≫
-- colimit.pre ((OpenNhds.inclusion x).op ⋙ ℱ) (OpenNhds.map f x).op
-- def stalkPushforward''' (f : X ⟶ Y) (ℱ : X.Presheaf C) (x : X) :
--   (f _* ℱ).stalk (f x) ⟶ ℱ.stalk x :=
-- (colim.map (whiskerRight (NatTrans.op (OpenNhds.inclusionMapIso f x).inv) ℱ) :
--   colim.obj ((OpenNhds.inclusion (f x) ⋙ Opens.map f).op ⋙ ℱ) ⟶ _) ≫
-- colimit.pre ((OpenNhds.inclusion x).op ⋙ ℱ) (OpenNhds.map f x).op

namespace stalkPushforward

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d620ea12831b2d3f8861cfe9574d7736220242f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
