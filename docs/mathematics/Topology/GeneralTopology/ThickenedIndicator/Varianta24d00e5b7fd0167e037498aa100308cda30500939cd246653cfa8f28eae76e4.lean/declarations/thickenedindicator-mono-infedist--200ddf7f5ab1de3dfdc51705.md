# thickenedIndicator_mono_infEDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f5b77a4ddb6115b85ed223143fa34bf19dd4ade",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a24d00e5b7fd0167e037498aa100308cda30500939cd246653cfa8f28eae76e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45d845e5-76f2-394a-41e0-57911ea3fac8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba208fc8-e6a8-a9e2-0a71-d4b205f88bfe",
  "kind": "lemma",
  "lexical_name": "thickenedIndicator_mono_infEDist",
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
  "slug": "thickenedindicator-mono-infedist--200ddf7f5ab1de3dfdc51705",
  "source": {
    "blob": "5f5b77a4ddb6115b85ed223143fa34bf19dd4ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Varianta24d00e5b7fd0167e037498aa100308cda30500939cd246653cfa8f28eae76e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:200ddf7f5ab1de3dfdc51705657972387f31576c9ab089d80a40ebff8574c7fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Varianta24d00e5b7fd0167e037498aa100308cda30500939cd246653cfa8f28eae76e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba208fc8-e6a8-a9e2-0a71-d4b205f88bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma thickenedIndicator_mono_infEDist {δ : ℝ} (δ_pos : 0 < δ) {E : Set α} {x y : α}
    (h : infEDist x E ≤ infEDist y E) :
    thickenedIndicator δ_pos E y ≤ thickenedIndicator δ_pos E x := by
  simp only [thickenedIndicator_apply]
  gcongr
  · finiteness
  · exact thickenedIndicatorAux_mono_infEDist δ h

/-- As the thickening radius δ tends to 0, the δ-thickened indicator of a set E (in α) tends
pointwise to the indicator function of the closure of E.

Note: This version is for the bundled bounded continuous functions, but the topology is not
the topology on `α →ᵇ ℝ≥0`. Coercions to functions `α → ℝ≥0` are done first, so the topology
instance is the product topology (the topology of pointwise convergence). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Varianta24d00e5b7fd0167e037498aa100308cda30500939cd246653cfa8f28eae76e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Varianta24d00e5b7fd0167e037498aa100308cda30500939cd246653cfa8f28eae76e4.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5b77a4ddb6115b85ed223143fa34bf19dd4ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
