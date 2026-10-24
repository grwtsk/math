# counitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fad4798d031503cff3b02b2fa1d2ed9fe52e1f56ab2fa10ef07832f71339199",
  "kind": "def",
  "lexical_name": "counitIso",
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
  "slug": "counitiso--86259e779c6c7f8fca091e7a",
  "source": {
    "blob": "c75a53b10e2632efdb31390c7a39724cff99a2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 376,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86259e779c6c7f8fca091e7ad5b7b852e5dc47acfdfad1eaa1a1b843076a6ab6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fad4798d031503cff3b02b2fa1d2ed9fe52e1f56ab2fa10ef07832f71339199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def counitIso : inverse W D ⋙ functor W D ≅ 𝟭 (W.FunctorsInverting D) :=
  eqToIso
    (by
      refine' Functor.ext _ _
      · rintro ⟨G, hG⟩
        ext
        exact fac G hG
      · rintro ⟨G₁, hG₁⟩ ⟨G₂, hG₂⟩ f
        ext
        apply NatTransExtension.app_eq)
#align category_theory.localization.construction.whiskering_left_equivalence.counit_iso CategoryTheory.Localization.Construction.WhiskeringLeftEquivalence.counitIso

end WhiskeringLeftEquivalence

/-- The equivalence of categories `(W.localization ⥤ D) ≌ (W.FunctorsInverting D)`
induced by the composition with `W.Q : C ⥤ W.localization`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c75a53b10e2632efdb31390c7a39724cff99a2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
