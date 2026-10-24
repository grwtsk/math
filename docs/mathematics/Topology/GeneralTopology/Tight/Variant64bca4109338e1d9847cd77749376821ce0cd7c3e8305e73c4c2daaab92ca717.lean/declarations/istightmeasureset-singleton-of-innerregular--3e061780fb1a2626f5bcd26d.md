# isTightMeasureSet_singleton_of_innerRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50de509f-6f8d-c5ef-d7ec-8f6e86d277c3",
  "kind": "lemma",
  "lexical_name": "isTightMeasureSet_singleton_of_innerRegular",
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
  "slug": "istightmeasureset-singleton-of-innerregular--3e061780fb1a2626f5bcd26d",
  "source": {
    "blob": "0c2b7b080f73bbde24bb20b043b9145a6f03895c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e061780fb1a2626f5bcd26da87cd8361f7170383ff79d5987514a2cade1a760",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50de509f-6f8d-c5ef-d7ec-8f6e86d277c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTightMeasureSet_singleton_of_innerRegular [T2Space 𝓧] [OpensMeasurableSpace 𝓧]
    [IsFiniteMeasure μ] [h : μ.InnerRegular] :
    IsTightMeasureSet {μ} := by
  refine isTightMeasureSet_singleton_of_innerRegularWRT ?_
  intro s hs r hr
  obtain ⟨K, hKs, hK_compact, hμK⟩ := h.innerRegular hs r hr
  exact ⟨K, hKs, ⟨hK_compact, hK_compact.isClosed⟩, hμK⟩

/-- In a complete second-countable pseudo-metric space, finite measures are tight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2b7b080f73bbde24bb20b043b9145a6f03895c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
