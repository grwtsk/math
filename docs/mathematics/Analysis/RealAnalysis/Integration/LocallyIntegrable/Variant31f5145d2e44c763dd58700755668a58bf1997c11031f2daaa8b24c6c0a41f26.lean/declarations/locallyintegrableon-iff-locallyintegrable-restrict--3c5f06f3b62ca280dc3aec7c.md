# locallyIntegrableOn_iff_locallyIntegrable_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b60c712bc50594e180911367dda57a671f24c5d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c9e8c6b-8871-d8cd-201d-4889fdaed00a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6f1811b-2359-e13f-03a9-81b60b8c008a",
  "kind": "theorem",
  "lexical_name": "locallyIntegrableOn_iff_locallyIntegrable_restrict",
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
  "slug": "locallyintegrableon-iff-locallyintegrable-restrict--3c5f06f3b62ca280dc3aec7c",
  "source": {
    "blob": "b60c712bc50594e180911367dda57a671f24c5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c5f06f3b62ca280dc3aec7ce2a546edefa1e2e9dc02ac297ec9b71b5b819683",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6f1811b-2359-e13f-03a9-81b60b8c008a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyIntegrableOn_iff_locallyIntegrable_restrict [OpensMeasurableSpace X]
    (hs : IsClosed s) : LocallyIntegrableOn f s μ ↔ LocallyIntegrable f (μ.restrict s) := by
  refine ⟨fun hf x => ?_, locallyIntegrableOn_of_locallyIntegrable_restrict⟩
  by_cases h : x ∈ s
  · obtain ⟨t, ht_nhds, ht_int⟩ := hf x h
    obtain ⟨u, hu_o, hu_x, hu_sub⟩ := mem_nhdsWithin.mp ht_nhds
    refine ⟨u, hu_o.mem_nhds hu_x, ?_⟩
    rw [IntegrableOn, restrict_restrict hu_o.measurableSet]
    exact ht_int.mono_set hu_sub
  · rw [← isOpen_compl_iff] at hs
    refine ⟨sᶜ, hs.mem_nhds h, ?_⟩
    rw [IntegrableOn, restrict_restrict, inter_comm, inter_compl_self, ← IntegrableOn]
    exacts [integrableOn_empty, hs.measurableSet]

/-- If a function is locally integrable, then it is integrable on any compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60c712bc50594e180911367dda57a671f24c5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
