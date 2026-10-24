# _root_.BoundedVariationOn.tendsto_eVariationOn_Icc_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 939,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe9de7e4-db92-fff3-2191-a205d15ebe30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18125f05-e0f0-673d-2e08-2d5b61d0edc9",
  "kind": "theorem",
  "lexical_name": "_root_.BoundedVariationOn.tendsto_eVariationOn_Icc_right",
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
  "slug": "root-boundedvariationon-tendsto-evariationon-icc-right--d54475bd0595e802a4f3fb41",
  "source": {
    "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 939,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d54475bd0595e802a4f3fb415a2702a35ab8862fb835531830ae166492ada906",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18125f05-e0f0-673d-2e08-2d5b61d0edc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 939–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.BoundedVariationOn.tendsto_eVariationOn_Icc_right
    [TopologicalSpace α] [OrderTopology α] {f : α → M} {s : Set α} {l : M}
    (hf : BoundedVariationOn f s) {x : α} (h'f : Tendsto f (𝓝[s ∩ Ioi x] x) (𝓝 l)) (hx : x ∈ s) :
    Tendsto (fun y ↦ eVariationOn f (s ∩ Icc x y)) (𝓝[s ∩ Ioi x] x) (𝓝 (edist (f x) l)) := by
  have : (fun y ↦ eVariationOn f (s ∩ Icc x y)) =
      (fun y ↦ eVariationOn (f ∘ ofDual) (ofDual ⁻¹' s ∩ Icc (toDual y) (toDual x))) := by
    ext y
    rw [Icc_toDual, ← preimage_inter, comp_ofDual]
  rw [this]
  exact hf.ofDual.tendsto_eVariationOn_Icc_left h'f hx

/-- If a function has locally bounded variation, then the variation on
small closed intervals to the left of this point tends to the contribution of the point, i.e.,
the distance between the left limit and the value at the point -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean#L939).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
