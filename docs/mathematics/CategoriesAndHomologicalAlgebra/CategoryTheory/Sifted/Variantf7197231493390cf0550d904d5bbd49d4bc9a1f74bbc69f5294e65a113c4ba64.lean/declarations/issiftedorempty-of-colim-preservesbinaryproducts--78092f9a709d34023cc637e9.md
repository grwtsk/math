# isSiftedOrEmpty_of_colim_preservesBinaryProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf29363440320acf8fe8716f10609fa136dac38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91c39cfa-0a69-482a-4f6c-5f6ae0a73d83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87b26a8b-204a-ea31-cc25-df411561b710",
  "kind": "theorem",
  "lexical_name": "isSiftedOrEmpty_of_colim_preservesBinaryProducts",
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
  "slug": "issiftedorempty-of-colim-preservesbinaryproducts--78092f9a709d34023cc637e9",
  "source": {
    "blob": "bbf29363440320acf8fe8716f10609fa136dac38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78092f9a709d34023cc637e96500e17361ce4adddf60d63153301a02b4219ca1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b26a8b-204a-ea31-cc25-df411561b710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSiftedOrEmpty_of_colim_preservesBinaryProducts
    [PreservesLimitsOfShape (Discrete WalkingPair) (colim : (C ⥤ Type u) ⥤ Type u)] :
    IsSiftedOrEmpty C := by
  apply final_of_colimit_comp_coyoneda_iso_pUnit
  rintro ⟨c₁, c₂⟩
  calc colimit <| diag C ⋙ coyoneda.obj (op (c₁, c₂))
    _ ≅ colimit <| _ ⋙ (coyoneda.obj _) ⊠ (coyoneda.obj _) :=
      HasColimit.isoOfNatIso <| isoWhiskerLeft _ <| .refl _
    _ ≅ colimit (_ ⊗ _) := HasColimit.isoOfNatIso <| .refl _
    _ ≅ (colimit _) ⊗ (colimit _) := CartesianMonoidalCategory.prodComparisonIso colim _ _
    _ ≅ PUnit ⊗ PUnit :=
      (Coyoneda.colimitCoyonedaIso _) ⊗ᵢ (Coyoneda.colimitCoyonedaIso _)
    _ ≅ PUnit := λ_ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf29363440320acf8fe8716f10609fa136dac38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
