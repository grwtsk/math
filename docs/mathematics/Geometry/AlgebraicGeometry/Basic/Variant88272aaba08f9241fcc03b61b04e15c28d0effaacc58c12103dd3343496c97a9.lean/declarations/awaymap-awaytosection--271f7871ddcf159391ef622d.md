# awayMap_awayToSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "101f00dc8f8be4e93d24cab460a9d6cba83ee260",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7aa9b79-4c90-37a1-30ee-6ca527153d14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dcc6ea2-294d-56cd-6efe-19c8150f5c4d",
  "kind": "lemma",
  "lexical_name": "awayMap_awayToSection",
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
  "slug": "awaymap-awaytosection--271f7871ddcf159391ef622d",
  "source": {
    "blob": "101f00dc8f8be4e93d24cab460a9d6cba83ee260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 210,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271f7871ddcf159391ef622d91f9caff934d0e544dc8e914458841afab5e2752",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dcc6ea2-294d-56cd-6efe-19c8150f5c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma awayMap_awayToSection  :
    CommRingCat.ofHom (awayMap 𝒜 g_deg hx) ≫ awayToSection 𝒜 x =
      awayToSection 𝒜 f ≫ (Proj 𝒜).presheaf.map (homOfLE (basicOpen_mono _ _ _ ⟨_, hx⟩)).op := by
  ext a
  apply Subtype.ext
  ext ⟨i, hi⟩
  obtain ⟨⟨n, a, ⟨b, hb'⟩, i, rfl : _ = b⟩, rfl⟩ := mk_surjective a
  simp only [homOfLE_leOfHom, CommRingCat.hom_comp, RingHom.coe_comp, Function.comp_apply]
  erw [ProjectiveSpectrum.Proj.awayToSection_apply]
  rw [CommRingCat.hom_ofHom, val_awayMap_mk, Localization.mk_eq_mk', IsLocalization.map_mk',
    ← Localization.mk_eq_mk']
  refine Localization.mk_eq_mk_iff.mpr ?_
  rw [Localization.r_iff_exists]
  use 1
  simp only [OneMemClass.coe_one, RingHom.id_apply, one_mul, hx]
  ring

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101f00dc8f8be4e93d24cab460a9d6cba83ee260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
