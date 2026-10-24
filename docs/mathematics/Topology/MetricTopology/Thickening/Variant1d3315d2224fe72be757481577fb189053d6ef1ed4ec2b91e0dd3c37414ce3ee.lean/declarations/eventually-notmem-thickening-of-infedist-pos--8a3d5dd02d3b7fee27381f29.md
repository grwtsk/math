# eventually_notMem_thickening_of_infEdist_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9a9222eff1becde505c2464191589eb0d49ef91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b156155c-7f2b-a5a3-335f-cd2659314f06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f711506d-9821-bf52-4906-df59a82df889",
  "kind": "lemma",
  "lexical_name": "eventually_notMem_thickening_of_infEdist_pos",
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
  "slug": "eventually-notmem-thickening-of-infedist-pos--8a3d5dd02d3b7fee27381f29",
  "source": {
    "blob": "a9a9222eff1becde505c2464191589eb0d49ef91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a3d5dd02d3b7fee27381f2995cf6786e76b8cc78267c6afec8062590b3336b9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f711506d-9821-bf52-4906-df59a82df889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_notMem_thickening_of_infEdist_pos {E : Set α} {x : α} (h : x ∉ closure E) :
    ∀ᶠ δ in 𝓝 (0 : ℝ), x ∉ Metric.thickening δ E := by
  obtain ⟨ε, ⟨ε_pos, ε_lt⟩⟩ := exists_real_pos_lt_infEdist_of_notMem_closure h
  filter_upwards [eventually_lt_nhds ε_pos] with δ hδ
  simp only [thickening, mem_setOf_eq, not_lt]
  exact (ENNReal.ofReal_le_ofReal hδ.le).trans ε_lt.le

@[deprecated (since := "2025-05-23")]
alias eventually_not_mem_thickening_of_infEdist_pos := eventually_notMem_thickening_of_infEdist_pos

/-- The (open) thickening equals the preimage of an open interval under `EMetric.infEdist`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a9222eff1becde505c2464191589eb0d49ef91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
