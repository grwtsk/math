# mul_subset_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "522713d023d0a4509e13a11eb1413cd5f72db447",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11b3f7e7-994e-7560-670f-f427931b107a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c2e8e82-8b59-50f6-f954-2be86a390471",
  "kind": "theorem",
  "lexical_name": "mul_subset_closure",
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
  "slug": "mul-subset-closure--9f65db3c1766c940d18fe821",
  "source": {
    "blob": "522713d023d0a4509e13a11eb1413cd5f72db447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 67,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f65db3c1766c940d18fe82128eb0b0214f72c4c99f51452c26f513838c25d88",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c2e8e82-8b59-50f6-f954-2be86a390471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_subset_closure (hs : s ⊆ u) (ht : t ⊆ u) : s * t ⊆ Submonoid.closure u :=
  mul_subset (Subset.trans hs Submonoid.subset_closure) (Subset.trans ht Submonoid.subset_closure)
#align submonoid.mul_subset_closure Submonoid.mul_subset_closure
#align add_submonoid.add_subset_closure AddSubmonoid.add_subset_closure

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522713d023d0a4509e13a11eb1413cd5f72db447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
