# IsPreconnected.preimage_of_isClosedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0efc7f68ed6795e790d7b8078877ff0ac2385bb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f52ae96-9834-7976-4fbd-f0d4e0b0e08b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95618e7e-d109-41aa-6315-c2cb5b4e1cc5",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.preimage_of_isClosedMap",
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
  "slug": "ispreconnected-preimage-of-isclosedmap--d91f1fc9e30e4fa58cc391f1",
  "source": {
    "blob": "0efc7f68ed6795e790d7b8078877ff0ac2385bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 366,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91f1fc9e30e4fa58cc391f1bd607a1061b2627d65d4fb4d9827b7059d8a97d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95618e7e-d109-41aa-6315-c2cb5b4e1cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.preimage_of_isClosedMap [TopologicalSpace β] {s : Set β}
    (hs : IsPreconnected s) {f : α → β} (hinj : Function.Injective f) (hf : IsClosedMap f)
    (hsf : s ⊆ range f) : IsPreconnected (f ⁻¹' s) :=
  isPreconnected_closed_iff.2 fun u v hu hv hsuv hsu hsv => by
    replace hsf : f '' f ⁻¹' s = s := image_preimage_eq_of_subset hsf
    obtain ⟨_, has, ⟨a, hau, rfl⟩, hav⟩ : (s ∩ (f '' u ∩ f '' v)).Nonempty := by
      refine isPreconnected_closed_iff.1 hs (f '' u) (f '' v) (hf u hu) (hf v hv) ?_ ?_ ?_
      · simpa only [hsf, image_union] using image_mono (f := f) hsuv
      · simpa only [image_preimage_inter] using hsu.image f
      · simpa only [image_preimage_inter] using hsv.image f
    · exact ⟨a, has, hau, hinj.mem_set_image.1 hav⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0efc7f68ed6795e790d7b8078877ff0ac2385bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
