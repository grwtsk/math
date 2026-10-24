# hasPullback_biprod_fst_biprod_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:236b82affb0424f51e8d5dd5fa993710b2f12cc3502049749348b6fa03432847",
  "kind": "instance",
  "lexical_name": "hasPullback_biprod_fst_biprod_snd",
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
  "slug": "haspullback-biprod-fst-biprod-snd--2ba48452804789b4e9a0b22b",
  "source": {
    "blob": "d4b9fe6fd8d06022d38ced6dcefae7f5490c3836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 634,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ba48452804789b4e9a0b22bff64dd3846f2d7afe3771abdd0e7b802ad17c8b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:236b82affb0424f51e8d5dd5fa993710b2f12cc3502049749348b6fa03432847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasPullback_biprod_fst_biprod_snd [HasBinaryBiproduct X Y] :
    HasPullback (biprod.inl : X ⟶ _) (biprod.inr : Y ⟶ _) :=
  HasLimit.mk ⟨_, (of_hasBinaryBiproduct X Y).isLimit⟩
#align category_theory.is_pullback.has_pullback_biprod_fst_biprod_snd CategoryTheory.IsPullback.hasPullback_biprod_fst_biprod_snd

/-- The pullback of `biprod.inl` and `biprod.inr` is the zero object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b9fe6fd8d06022d38ced6dcefae7f5490c3836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
