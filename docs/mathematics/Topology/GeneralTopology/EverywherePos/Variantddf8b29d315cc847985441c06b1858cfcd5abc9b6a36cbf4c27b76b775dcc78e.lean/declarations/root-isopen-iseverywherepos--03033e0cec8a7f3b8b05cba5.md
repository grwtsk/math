# _root_.IsOpen.isEverywherePos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e2c0d0bf0a9d546e2049d23200fae43d618113f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b7e61ed-4788-7384-cff0-4a9845abde7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1f344ad-1b47-33a8-2460-044dffba3b82",
  "kind": "lemma",
  "lexical_name": "_root_.IsOpen.isEverywherePos",
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
  "slug": "root-isopen-iseverywherepos--03033e0cec8a7f3b8b05cba5",
  "source": {
    "blob": "2e2c0d0bf0a9d546e2049d23200fae43d618113f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03033e0cec8a7f3b8b05cba5db87e5ec4c6e9b8e6119f4fa58d32e98dec79db9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1f344ad-1b47-33a8-2460-044dffba3b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IsOpen.isEverywherePos [IsOpenPosMeasure μ] (hs : IsOpen s) : IsEverywherePos μ s := by
  intro x xs n hn
  rcases mem_nhdsWithin.1 hn with ⟨u, u_open, xu, hu⟩
  apply lt_of_lt_of_le _ (measure_mono hu)
  exact (u_open.inter hs).measure_pos μ ⟨x, ⟨xu, xs⟩⟩

section IsTopologicalGroup

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [LocallyCompactSpace G] [MeasurableSpace G] [BorelSpace G] {μ : Measure G}
  [IsMulLeftInvariant μ] [IsFiniteMeasureOnCompacts μ] [InnerRegularCompactLTTop μ]

open scoped Pointwise

/-- If a compact closed set is everywhere positive with respect to a left-invariant measure on a
topological group, then it is a Gδ set. This is nontrivial, as there is no second-countability or
metrizability assumption in the statement, so a general compact closed set has no reason to be
a countable intersection of open sets. -/
@[to_additive
/-- If a compact closed set is everywhere positive with respect to a left-invariant measure on a
topological additive group, then it is a Gδ set. This is nontrivial, as there is no
second-countability or metrizability assumption in the statement, so a general compact closed set
has no reason to be a countable intersection of open sets. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2c0d0bf0a9d546e2049d23200fae43d618113f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
