# compatibilityUnit_isoAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6649e4a5cd3a05dc44fff0034451d62549787f49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f6ce2cf-1224-4c5a-d885-14d81e4f3b40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17253f1e-4fea-e7fd-f3d9-83d656e2162b",
  "kind": "lemma",
  "lexical_name": "compatibilityUnit_isoAdd",
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
  "slug": "compatibilityunit-isoadd--ae0e59c5c61955b35e2ff000",
  "source": {
    "blob": "6649e4a5cd3a05dc44fff0034451d62549787f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae0e59c5c61955b35e2ff00017d51174654ebb8eb975f38e9e71f5eb938697db",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17253f1e-4fea-e7fd-f3d9-83d656e2162b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatibilityUnit_isoAdd (h : CompatibilityUnit adj e₁ e₂)
    (h' : CompatibilityUnit adj f₁ f₂) :
    CompatibilityUnit adj (Functor.CommShift.isoAdd e₁ f₁) (Functor.CommShift.isoAdd e₂ f₂) := by
  intro X
  have := h' (X⟦a⟧)
  simp only [← cancel_mono (f₂.inv.app _), assoc, Iso.hom_inv_id_app,
    Functor.id_obj, Functor.comp_obj, comp_id] at this
  simp only [Functor.id_obj, Functor.comp_obj, Functor.CommShift.isoAdd_hom_app,
    Functor.map_comp, assoc, unit_naturality_assoc]
  slice_rhs 5 6 => rw [← G.map_comp, Iso.inv_hom_id_app]
  simp only [Functor.comp_obj, Functor.map_id, id_comp, assoc]
  erw [f₂.hom.naturality_assoc]
  rw [← reassoc_of% this, ← cancel_mono ((shiftFunctorAdd C a b).hom.app _),
    assoc, assoc, assoc, assoc, assoc, assoc, Iso.inv_hom_id_app_assoc, Iso.inv_hom_id_app]
  dsimp
  rw [← (shiftFunctor C b).map_comp_assoc, ← (shiftFunctor C b).map_comp_assoc,
    assoc, ← h X, NatTrans.naturality]
  dsimp
  rw [comp_id]

end CommShift

variable (A) [F.CommShift A] [G.CommShift A]

/--
The property for `CommShift` structures on `F` and `G` to be compatible with an
adjunction `F ⊣ G`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6649e4a5cd3a05dc44fff0034451d62549787f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
