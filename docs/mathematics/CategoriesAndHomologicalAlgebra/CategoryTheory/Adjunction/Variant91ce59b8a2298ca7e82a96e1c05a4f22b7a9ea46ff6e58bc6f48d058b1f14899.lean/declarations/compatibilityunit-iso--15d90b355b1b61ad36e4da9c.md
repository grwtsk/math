# compatibilityUnit_iso

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
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b18182cc-1569-06d1-27ed-3b55821f481b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45afaaf8-f26e-7870-1f2e-778fcf1adc8c",
  "kind": "lemma",
  "lexical_name": "compatibilityUnit_iso",
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
  "slug": "compatibilityunit-iso--15d90b355b1b61ad36e4da9c",
  "source": {
    "blob": "8f6a5a6ddc1f965514678695afbd2aed545e9251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 349,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15d90b355b1b61ad36e4da9c61766de0430797b9c50d675f2b6353d276cc8641",
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

Occurrence: `result:45afaaf8-f26e-7870-1f2e-778fcf1adc8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatibilityUnit_iso (a : A) :
    CommShift.CompatibilityUnit adj (F.commShiftIso a) (iso adj a) := by
  intro
  rw [← cancel_mono ((RightAdjointCommShift.iso adj a).inv.app _), assoc, assoc,
    Iso.hom_inv_id_app, RightAdjointCommShift.iso_inv_app adj _ _ (neg_add_cancel a)]
  apply (adj.homEquiv _ _).symm.injective
  dsimp
  simp only [comp_id, homEquiv_counit, Functor.map_comp, assoc, counit_naturality,
    counit_naturality_assoc, left_triangle_components_assoc]
  erw [← NatTrans.naturality_assoc]
  dsimp
  rw [shift_shiftFunctorCompIsoId_hom_app, Iso.inv_hom_id_app_assoc,
    Functor.commShiftIso_hom_naturality_assoc, ← Functor.map_comp,
    left_triangle_components, Functor.map_id, comp_id]

end RightAdjointCommShift

variable (A)

open RightAdjointCommShift in
/--
Given an adjunction `F ⊣ G` and a `CommShift` structure on `F`, this constructs
the unique compatible `CommShift` structure on `G`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6a5a6ddc1f965514678695afbd2aed545e9251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
