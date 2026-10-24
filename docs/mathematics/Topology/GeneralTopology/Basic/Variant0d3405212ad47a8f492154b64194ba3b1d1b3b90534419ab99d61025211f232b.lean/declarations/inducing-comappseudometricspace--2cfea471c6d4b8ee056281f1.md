# Inducing.comapPseudoMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a0fa19b973a7093796b750fcfc60985ec427ea074d11923d7bceb1a7bf6b4e2",
  "kind": "def",
  "lexical_name": "Inducing.comapPseudoMetricSpace",
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
  "slug": "inducing-comappseudometricspace--2cfea471c6d4b8ee056281f1",
  "source": {
    "blob": "58243fb8fb707a94222d863dd235774213e02743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1648,
    "line": 1641,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cfea471c6d4b8ee056281f185f2492ce98ba5e99bc17efd12af9f0439d26255",
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

Occurrence: `declaration:5a0fa19b973a7093796b750fcfc60985ec427ea074d11923d7bceb1a7bf6b4e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1641–1648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Inducing.comapPseudoMetricSpace {α β} [TopologicalSpace α] [m : PseudoMetricSpace β] {f : α → β}
    (hf : Inducing f) : PseudoMetricSpace α :=
  .replaceTopology (.induced f m) hf.induced
#align inducing.comap_pseudo_metric_space Inducing.comapPseudoMetricSpace

/-- Pull back a pseudometric space structure by a uniform inducing map. This is a version of
`PseudoMetricSpace.induced` useful in case if the domain already has a `UniformSpace`
structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean#L1641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58243fb8fb707a94222d863dd235774213e02743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
