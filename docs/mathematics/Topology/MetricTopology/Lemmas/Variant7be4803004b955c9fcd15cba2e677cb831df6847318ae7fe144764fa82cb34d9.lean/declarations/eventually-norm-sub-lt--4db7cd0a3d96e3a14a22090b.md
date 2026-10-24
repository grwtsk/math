# eventually_norm_sub_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a25c9daa-1f7c-e44a-ad2e-32f6abf9e944",
  "kind": "theorem",
  "lexical_name": "eventually_norm_sub_lt",
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
  "slug": "eventually-norm-sub-lt--4db7cd0a3d96e3a14a22090b",
  "source": {
    "blob": "d95372d832e2da4d287a43f8323beff41be5a9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4db7cd0a3d96e3a14a22090b9809ba9c2bd9c4a0ae301fd07f9ad029be26b9a8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25c9daa-1f7c-e44a-ad2e-32f6abf9e944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_norm_sub_lt (x₀ : E) {ε : ℝ} (ε_pos : 0 < ε) :
    ∀ᶠ x in 𝓝 x₀, ‖x - x₀‖ < ε :=
  (continuousAt_id.sub continuousAt_const).norm (gt_mem_nhds <| by simpa)

section Dense

open Metric

/-- Let `G` be a seminormed group. If a subgroup `H` is `ε`-dense for
some `ε < 1`, that is `infDist g H ≤ ε * ‖g‖` for every `g : G`, then `H` is
dense. This is [BGR, Prop 1.1.4./2][bosch-guntzer-remmert]. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95372d832e2da4d287a43f8323beff41be5a9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
