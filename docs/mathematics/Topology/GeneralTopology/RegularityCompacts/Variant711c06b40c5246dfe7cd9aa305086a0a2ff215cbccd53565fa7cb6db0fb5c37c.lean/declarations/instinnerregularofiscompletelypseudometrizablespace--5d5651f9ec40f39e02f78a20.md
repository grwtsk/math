# instInnerRegularOfIsCompletelyPseudoMetrizableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45ad93b9ac18c14680a885dfbfcbca7ed37404f9ba9cc62fbf3fc3f5fc4f2c2a",
  "kind": "instance",
  "lexical_name": "instInnerRegularOfIsCompletelyPseudoMetrizableSpace",
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
  "slug": "instinnerregularofiscompletelypseudometrizablespace--5d5651f9ec40f39e02f78a20",
  "source": {
    "blob": "5297c711b797ee2965e88d9cac318d4d534fd7ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d5651f9ec40f39e02f78a20ee05df8a2c0b2914b5e4cb1924fbdf98dbaf3a4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45ad93b9ac18c14680a885dfbfcbca7ed37404f9ba9cc62fbf3fc3f5fc4f2c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instInnerRegularOfIsCompletelyPseudoMetrizableSpace [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [BorelSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegular := by
  suffices P.InnerRegularCompactLTTop from inferInstance
  refine ⟨Measure.InnerRegularWRT.measurableSet_of_isOpen ?_ ?_⟩
  · exact innerRegularWRT_isCompact_isOpen P
  · exact fun s t hs_compact ht_open ↦ hs_compact.inter_right ht_open.isClosed_compl

/--
A measure `μ` on a `PseudoEMetricSpace E` and `CompleteSpace E` with `SecondCountableTopology E`
is inner regular for finite measure sets with respect to compact sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5297c711b797ee2965e88d9cac318d4d534fd7ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
