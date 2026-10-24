# isSiftedOrEmpty_of_colim_preservesBinaryProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:791d0a64-6f18-97ba-bbd0-87af29850345",
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
  "slug": "issiftedorempty-of-colim-preservesbinaryproducts--23ed52ca30ccd550bef191ba",
  "source": {
    "blob": "420f951f1881b1e140f260ae6c664b15a16e0642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ed52ca30ccd550bef191ba6e71e36e4d0b932d5cf753176579ad4b336d978d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:791d0a64-6f18-97ba-bbd0-87af29850345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–251.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420f951f1881b1e140f260ae6c664b15a16e0642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
