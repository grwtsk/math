# isTightMeasureSet_singleton_of_innerRegularWRT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9228f5c-5814-0b1b-8cda-55061bb7c1ed",
  "kind": "theorem",
  "lexical_name": "isTightMeasureSet_singleton_of_innerRegularWRT",
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
  "slug": "istightmeasureset-singleton-of-innerregularwrt--cc4de28c3d1e2e5d220ca212",
  "source": {
    "blob": "0c2b7b080f73bbde24bb20b043b9145a6f03895c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc4de28c3d1e2e5d220ca212f8f9049c3f3e71455bb733fc1f46730c1c7eafb3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9228f5c-5814-0b1b-8cda-55061bb7c1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTightMeasureSet_singleton_of_innerRegularWRT [OpensMeasurableSpace 𝓧] [IsFiniteMeasure μ]
    (h : μ.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) MeasurableSet) :
    IsTightMeasureSet {μ} := by
  rw [IsTightMeasureSet_iff_exists_isCompact_measure_compl_le]
  intro ε hε
  let r := μ Set.univ
  cases lt_or_ge ε r with
  | inl hεr =>
    have hεr' : r - ε < r := ENNReal.sub_lt_self (measure_ne_top μ _) (zero_le'.trans_lt hεr).ne'
      hε.ne'
    obtain ⟨K, _, ⟨hK_compact, hK_closed⟩, hKμ⟩ := h .univ (r - ε) hεr'
    refine ⟨K, hK_compact, ?_⟩
    simp only [mem_singleton_iff, forall_eq]
    rw [measure_compl hK_closed.measurableSet (measure_ne_top μ _), tsub_le_iff_right]
    rw [ENNReal.sub_lt_iff_lt_right (ne_top_of_lt hεr) hεr.le, add_comm] at hKμ
    exact hKμ.le
  | inr hεr => exact ⟨∅, isCompact_empty, by simpa⟩

/-- Inner regular finite measures on T2 spaces are tight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tight/Variant64bca4109338e1d9847cd77749376821ce0cd7c3e8305e73c4c2daaab92ca717.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2b7b080f73bbde24bb20b043b9145a6f03895c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
