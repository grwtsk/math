# hasFiniteProducts_of_has_binary_and_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eca36b6b375cb5caefc46eaebf1951d73e3aad5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f083a48d-5216-f159-fc69-e67e6791d44a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c637d116-58cc-6bbc-754a-e9cc28738e68",
  "kind": "theorem",
  "lexical_name": "hasFiniteProducts_of_has_binary_and_terminal",
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
  "slug": "hasfiniteproducts-of-has-binary-and-terminal--9fc836227f2ab1c62b3e284c",
  "source": {
    "blob": "eca36b6b375cb5caefc46eaebf1951d73e3aad5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fc836227f2ab1c62b3e284c726c34762bb8d857335f2ec7d3d02ee719835256",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c637d116-58cc-6bbc-754a-e9cc28738e68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteProducts_of_has_binary_and_terminal : HasFiniteProducts C :=
  ⟨fun n => ⟨fun K => by
    let that : (Discrete.functor fun n => K.obj ⟨n⟩) ≅ K := Discrete.natIso fun ⟨_⟩ => Iso.refl _
    rw [← hasLimit_iff_of_iso that]
    apply hasProduct_fin⟩⟩


end

section Preserves

variable (F : C ⥤ D)
variable [PreservesLimitsOfShape (Discrete WalkingPair) F]
variable [PreservesLimitsOfShape (Discrete.{0} PEmpty) F]
variable [HasFiniteProducts.{v} C]

set_option backward.defeqAttrib.useBackward true in
/-- If `F` preserves the terminal object and binary products, then it preserves products indexed by
`Fin n` for any `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca36b6b375cb5caefc46eaebf1951d73e3aad5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
