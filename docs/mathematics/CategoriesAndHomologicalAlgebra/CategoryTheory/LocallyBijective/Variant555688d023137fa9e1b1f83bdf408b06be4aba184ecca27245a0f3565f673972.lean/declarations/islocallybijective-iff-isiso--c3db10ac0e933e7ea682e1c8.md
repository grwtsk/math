# isLocallyBijective_iff_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f7b30f5-9564-4f4b-744e-5753edab6b2a",
  "kind": "lemma",
  "lexical_name": "isLocallyBijective_iff_isIso",
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
  "slug": "islocallybijective-iff-isiso--c3db10ac0e933e7ea682e1c8",
  "source": {
    "blob": "86ca1c07c93e18b789d86c6f8f5e9c29c6cbd623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3db10ac0e933e7ea682e1c8b3305ecc8484c4ef17e73c55f73aea6339b5e55e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f7b30f5-9564-4f4b-744e-5753edab6b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyBijective_iff_isIso :
    IsLocallyInjective f ∧ IsLocallySurjective f ↔ IsIso f := by
  constructor
  · rintro ⟨_, _⟩
    rw [← isIso_iff_of_reflects_iso f (sheafCompose J (forget A)),
      ← isLocallyBijective_iff_isIso']
    constructor <;> infer_instance
  · intro
    constructor <;> infer_instance

end

end Sheaf

variable (J A)

namespace GrothendieckTopology

/-- Given a category `C` equipped with a Grothendieck topology `J` and a concrete category `A`,
this property holds if a morphism in `Cᵒᵖ ⥤ A` satisfies `J.W` (i.e. becomes an iso after
sheafification) iff it is both locally injective and locally surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86ca1c07c93e18b789d86c6f8f5e9c29c6cbd623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
