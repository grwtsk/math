# finitaryExtensiveTopCatAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77914d94fd9d5a230fe3f9c742074668afac94fd724c73ad088676d129a0f190",
  "kind": "def",
  "lexical_name": "finitaryExtensiveTopCatAux",
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
  "slug": "finitaryextensivetopcataux--12b6284cf4337d896abe21d6",
  "source": {
    "blob": "400fb56da10be156e6cd5ef700f13a535fe5b96e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 295,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12b6284cf4337d896abe21d68019cba7935b1adb76effc106220883763171d86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77914d94fd9d5a230fe3f9c742074668afac94fd724c73ad088676d129a0f190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finitaryExtensiveTopCatAux (Z : TopCat.{u})
    (f : Z ⟶ ↧(PUnit.{u + 1} ⊕ PUnit.{u + 1})) :
    IsColimit (BinaryCofan.mk
      (TopCat.pullbackFst f (TopCat.binaryCofan ↧PUnit ↧PUnit).inl)
      (TopCat.pullbackFst f (TopCat.binaryCofan ↧PUnit ↧PUnit).inr)) := by
  have h₁ : Set.range (TopCat.pullbackFst f (TopCat.binaryCofan ↧PUnit ↧PUnit).inl) =
      f ⁻¹' Set.range Sum.inl := by
    apply le_antisymm
    · rintro _ ⟨x, rfl⟩; exact ⟨PUnit.unit, x.2.symm⟩
    · rintro x ⟨⟨⟩, hx⟩; refine ⟨⟨⟨x, PUnit.unit⟩, hx.symm⟩, rfl⟩
  have h₂ : Set.range (TopCat.pullbackFst f (TopCat.binaryCofan ↧PUnit ↧PUnit).inr) =
      f ⁻¹' Set.range Sum.inr := by
    apply le_antisymm
    · rintro _ ⟨x, rfl⟩; exact ⟨PUnit.unit, x.2.symm⟩
    · rintro x ⟨⟨⟩, hx⟩; refine ⟨⟨⟨x, PUnit.unit⟩, hx.symm⟩, rfl⟩
  refine ((TopCat.binaryCofan_isColimit_iff _).mpr ⟨?_, ?_, ?_⟩).some
  · refine ⟨(Homeomorph.prodPUnit Z).isEmbedding.comp .subtypeVal, ?_⟩
    convert! f.hom.2.1 _ isOpen_range_inl
  · refine ⟨(Homeomorph.prodPUnit Z).isEmbedding.comp .subtypeVal, ?_⟩
    convert! f.hom.2.1 _ isOpen_range_inr
  · convert! Set.isCompl_range_inl_range_inr.preimage f

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `400fb56da10be156e6cd5ef700f13a535fe5b96e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
