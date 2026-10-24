# FamilyOfElements.restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0a9fa854588d8c7a9e0b081c379d613cb418d5367f7262ccbbfdefd974b8e9c",
  "kind": "def",
  "lexical_name": "FamilyOfElements.restrict",
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
  "slug": "familyofelements-restrict--d7201a433b9e882f99398e42",
  "source": {
    "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7201a433b9e882f99398e429ab5349c2926991874a0967e15ceabd04687f44c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0a9fa854588d8c7a9e0b081c379d613cb418d5367f7262ccbbfdefd974b8e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FamilyOfElements.restrict {R₁ R₂ : Presieve X} (h : R₁ ≤ R₂) :
    FamilyOfElements P R₂ → FamilyOfElements P R₁ := fun x _ f hf => x f (h _ hf)
#align category_theory.presieve.family_of_elements.restrict CategoryTheory.Presieve.FamilyOfElements.restrict

/-- A family of elements for the arrow set `R` is *compatible* if for any `f₁ : Y₁ ⟶ X` and
`f₂ : Y₂ ⟶ X` in `R`, and any `g₁ : Z ⟶ Y₁` and `g₂ : Z ⟶ Y₂`, if the square `g₁ ≫ f₁ = g₂ ≫ f₂`
commutes then the elements of `P Z` obtained by restricting the element of `P Y₁` along `g₁` and
restricting the element of `P Y₂` along `g₂` are the same.

In special cases, this condition can be simplified, see `pullbackCompatible_iff` and
`compatible_iff_sieveCompatible`.

This is referred to as a "compatible family" in Definition C2.1.2 of [Elephant], and on nlab:
https://ncatlab.org/nlab/show/sheaf#GeneralDefinitionInComponents
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c974151d5bc1b2d9b9e8deaf62a471c7cf45100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
