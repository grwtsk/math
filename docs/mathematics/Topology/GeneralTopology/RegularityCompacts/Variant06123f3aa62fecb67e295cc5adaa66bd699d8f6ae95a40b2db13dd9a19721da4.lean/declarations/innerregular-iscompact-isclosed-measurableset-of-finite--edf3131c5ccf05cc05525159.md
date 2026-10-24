# innerRegular_isCompact_isClosed_measurableSet_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e9f5cb6c12dc77d143f68d964f4ecbc7251cac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a37d4fc-4fef-bbf7-eb13-513ff6b617f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:111043eb-1e24-cfb7-ebca-9eef97a0349c",
  "kind": "theorem",
  "lexical_name": "innerRegular_isCompact_isClosed_measurableSet_of_finite",
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
  "slug": "innerregular-iscompact-isclosed-measurableset-of-finite--edf3131c5ccf05cc05525159",
  "source": {
    "blob": "0e9f5cb6c12dc77d143f68d964f4ecbc7251cac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edf3131c5ccf05cc05525159e8a501cfbeaae58d040e62e2ceadb28354fa5edf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111043eb-1e24-cfb7-ebca-9eef97a0349c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerRegular_isCompact_isClosed_measurableSet_of_finite [PseudoEMetricSpace α]
    [CompleteSpace α] [SecondCountableTopology α] [BorelSpace α]
    (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) MeasurableSet := by
  suffices P.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s)
      fun s ↦ MeasurableSet s ∧ P s ≠ ∞ by
    convert this
    simp only [iff_self_and]
    exact fun _ ↦ measure_ne_top P _
  refine Measure.InnerRegularWRT.measurableSet_of_isOpen ?_ ?_
  · exact innerRegularWRT_isCompact_isClosed_isOpen P
  · rintro s t ⟨hs_compact, hs_closed⟩ ht_open
    rw [diff_eq]
    exact ⟨hs_compact.inter_right ht_open.isClosed_compl,
      hs_closed.inter (isClosed_compl_iff.mpr ht_open)⟩

/--
On a Polish space, any finite measure is regular with respect to compact and closed sets. In
particular, a finite measure on a Polish space is a tight measure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9f5cb6c12dc77d143f68d964f4ecbc7251cac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
