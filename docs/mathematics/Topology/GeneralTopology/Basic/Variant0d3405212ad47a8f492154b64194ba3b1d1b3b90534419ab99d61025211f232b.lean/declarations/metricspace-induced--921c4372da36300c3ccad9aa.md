# MetricSpace.induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee355ead722de2790722105874fa2be0ecc4ff6f22332a7acc78ce4ea44386bb",
  "kind": "def",
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
  "slug": "metricspace-induced--921c4372da36300c3ccad9aa",
  "source": {
    "blob": "58243fb8fb707a94222d863dd235774213e02743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3117,
    "line": 3109,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:921c4372da36300c3ccad9aa940ba2111a21e1818673d60dda35c5bbfdf0510f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee355ead722de2790722105874fa2be0ecc4ff6f22332a7acc78ce4ea44386bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3109–3117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MetricSpace.induced {γ β} (f : γ → β) (hf : Function.Injective f) (m : MetricSpace β) :
    MetricSpace γ :=
  { PseudoMetricSpace.induced f m.toPseudoMetricSpace with
    eq_of_dist_eq_zero := fun h => hf (dist_eq_zero.1 h) }
#align metric_space.induced MetricSpace.induced

/-- Pull back a metric space structure by a uniform embedding. This is a version of
`MetricSpace.induced` useful in case if the domain already has a `UniformSpace` structure. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean#L3109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58243fb8fb707a94222d863dd235774213e02743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
