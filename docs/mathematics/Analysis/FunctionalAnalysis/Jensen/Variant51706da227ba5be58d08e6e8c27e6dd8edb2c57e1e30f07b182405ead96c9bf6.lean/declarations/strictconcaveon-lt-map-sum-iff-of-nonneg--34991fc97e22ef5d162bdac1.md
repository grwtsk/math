# StrictConcaveOn.lt_map_sum_iff_of_nonneg

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
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74dc2f9a-2ae1-bd9b-b253-1097e3df7f8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19d4edfe-740b-d1bc-e2e0-ed2fa5f7c0e8",
  "kind": "theorem",
  "lexical_name": "StrictConcaveOn.lt_map_sum_iff_of_nonneg",
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
  "slug": "strictconcaveon-lt-map-sum-iff-of-nonneg--34991fc97e22ef5d162bdac1",
  "source": {
    "blob": "25776a4421c9a68b1048b578dd96a781466892c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 234,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34991fc97e22ef5d162bdac1564fd2acf6f43803745ef12bfd9ec75efc0a220a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19d4edfe-740b-d1bc-e2e0-ed2fa5f7c0e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConcaveOn.lt_map_sum_iff_of_nonneg (hf : StrictConcaveOn 𝕜 s f)
    (h₀ : ∀ i ∈ t, 0 ≤ w i) (h₁ : ∑ i ∈ t, w i = 1) (hmem : ∀ i ∈ t, p i ∈ s) :
    ∑ i ∈ t, w i • f (p i) < f (∑ i ∈ t, w i • p i) ↔
      ∃ j ∈ t, ∃ k ∈ t, w j ≠ 0 ∧ w k ≠ 0 ∧ p j ≠ p k :=
  hf.dual.map_sum_lt_iff_of_nonneg h₀ h₁ hmem

/-- Canonical form of the **equality case of Jensen's equality**.

For a strictly convex function `f` and positive weights `w`, we have
`f (∑ i ∈ t, w i • p i) = ∑ i ∈ t, w i • f (p i)` if and only if the points `p` are all equal
(and in fact all equal to their center of mass w.r.t. `w`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25776a4421c9a68b1048b578dd96a781466892c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
