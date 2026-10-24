# monoCoprod_of_preservesCoprod_of_reflectsMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1af0e1ff-0fbe-c681-4ef8-8eccbf989de0",
  "kind": "theorem",
  "lexical_name": "monoCoprod_of_preservesCoprod_of_reflectsMono",
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
  "slug": "monocoprod-of-preservescoprod-of-reflectsmono--d81937a063eda55736966cba",
  "source": {
    "blob": "00db21af17c26019142eb4df62a1eec13de8ae5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81937a063eda55736966cbaef987da68da758c3e50cf7c15549958a308a78f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af0e1ff-0fbe-c681-4ef8-8eccbf989de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monoCoprod_of_preservesCoprod_of_reflectsMono [MonoCoprod D]
    [PreservesColimitsOfShape (Discrete WalkingPair) F]
    [ReflectsMonomorphisms F] : MonoCoprod C where
  binaryCofan_inl {A B} c h := by
    let c' := BinaryCofan.mk (F.map c.inl) (F.map c.inr)
    apply mono_of_mono_map F
    show Mono c'.inl
    apply MonoCoprod.binaryCofan_inl
    apply mapIsColimitOfPreservesOfIsColimit F
    apply IsColimit.ofIsoColimit h
    refine Cocones.ext (φ := eqToIso rfl) ?_
    rintro ⟨(j₁|j₂)⟩ <;> simp only [const_obj_obj, eqToIso_refl, Iso.refl_hom,
      Category.comp_id, BinaryCofan.mk_inl, BinaryCofan.mk_inr]

end Preservation

section Concrete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00db21af17c26019142eb4df62a1eec13de8ae5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
