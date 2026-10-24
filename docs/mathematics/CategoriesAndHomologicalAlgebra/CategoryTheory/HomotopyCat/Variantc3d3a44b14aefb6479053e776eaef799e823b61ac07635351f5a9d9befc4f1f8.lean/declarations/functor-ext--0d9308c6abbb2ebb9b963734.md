# functor_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3c72ae71e7a67f9aad4c8e6d078297b0d25770c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b24011c-967c-c5e0-0c11-588bd8867223",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa394d67-5dff-790b-8c61-37f760c53aab",
  "kind": "lemma",
  "lexical_name": "functor_ext",
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
  "slug": "functor-ext--0d9308c6abbb2ebb9b963734",
  "source": {
    "blob": "f3c72ae71e7a67f9aad4c8e6d078297b0d25770c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 450,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d9308c6abbb2ebb9b9637342a39038b59166800353625f7f0a7a8f94eeea7cf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa394d67-5dff-790b-8c61-37f760c53aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functor_ext {F G : V.HomotopyCategory ⥤ D}
    (h₁ : ∀ (x : V _⦋0⦌₂), F.obj (mk x) = G.obj (mk x))
    (h₂ : ∀ ⦃x y : V _⦋0⦌₂⦄ (e : Edge x y),
      F.map (homMk e) = eqToHom (h₁ x) ≫ G.map (homMk e) ≫ eqToHom (h₁ y).symm) :
    F = G :=
  Functor.ext_of_iso (mkNatIso (fun x ↦ eqToIso (h₁ x))
    (fun _ _ e ↦ by simp [h₂ e])) (fun _ ↦ h₁ _)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3c72ae71e7a67f9aad4c8e6d078297b0d25770c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
