# coverEntropy_image_le_of_uniformContinuousOn_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fae2bf600934e7da7a04edcb421864af1429676c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb48b792-c8a4-a1a5-43cf-a27b62dcafc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4707b5f1-172b-e9e1-ea7b-d147af81d99d",
  "kind": "lemma",
  "lexical_name": "coverEntropy_image_le_of_uniformContinuousOn_invariant",
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
  "slug": "coverentropy-image-le-of-uniformcontinuouson-invariant--2ea6c74862ce183ef16fcb70",
  "source": {
    "blob": "fae2bf600934e7da7a04edcb421864af1429676c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ea6c74862ce183ef16fcb70aa80cafce638fbc4b5616d2eff96a27ad648c46c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4707b5f1-172b-e9e1-ea7b-d147af81d99d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropy_image_le_of_uniformContinuousOn_invariant [UniformSpace X] [UniformSpace Y]
    {S : X → X} {T : Y → Y} {φ : X → Y} (h : Semiconj φ S T) {F G : Set X}
    (h' : UniformContinuousOn φ G) (hF : F ⊆ G) (hG : MapsTo S G G) :
    coverEntropy T (φ '' F) ≤ coverEntropy S F := by
  rw [← coverEntropy_restrict_subset hF hG]
  have hφ : Semiconj (G.domRestrict φ) (hG.restrict S G G) T := by
    intro x
    rw [G.domRestrict_apply, G.domRestrict_apply, hG.val_restrict_apply, h.eq x]
  apply (coverEntropy_image_le_of_uniformContinuous hφ
    (uniformContinuousOn_iff_restrict.1 h') (val ⁻¹' F)).trans_eq'
  rw [← image_image_val_eq_domRestrict_image, image_preimage_coe G F, inter_eq_right.2 hF]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae2bf600934e7da7a04edcb421864af1429676c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
