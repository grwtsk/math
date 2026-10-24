# hΓ₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9361f1afb2e6816c3bf06225336fa93888554fca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/322da27d3880cebc9d61dedb8693e21ab4fc5ba51f2e9417789755bc8cc4354a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18f68128-42a0-1b40-a3d3-dc38eee29a3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d08e59c8-415b-46de-83e5-9033204677b2",
  "kind": "theorem",
  "lexical_name": "hΓ₀",
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
  "slug": "h--0f9be0dd61cbfda04c03e296",
  "source": {
    "blob": "9361f1afb2e6816c3bf06225336fa93888554fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Variant322da27d3880cebc9d61dedb8693e21ab4fc5ba51f2e9417789755bc8cc4354a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9be0dd61cbfda04c03e29616f8330a3209e1e0690421882897eceaf7ee1694",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Variant322da27d3880cebc9d61dedb8693e21ab4fc5ba51f2e9417789755bc8cc4354a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d08e59c8-415b-46de-83e5-9033204677b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hΓ₀ :
    (toKaroubiEquivalence (ChainComplex C ℕ)).functor ⋙ Preadditive.DoldKan.equivalence.inverse =
      Γ ⋙ (toKaroubiEquivalence _).functor :=
  Functor.congr_obj (functorExtension₂_comp_whiskeringLeft_toKaroubi _ _) Γ₀
#align category_theory.idempotents.dold_kan.hΓ₀ CategoryTheory.Idempotents.DoldKan.hΓ₀

/-- The Dold-Kan equivalence for pseudoabelian categories given
by the functors `N` and `Γ`. It is obtained by applying the results in
`Compatibility.lean` to the equivalence `Preadditive.DoldKan.Equivalence`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Variant322da27d3880cebc9d61dedb8693e21ab4fc5ba51f2e9417789755bc8cc4354a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalencePseudoabelian/Variant322da27d3880cebc9d61dedb8693e21ab4fc5ba51f2e9417789755bc8cc4354a.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9361f1afb2e6816c3bf06225336fa93888554fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
