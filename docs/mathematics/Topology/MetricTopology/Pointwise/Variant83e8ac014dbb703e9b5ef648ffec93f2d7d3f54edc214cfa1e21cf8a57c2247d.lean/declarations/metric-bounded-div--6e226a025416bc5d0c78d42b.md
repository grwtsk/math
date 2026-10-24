# Metric.Bounded.div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d67e1eaaa82419b1d6c2ff8c4439072715cebd97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a5ce3e5-24c1-10b8-61e3-0652368678c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09efe2ad-e412-3380-0879-b7ab69c09a4a",
  "kind": "theorem",
  "lexical_name": "Metric.Bounded.div",
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
  "slug": "metric-bounded-div--6e226a025416bc5d0c78d42b",
  "source": {
    "blob": "d67e1eaaa82419b1d6c2ff8c4439072715cebd97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e226a025416bc5d0c78d42bc46fb497806ab6abddd6fe7514c5baadfeaf9359",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09efe2ad-e412-3380-0879-b7ab69c09a4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.Bounded.div (hs : Bounded s) (ht : Bounded t) : Bounded (s / t) :=
  (div_eq_mul_inv _ _).symm.subst <| hs.mul ht.inv
#align metric.bounded.div Metric.Bounded.div
#align metric.bounded.sub Metric.Bounded.sub

end SeminormedGroup

section SeminormedCommGroup

variable [SeminormedCommGroup E] {ε δ : ℝ} {s t : Set E} {x y : E}

section EMetric

open EMetric

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67e1eaaa82419b1d6c2ff8c4439072715cebd97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
