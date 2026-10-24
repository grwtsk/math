# tendstoLocallyUniformly_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6015e3b8d8caf3384c93dc3542187280fd0c352b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7ead96c-bae7-cbe5-c17f-67762219569e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfbac128-4c6c-17fc-679e-8bbbd679e90c",
  "kind": "theorem",
  "lexical_name": "tendstoLocallyUniformly_iff",
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
  "slug": "tendstolocallyuniformly-iff--4f2728351912436f2f50cee0",
  "source": {
    "blob": "6015e3b8d8caf3384c93dc3542187280fd0c352b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 412,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f2728351912436f2f50cee0949f802215e637792e117ffe3f0db0813697f1d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfbac128-4c6c-17fc-679e-8bbbd679e90c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoLocallyUniformly_iff [TopologicalSpace α] (F : ι → α → G) (f : α → G)
    (p : Filter ι) (hu : IsTopologicalGroup.rightUniformSpace G = u) :
    TendstoLocallyUniformly F f p ↔
      ∀ u ∈ 𝓝 (1 : G), ∀ (x : α), ∃ t ∈ 𝓝 x, ∀ᶠ i in p, ∀ a ∈ t, F i a / f a ∈ u := by
  simp only [div_eq_mul_inv]
  exact hu ▸ ⟨fun h u hu => h _ ⟨u, hu, fun _ => id⟩, fun h _ ⟨u, hu, hv⟩ x =>
    Exists.imp (fun _ ⟨h, hp⟩ => ⟨h, mem_of_superset hp fun _ hi a ha => hv (hi a ha)⟩)
      (h u hu x)⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6015e3b8d8caf3384c93dc3542187280fd0c352b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
