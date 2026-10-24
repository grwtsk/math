# injective_iff_preservesEpimorphisms_preadditive_yoneda_obj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0817645328bb5980f19082805e74b256a15e49fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77d16a52-c522-f20a-0607-406bd664b276",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12911c21-558d-02c3-d9b7-75bcd02a9e13",
  "kind": "theorem",
  "lexical_name": "injective_iff_preservesEpimorphisms_preadditive_yoneda_obj'",
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
  "slug": "injective-iff-preservesepimorphisms-preadditive-yoneda-obj--156525e8ba93657f5e4873e7",
  "source": {
    "blob": "0817645328bb5980f19082805e74b256a15e49fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:156525e8ba93657f5e4873e7cea5225a8ba94c71fec8d2ee812b80a0a3323552",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12911c21-558d-02c3-d9b7-75bcd02a9e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_iff_preservesEpimorphisms_preadditive_yoneda_obj' (J : C) :
    Injective J ↔ (preadditiveYonedaObj J).PreservesEpimorphisms := by
  rw [injective_iff_preservesEpimorphisms_yoneda_obj]
  refine ⟨fun h : (preadditiveYonedaObj J ⋙ (forget <| ModuleCat (End J))).PreservesEpimorphisms =>
    ?_, ?_⟩
  · exact
      Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveYonedaObj J) (forget _)
  · intro
    exact (inferInstance : (preadditiveYonedaObj J ⋙ forget _).PreservesEpimorphisms)

end Injective

end Preadditive

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0817645328bb5980f19082805e74b256a15e49fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
