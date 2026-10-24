# shift_counit_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f6a5a6ddc1f965514678695afbd2aed545e9251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34a884f9-39a0-d33c-0e01-1a38c3ab4a56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b35ad9b0-9423-6efa-40cd-e74013f38368",
  "kind": "lemma",
  "lexical_name": "shift_counit_app",
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
  "slug": "shift-counit-app--0d647ae61694738f9328e8d5",
  "source": {
    "blob": "8f6a5a6ddc1f965514678695afbd2aed545e9251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 279,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d647ae61694738f9328e8d5563f2f42e0dba3acfd94c90f3ab6e4aa9a0eaf24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b35ad9b0-9423-6efa-40cd-e74013f38368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shift_counit_app [adj.CommShift A] (a : A) (Y : D) :
    (adj.counit.app Y)⟦a⟧' =
      (F.commShiftIso a).inv.app (G.obj Y) ≫ F.map ((G.commShiftIso a).inv.app Y) ≫
        adj.counit.app (Y⟦a⟧) := by
  have eq := NatTrans.shift_app_comm adj.counit a Y
  simp only [Functor.comp_obj, Functor.id_obj, Functor.commShiftIso_comp_hom_app, assoc,
    Functor.commShiftIso_id_hom_app, comp_id] at eq
  simp only [← eq, Functor.comp_obj, Functor.id_obj, ← F.map_comp_assoc, Iso.inv_hom_id_app,
    F.map_id, id_comp, Iso.inv_hom_id_app_assoc]

end Adjunction

namespace Adjunction

variable {C D : Type*} [Category C] [Category D]
  {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) {A : Type*} [AddGroup A] [HasShift C A] [HasShift D A]

namespace RightAdjointCommShift

variable (a b : A) (h : b + a = 0) [F.CommShift A]

/-- Auxiliary definition for `iso`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6a5a6ddc1f965514678695afbd2aed545e9251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
