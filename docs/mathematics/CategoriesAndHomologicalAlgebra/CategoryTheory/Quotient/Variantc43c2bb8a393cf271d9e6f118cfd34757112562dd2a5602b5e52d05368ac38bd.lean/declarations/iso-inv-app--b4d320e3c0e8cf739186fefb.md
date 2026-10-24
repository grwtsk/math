# iso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d287dc36-86fd-45ff-fb71-c89a91010211",
  "kind": "lemma",
  "lexical_name": "iso_inv_app",
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
  "slug": "iso-inv-app--b4d320e3c0e8cf739186fefb",
  "source": {
    "blob": "3555959d0826b5308131f061c18a4e8ea50e6478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d320e3c0e8cf739186fefbc008683abc4be66759b80980a51017d653654bdb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d287dc36-86fd-45ff-fb71-c89a91010211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iso_inv_app (a : A) (X : C) :
    (iso F r hF a).inv.app ((functor r).obj X) =
      (F.commShiftIso a).inv.app X ≫
      (lift r F hF).map (((functor r).commShiftIso a).hom.app X) := by
  dsimp only [iso, natIsoLift]
  rw [natTransLift_app]
  dsimp
  erw [id_comp, comp_id, comp_id, comp_id, Functor.map_id, id_comp]

attribute [irreducible] iso

end LiftCommShift

/-- When `r : HomRel C` is compatible with the shift by an additive monoid, and
`F : C ⥤ D` is a functor which commutes with the shift and is compatible with `r`, then
the induced functor `Quotient.lift r F _ : Quotient r ⥤ D` also commutes with the shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3555959d0826b5308131f061c18a4e8ea50e6478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
