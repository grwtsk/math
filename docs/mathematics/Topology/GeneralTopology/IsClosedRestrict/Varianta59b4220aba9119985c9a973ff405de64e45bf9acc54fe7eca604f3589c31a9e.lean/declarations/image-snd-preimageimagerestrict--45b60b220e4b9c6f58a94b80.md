# image_snd_preimageImageRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:928dc180-30e3-6e00-e292-d0d3f66dddae",
  "kind": "lemma",
  "lexical_name": "image_snd_preimageImageRestrict",
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
  "slug": "image-snd-preimageimagerestrict--45b60b220e4b9c6f58a94b80",
  "source": {
    "blob": "3daeeeb0e4b249fa2fc33d2d44c387a102705ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b60b220e4b9c6f58a94b80c4801c48faffdcf9787e931818536024d74cc6a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928dc180-30e3-6e00-e292-d0d3f66dddae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_snd_preimageImageRestrict [∀ i, TopologicalSpace (α i)] :
    Prod.snd '' (Homeomorph.preimageImageRestrict α S s ''
        ((fun (x : Sᶜ.restrict ⁻¹' (Sᶜ.restrict '' s)) ↦ (x : Π j, α j)) ⁻¹' s))
      = S.restrict '' s := by
  ext x
  simp only [ne_eq, Homeomorph.preimageImageRestrict, Homeomorph.homeomorph_mk_coe, Equiv.coe_fn_mk,
    mem_image, mem_preimage, Subtype.exists, exists_and_left, Prod.exists, Prod.mk.injEq,
    exists_and_right, exists_eq_right, Subtype.mk.injEq, exists_prop]
  constructor
  · rintro ⟨y, _, z, hz_mem, _, hzx⟩
    exact ⟨z, hz_mem, hzx⟩
  · rintro ⟨z, hz_mem, hzx⟩
    exact ⟨Sᶜ.restrict z, mem_image_of_mem Sᶜ.restrict hz_mem, z, hz_mem,
      ⟨⟨⟨z, hz_mem, rfl⟩, rfl⟩, hzx⟩⟩

end Topology

section IsClosed

variable [∀ i, TopologicalSpace (α i)]

/-- The restriction of a compact closed set in a product space to a set of coordinates is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daeeeb0e4b249fa2fc33d2d44c387a102705ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
