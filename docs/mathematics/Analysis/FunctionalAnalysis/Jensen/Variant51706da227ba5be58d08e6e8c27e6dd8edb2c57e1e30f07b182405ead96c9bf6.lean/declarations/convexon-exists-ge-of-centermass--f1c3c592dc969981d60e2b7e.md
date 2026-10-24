# ConvexOn.exists_ge_of_centerMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25776a4421c9a68b1048b578dd96a781466892c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73a8ee26-420a-51fd-b61d-137fb9b967d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:934a2091-e243-c249-2bcf-4caa5ceb0b38",
  "kind": "lemma",
  "lexical_name": "ConvexOn.exists_ge_of_centerMass",
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
  "slug": "convexon-exists-ge-of-centermass--f1c3c592dc969981d60e2b7e",
  "source": {
    "blob": "25776a4421c9a68b1048b578dd96a781466892c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 355,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1c3c592dc969981d60e2b7e8b401ef8498ee6f3358631245c4957353136c645",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:934a2091-e243-c249-2bcf-4caa5ceb0b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.exists_ge_of_centerMass {t : Finset ι} (h : ConvexOn 𝕜 s f)
    (hw₀ : ∀ i ∈ t, 0 ≤ w i) (hw₁ : 0 < ∑ i ∈ t, w i) (hp : ∀ i ∈ t, p i ∈ s) :
    ∃ i ∈ t, f (t.centerMass w p) ≤ f (p i) := by
  set y := t.centerMass w p
  -- TODO: can `rsuffices` be used to write the `exact` first, then the proof of this obtain?
  obtain ⟨i, hi, hfi⟩ : ∃ i ∈ {i ∈ t | w i ≠ 0}, w i • f y ≤ w i • (f ∘ p) i := by
    have hw' : (0 : 𝕜) < ∑ i ∈ t with w i ≠ 0, w i := by rwa [sum_filter_ne_zero]
    refine exists_le_of_sum_le (nonempty_of_sum_ne_zero hw'.ne') ?_
    rw [← sum_smul, ← smul_le_smul_iff_of_pos_left (inv_pos.2 hw'), inv_smul_smul₀ hw'.ne', ←
      centerMass, centerMass_filter_ne_zero]
    exact h.map_centerMass_le hw₀ hw₁ hp
  rw [mem_filter] at hi
  exact ⟨i, hi.1, (smul_le_smul_iff_of_pos_left <| (hw₀ i hi.1).lt_of_ne hi.2.symm).1 hfi⟩

/-- If a function `f` is concave on `s`, then the value it takes at some center of mass of points of
`s` is greater than the value it takes on one of those points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25776a4421c9a68b1048b578dd96a781466892c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
