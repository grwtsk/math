# mem_integers_of_powerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2de818f-4896-fa49-79ed-8e2406130777",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:303ddbca-354a-eb42-4fe2-0558d365318d",
  "kind": "theorem",
  "lexical_name": "mem_integers_of_powerSeries",
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
  "slug": "mem-integers-of-powerseries--1d3a0d20021e5d17b8c337d4",
  "source": {
    "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1175,
    "line": 1169,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d3a0d20021e5d17b8c337d4949c0a41186b266ee32ab32fde46ea15888c3210",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:303ddbca-354a-eb42-4fe2-0558d365318d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1169–1175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_integers_of_powerSeries (F : K⟦X⟧) :
    (LaurentSeriesRingEquiv K) F ∈ (idealX K).adicCompletionIntegers K⟮X⟯ := by
  rw [mem_adicCompletionIntegers, valuation_compare, val_le_one_iff_eq_coe]
  exact ⟨F, rfl⟩

/-- Conversely, all elements in the unit ball inside the completion of `K⟮X⟯` come from a power
series through the isomorphism `LaurentSeriesRingEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean#L1169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ed25b74e7312f234de3998a8e927b9103b7cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
