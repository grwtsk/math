# Limits.PreservesFiniteProducts.of_preserves_binary_and_terminal

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
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:657687fd-161b-dd02-74cf-47f3fb1ed719",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0b8e5de-b664-5fc3-4ac0-0c9a2cfc2b64",
  "kind": "lemma",
  "lexical_name": "Limits.PreservesFiniteProducts.of_preserves_binary_and_terminal",
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
  "slug": "limits-preservesfiniteproducts-of-preserves-binary-and-terminal--cd4bfb9703b443ab1948915d",
  "source": {
    "blob": "eca36b6b375cb5caefc46eaebf1951d73e3aad5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd4bfb9703b443ab1948915da99bc7396aea7a46088b541199748484ed2fa2bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b8e5de-b664-5fc3-4ac0-0c9a2cfc2b64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.PreservesFiniteProducts.of_preserves_binary_and_terminal :
    PreservesFiniteProducts F where
  preserves n := by
    refine ⟨fun {K} ↦ ?_⟩
    let that : (Discrete.functor fun n => K.obj ⟨n⟩) ≅ K := Discrete.natIso fun ⟨i⟩ => Iso.refl _
    have := preservesFinOfPreservesBinaryAndTerminal F n fun n => K.obj ⟨n⟩
    apply preservesLimit_of_iso_diagram F that

end Preserves

/-- Given `n+1` objects of `C`, a cofan for the last `n` with point `c₁.pt`
and a binary cofan on `c₁.X` and `f 0`, we can build a cofan for all `n+1`.

In `extendCofanIsColimit` we show that if the two given cofans are colimits,
then this cofan is also a colimit.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant7749e3c305cae8a8b24af4431cfefd6a579539fe3d6085268cdca656d26db3b7.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca36b6b375cb5caefc46eaebf1951d73e3aad5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
