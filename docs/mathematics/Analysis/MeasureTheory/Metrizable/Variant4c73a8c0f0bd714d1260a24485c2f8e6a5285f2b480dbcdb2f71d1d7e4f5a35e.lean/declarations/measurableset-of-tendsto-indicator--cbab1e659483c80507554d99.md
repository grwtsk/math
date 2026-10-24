# measurableSet_of_tendsto_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1350f7b11e4e09009e88a8df977520d52a52c400",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36e14692-99e8-521b-6b35-52ae4210b085",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60ad4db7-294d-e4ee-306a-9dc997cde918",
  "kind": "lemma",
  "lexical_name": "measurableSet_of_tendsto_indicator",
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
  "slug": "measurableset-of-tendsto-indicator--cbab1e659483c80507554d99",
  "source": {
    "blob": "1350f7b11e4e09009e88a8df977520d52a52c400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 139,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbab1e659483c80507554d996b65b1da3a7f8d5155cc593bbada99e14a038d89",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ad4db7-294d-e4ee-306a-9dc997cde918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_of_tendsto_indicator [NeBot L] (As_mble : ∀ i, MeasurableSet (As i))
    (h_lim : ∀ x, ∀ᶠ i in L, x ∈ As i ↔ x ∈ A) :
    MeasurableSet A := by
  simp_rw [← measurable_indicator_const_iff (1 : ℝ≥0∞)] at As_mble ⊢
  exact ENNReal.measurable_of_tendsto' L As_mble
    ((tendsto_indicator_const_iff_forall_eventually L (1 : ℝ≥0∞)).mpr h_lim)

/-- If the indicator functions of a.e.-measurable sets `Aᵢ` converge a.e. to the indicator function
of a set `A` along a nontrivial countably generated filter, then `A` is also a.e.-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variant4c73a8c0f0bd714d1260a24485c2f8e6a5285f2b480dbcdb2f71d1d7e4f5a35e.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1350f7b11e4e09009e88a8df977520d52a52c400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
