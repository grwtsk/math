# Hom.toImage_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "807d549eba1105b449311e8bb91afdf0b6f6dd1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 738,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5c31cdd-4574-b6e0-dddd-6155193da081",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cf81e3a-07a9-a146-6623-108ab88d603b",
  "kind": "lemma",
  "lexical_name": "Hom.toImage_app",
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
  "slug": "hom-toimage-app--d68ef37ef15a0a77ec3905f5",
  "source": {
    "blob": "807d549eba1105b449311e8bb91afdf0b6f6dd1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 738,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68ef37ef15a0a77ec3905f5898a36e9b7b938859b90db21b6a8d0758417d0a8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cf81e3a-07a9-a146-6623-108ab88d603b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.toImage_app :
    f.toImage.app (f.imageι ⁻¹ᵁ U) =
      (f.ker.subschemeObjIso U).hom ≫ CommRingCat.ofHom
        (Ideal.Quotient.lift _ (f.app U.1).hom (IdealSheafData.ideal_ofIdeals_le _ _)) := by
  have := ConcreteCategory.epi_of_surjective _ (f.ker.subschemeι_app_surjective U)
  rw [← cancel_epi (f.ker.subschemeι.app U), ← Scheme.Hom.comp_app,
    Scheme.Hom.congr_app f.toImage_imageι, f.ker.subschemeι_app,
    ← IsIso.eq_comp_inv, ← Functor.map_inv]
  simp only [Hom.comp_base, Opens.map_comp_obj, Category.assoc,
    Iso.inv_hom_id_assoc, eqToHom_op, inv_eqToHom]
  rw [← reassoc_of% CommRingCat.ofHom_comp, Ideal.Quotient.lift_comp_mk, CommRingCat.ofHom_hom,
    eqToHom_refl, CategoryTheory.Functor.map_id]
  exact (Category.comp_id _).symm

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807d549eba1105b449311e8bb91afdf0b6f6dd1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
