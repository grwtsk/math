# MetricSpace.induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d9cad6938f41728815fd5cca579c037ba50fee5fa08e8159643f1550e94c936",
  "kind": "abbrev",
  "lexical_name": "MetricSpace.induced",
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
  "slug": "metricspace-induced--ee2ecfb5d27f0ef2289ac8b8",
  "source": {
    "blob": "e0fe8f381707250ace1c08029f820a02dc8e62c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant436cca315c86e33d4101560d75087e75b5ccb6c96419960c68d1aeb147eed49b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee2ecfb5d27f0ef2289ac8b8372a10a7ed7141dc2ef848f42035ec70c9925b86",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant436cca315c86e33d4101560d75087e75b5ccb6c96419960c68d1aeb147eed49b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d9cad6938f41728815fd5cca579c037ba50fee5fa08e8159643f1550e94c936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MetricSpace.induced {γ β} (f : γ → β) (hf : Function.Injective f) (m : MetricSpace β) :
    MetricSpace γ :=
  { PseudoMetricSpace.induced f m.toPseudoMetricSpace with
    eq_of_dist_eq_zero := fun h => hf (dist_eq_zero.1 h) }

/-- Pull back a metric space structure by a uniform embedding. This is a version of
`MetricSpace.induced` useful in case if the domain already has a `UniformSpace` structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant436cca315c86e33d4101560d75087e75b5ccb6c96419960c68d1aeb147eed49b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant436cca315c86e33d4101560d75087e75b5ccb6c96419960c68d1aeb147eed49b.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0fe8f381707250ace1c08029f820a02dc8e62c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
