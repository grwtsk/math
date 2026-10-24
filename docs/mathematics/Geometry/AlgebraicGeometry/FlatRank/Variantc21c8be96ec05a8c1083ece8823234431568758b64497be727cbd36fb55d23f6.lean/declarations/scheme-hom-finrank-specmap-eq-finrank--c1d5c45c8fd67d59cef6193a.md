# Scheme.Hom.finrank_SpecMap_eq_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7cce39dcb92ad68c034d0b3acef4f8d65e8c668",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc9c7bc2-615c-863d-7f6c-b93ebd767a82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20343470-53f4-8859-7f9c-bb683eb56cdd",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.finrank_SpecMap_eq_finrank",
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
  "slug": "scheme-hom-finrank-specmap-eq-finrank--c1d5c45c8fd67d59cef6193a",
  "source": {
    "blob": "a7cce39dcb92ad68c034d0b3acef4f8d65e8c668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d5c45c8fd67d59cef6193aa0d31a5a3458bf05104bdc4d518b8daa84a27e65",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20343470-53f4-8859-7f9c-bb683eb56cdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.finrank_SpecMap_eq_finrank {R S : CommRingCat.{u}} {f : R ⟶ S} (hf₁ : f.hom.Finite)
    (hf₂ : f.hom.Flat) :
    finrank (Spec.map f) = f.hom.finrank := by
  simp only [← IsFinite.SpecMap_iff, ← Flat.SpecMap_iff] at hf₁ hf₂
  have hf₁ : (Spec.map f).appTop.hom.Finite := (Spec.map f).finite_appTop
  have hf₂ : (Spec.map f).appTop.hom.Flat := (Spec.map f).flat_appTop
  ext
  rw [finrank_eq_of_isAffine, IsAffine.finrank]
  have : f = (Scheme.ΓSpecIso R).inv ≫ (Spec.map f).appTop ≫ (Scheme.ΓSpecIso S).hom := by simp
  conv_rhs => rw [this]
  dsimp
  rw [RingHom.finrank_comp_right_of_bijective _ _ (ConcreteCategory.bijective_of_isIso _)]
  · rw [RingHom.finrank_comp_left_of_bijective _ _ (ConcreteCategory.bijective_of_isIso _) hf₁ hf₂]
  · exact .comp (.of_surjective _ (ConcreteCategory.bijective_of_isIso _).surjective) hf₁
  · exact .comp hf₂ (.of_bijective (ConcreteCategory.bijective_of_isIso _))
  · simp [isoSpec_Spec_hom, SpecMap_ΓSpecIso_hom, ← AlgebraicGeometry.Spec.map_apply,
      ← Scheme.Hom.comp_apply, toSpecΓ_SpecMap_ΓSpecIso_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7cce39dcb92ad68c034d0b3acef4f8d65e8c668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
