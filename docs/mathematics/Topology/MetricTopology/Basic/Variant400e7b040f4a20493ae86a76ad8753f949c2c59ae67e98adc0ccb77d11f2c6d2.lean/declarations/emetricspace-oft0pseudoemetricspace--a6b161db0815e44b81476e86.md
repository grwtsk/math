# EMetricSpace.ofT0PseudoEMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41196a678c356a2bf2314ac3056e2f03f9febf243a32d28d44108fc1a739b038",
  "kind": "def",
  "lexical_name": "EMetricSpace.ofT0PseudoEMetricSpace",
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
  "slug": "emetricspace-oft0pseudoemetricspace--a6b161db0815e44b81476e86",
  "source": {
    "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1058,
    "line": 1047,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6b161db0815e44b81476e86f565ffb2aa38945476c26688c5d90663a7804b97",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41196a678c356a2bf2314ac3056e2f03f9febf243a32d28d44108fc1a739b038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1047–1058.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EMetricSpace.ofT0PseudoEMetricSpace (α : Type*) [PseudoEMetricSpace α] [T0Space α] :
    EMetricSpace α :=
  { ‹PseudoEMetricSpace α› with
    eq_of_edist_eq_zero := fun h => (EMetric.inseparable_iff.2 h).eq }
#align emetric_space.of_t0_pseudo_emetric_space EMetricSpace.ofT0PseudoEMetricSpace

/-- Auxiliary function to replace the uniformity on an emetric space with
a uniformity which is equal to the original one, but maybe not defeq.
This is useful if one wants to construct an emetric space with a
specified uniformity. See Note [forgetful inheritance] explaining why having definitionally
the right uniformity is often important.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean#L1047).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
