# innerRegular_isCompact_isClosed_measurableSet_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32943ec4-c6da-2c42-301f-e2eb4ae6ceab",
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
  "slug": "innerregular-iscompact-isclosed-measurableset-of-finite--466a3069453621f82b2b8fe2",
  "source": {
    "blob": "33bd25384eb2abe88ef3f47a23b70756efe52abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:466a3069453621f82b2b8fe25d8bbe66195e34832230acefb6ca6fde1dab19f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32943ec4-c6da-2c42-301f-e2eb4ae6ceab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–246.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33bd25384eb2abe88ef3f47a23b70756efe52abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
