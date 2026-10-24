# targetAffineLocally_affineAnd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73d1dd8c-1676-f8f4-3d5f-f83afb37c1bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:432e9f52-3fac-71f9-a2b7-febc070da50e",
  "kind": "lemma",
  "lexical_name": "targetAffineLocally_affineAnd_iff",
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
  "slug": "targetaffinelocally-affineand-iff--aac37bf109bcbc3200b1915f",
  "source": {
    "blob": "0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac37bf109bcbc3200b1915fa28a68ab0be83a0bac60638a777f89e6c56e370d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:432e9f52-3fac-71f9-a2b7-febc070da50e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma targetAffineLocally_affineAnd_iff (hQi : RingHom.RespectsIso Q)
    {X Y : Scheme.{u}} (f : X ⟶ Y) :
    targetAffineLocally (affineAnd Q) f ↔ ∀ U : Y.Opens, IsAffineOpen U →
      IsAffineOpen (f ⁻¹ᵁ U) ∧ Q (f.app U).hom := by
  simp only [targetAffineLocally, affineAnd_apply, morphismRestrict_app, CommRingCat.hom_comp,
    hQi.cancel_right_isIso]
  refine ⟨fun hf U hU ↦ ?_, fun h U ↦ ?_⟩
  · obtain ⟨hfU, hf⟩ := hf ⟨U, hU⟩
    use hfU
    have hf : Q (Scheme.Hom.app f (((⟨U, hU⟩ : Y.affineOpens) : Y.Opens).ι ''ᵁ ⊤)).hom := hf
    rwa [Scheme.Opens.ι_image_top] at hf
  · refine ⟨(h U U.2).1, ?_⟩
    change Q (Scheme.Hom.app f ((U : Y.Opens).ι ''ᵁ ⊤)).hom
    rw [Scheme.Opens.ι_image_top]
    exact (h U U.2).2

/-- Variant of `targetAffineLocally_affineAnd_iff` where `IsAffineHom` is bundled. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
