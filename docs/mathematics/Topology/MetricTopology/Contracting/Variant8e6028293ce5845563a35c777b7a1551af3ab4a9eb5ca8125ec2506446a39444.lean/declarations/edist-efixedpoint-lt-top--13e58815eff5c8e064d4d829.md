# edist_efixedPoint_lt_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5017b82-5032-4a26-54ed-60aef2293717",
  "kind": "theorem",
  "lexical_name": "edist_efixedPoint_lt_top'",
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
  "slug": "edist-efixedpoint-lt-top--13e58815eff5c8e064d4d829",
  "source": {
    "blob": "f5e688618d6c0ad2d635ec5c79e78294aec6a101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e58815eff5c8e064d4d82928aaab3df0f9c734396dc00a61b3f113d04e09f3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5017b82-5032-4a26-54ed-60aef2293717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_efixedPoint_lt_top' {s : Set α} (hsc : IsComplete s) (hsf : MapsTo f s s)
    (hf : ContractingWith K <| hsf.restrict f s s) {x : α} (hxs : x ∈ s) (hx : edist x (f x) ≠ ∞) :
    edist x (efixedPoint' f hsc hsf hf x hxs hx) < ∞ :=
  (hf.edist_efixedPoint_le' hsc hsf hxs hx).trans_lt
    (ENNReal.mul_ne_top hx <| ENNReal.inv_ne_top.2 hf.one_sub_K_ne_zero).lt_top

/-- If a globally contracting map `f` has two complete forward-invariant sets `s`, `t`,
and `x ∈ s` is at a finite distance from `y ∈ t`, then the `efixedPoint'` constructed by `x`
is the same as the `efixedPoint'` constructed by `y`.

This lemma takes additional arguments stating that `f` contracts on `s` and `t` because this way
it can be used to prove the desired equality with non-trivial proofs of these facts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e688618d6c0ad2d635ec5c79e78294aec6a101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
