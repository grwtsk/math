# subset_closedBall_norm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60457818-3ae5-e71d-6db0-8a9959e329e4",
  "kind": "theorem",
  "lexical_name": "subset_closedBall_norm_mul",
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
  "slug": "subset-closedball-norm-mul--b0a7ca86c209424da128b072",
  "source": {
    "blob": "63c1901026c6855fadc702ac7372ab4733738167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0a7ca86c209424da128b072106d801a70248bfa44c5444328effe1473ab9d7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60457818-3ae5-e71d-6db0-8a9959e329e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_closedBall_norm_mul (a : A) : σ a ⊆ Metric.closedBall (0 : 𝕜) (‖a‖ * ‖(1 : A)‖) :=
  fun k hk => by simp [norm_le_norm_mul_of_mem hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c1901026c6855fadc702ac7372ab4733738167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
