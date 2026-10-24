# exact_biaxial_replay_of_zero_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4151d9d1-adb9-9d7c-5a12-f730c532dc57",
  "kind": "theorem",
  "lexical_name": "exact_biaxial_replay_of_zero_budget",
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
  "slug": "exact-biaxial-replay-of-zero-budget--cc167ce3437eec33d3ebeb0a",
  "source": {
    "blob": "79bfa1f9294415a4e47fb56eb6ff22359e67e9bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc167ce3437eec33d3ebeb0aa27e5053ab1d56e203909e4635ea990965b08d47",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4151d9d1-adb9-9d7c-5a12-f730c532dc57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_biaxial_replay_of_zero_budget
    {SemanticState : Type}
    [MetricSpace SemanticState]
    (certificate : BiaxialReplayCertificate SemanticState)
    (zeroBudget : certificate.profile.errorBudget.total = 0) :
    certificate.replay = certificate.source := by
  apply dist_eq_zero.mp
  apply le_antisymm
  · simpa [zeroBudget] using certificate.semanticBound
  · exact dist_nonneg

end Mathematics.Attention
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79bfa1f9294415a4e47fb56eb6ff22359e67e9bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
