# hasKernel_of_admissibleMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:045558c0-2861-858f-c7df-e371723e7e07",
  "kind": "lemma",
  "lexical_name": "hasKernel_of_admissibleMorphism",
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
  "slug": "haskernel-of-admissiblemorphism--e382c009651399218a5a88b0",
  "source": {
    "blob": "98ec2691e33ab3154d4af5cd65977a06121160e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e382c009651399218a5a88b0edb115332fe1741a10d08afc756316594d44dab6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045558c0-2861-858f-c7df-e371723e7e07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasKernel_of_admissibleMorphism {X₁ X₂ : A} (f₁ : X₁ ⟶ X₂)
    (hf₁ : admissibleMorphism ι f₁) :
    HasKernel f₁ := by
  obtain ⟨X₃, f₂, f₃, hT⟩ := distinguished_cocone_triangle (ι.map f₁)
  obtain ⟨K, Q, α, β, γ, hT'⟩ := hf₁ f₂ f₃ hT
  exact hasKernel hι hT hT'

include hι in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ec2691e33ab3154d4af5cd65977a06121160e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
