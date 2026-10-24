# eventually_nnnorm_sub_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be519dc8-255c-9e92-9897-aeb6bde8e928",
  "kind": "theorem",
  "lexical_name": "eventually_nnnorm_sub_lt",
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
  "slug": "eventually-nnnorm-sub-lt--ea220cf739e25bed5b778b52",
  "source": {
    "blob": "d95372d832e2da4d287a43f8323beff41be5a9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 38,
    "path": "GRWTSK/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea220cf739e25bed5b778b527184105a5abed2c494751d0b0e1ac5b85b1e2cfe",
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

Occurrence: `result:be519dc8-255c-9e92-9897-aeb6bde8e928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nnnorm_sub_lt (x₀ : E) {ε : ℝ≥0} (ε_pos : 0 < ε) :
    ∀ᶠ x in 𝓝 x₀, ‖x - x₀‖₊ < ε :=
  (continuousAt_id.sub continuousAt_const).nnnorm (gt_mem_nhds <| by simpa)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95372d832e2da4d287a43f8323beff41be5a9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
