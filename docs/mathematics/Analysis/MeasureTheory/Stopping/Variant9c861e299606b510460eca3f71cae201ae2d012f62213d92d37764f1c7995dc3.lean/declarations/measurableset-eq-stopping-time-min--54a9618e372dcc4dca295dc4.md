# measurableSet_eq_stopping_time_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25c9a07faa8890caf333b83750be2ecf7d4bdb48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 765,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2735cd3c-b9a8-c185-0b00-8d4a85f5b0a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e83b03c-a2fd-6cd4-301e-32d3f0a6ab83",
  "kind": "theorem",
  "lexical_name": "measurableSet_eq_stopping_time_min",
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
  "slug": "measurableset-eq-stopping-time-min--54a9618e372dcc4dca295dc4",
  "source": {
    "blob": "25c9a07faa8890caf333b83750be2ecf7d4bdb48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 775,
    "line": 765,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54a9618e372dcc4dca295dc462c3696229d4d299e55c6ae96510f2dcf0617ca2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e83b03c-a2fd-6cd4-301e-32d3f0a6ab83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–775.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_eq_stopping_time_min [TopologicalSpace ι]
    [OrderTopology ι] [SecondCountableTopology ι]
    (hτ : IsStoppingTime f τ) (hπ : IsStoppingTime f π) :
    MeasurableSet[(hτ.min hπ).measurableSpace] {ω | τ ω = π ω} := by
  have : {ω | τ ω = π ω} = {ω | τ ω ≤ π ω} ∩ {ω | π ω ≤ τ ω} := by
    ext; simp only [Set.mem_ofPred_eq, le_antisymm_iff, Set.mem_inter_iff]
  rw [this]
  refine MeasurableSet.inter (measurableSet_stopping_time_le_min hτ hπ) ?_
  convert! (measurableSet_stopping_time_le_min hπ hτ) using 3
  rw [min_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c9a07faa8890caf333b83750be2ecf7d4bdb48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
