# upperHemicontinuous_iff_preimage_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fe97eff17b1a588d9038f861ba586f978f9626c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3a954b6-c998-0bb4-0aca-1c44b3882f64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c61fa62-1b88-cfe1-1a75-03670a3f591c",
  "kind": "lemma",
  "lexical_name": "upperHemicontinuous_iff_preimage_Iic",
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
  "slug": "upperhemicontinuous-iff-preimage-iic--4256a6d9a440977b813031a6",
  "source": {
    "blob": "5fe97eff17b1a588d9038f861ba586f978f9626c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4256a6d9a440977b813031a6d005c779de79446a86f4e24e96620de0a44d64e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c61fa62-1b88-cfe1-1a75-03670a3f591c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma upperHemicontinuous_iff_preimage_Iic :
    UpperHemicontinuous f ↔ ∀ x, ∀ u ∈ 𝓝ˢ (f x), f ⁻¹' Iic u ∈ 𝓝 x := by
  simp [upperHemicontinuous_iff, upperHemicontinuousAt_iff_preimage_Iic]

/-- A correspondence `f : α → Set β` is upper hemicontinuous if and only if its *upper inverse*
(i.e., `u : Set β ↦ f ⁻¹' (Iic u)`, note that `f ⁻¹' (Iic u) = {x | f x ⊆ u}`) sends open sets
to open sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe97eff17b1a588d9038f861ba586f978f9626c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
