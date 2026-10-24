# decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd054dbdf71673ef52e133453f4b48230e7d81603f9bbba59fc71ecb9d5c012f",
  "kind": "def",
  "lexical_name": "decomposition",
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
  "slug": "decomposition--acafc14ab7d84297f9d1a537",
  "source": {
    "blob": "6bbab8467ef8f8988179105057662b5e0be9a7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acafc14ab7d84297f9d1a537c26e2bdac2afb38cf7cd0f2756daedf97a8ae516",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd054dbdf71673ef52e133453f4b48230e7d81603f9bbba59fc71ecb9d5c012f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decomposition (P : Karoubi C) : P ⊞ P.complement ≅ (toKaroubi _).obj P.X where
  hom := biprod.desc P.decompId_i P.complement.decompId_i
  inv := biprod.lift P.decompId_p P.complement.decompId_p
  hom_inv_id := by
    apply biprod.hom_ext'
    · rw [biprod.inl_desc_assoc, comp_id, biprod.lift_eq, comp_add, ← decompId_assoc,
        add_eq_left, ← assoc]
      refine (?_ =≫ _).trans zero_comp
      ext
      simp only [comp_f, toKaroubi_obj_X, decompId_i_f, decompId_p_f,
        complement_p, comp_sub, comp_id, idem, sub_self, instZero_zero]
    · rw [biprod.inr_desc_assoc, comp_id, biprod.lift_eq, comp_add, ← decompId_assoc,
        add_eq_right, ← assoc]
      refine (?_ =≫ _).trans zero_comp
      ext
      simp only [complement_X, comp_f, decompId_i_f, complement_p,
        decompId_p_f, sub_comp, id_comp, idem, sub_self, instZero_zero]
  inv_hom_id := by
    ext
    simp only [toKaroubi_obj_X, biprod.lift_desc, instAdd_add, comp_f, decompId_p_f, decompId_i_f,
      idem, complement_X, complement_p, comp_sub, comp_id, sub_comp, id_comp, sub_self, sub_zero,
      add_sub_cancel, id_f, toKaroubi_obj_p]

end Karoubi

end Idempotents

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bbab8467ef8f8988179105057662b5e0be9a7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
