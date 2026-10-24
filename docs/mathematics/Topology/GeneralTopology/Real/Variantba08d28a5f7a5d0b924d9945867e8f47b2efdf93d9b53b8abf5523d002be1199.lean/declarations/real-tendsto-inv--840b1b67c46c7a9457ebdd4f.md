# Real.tendsto_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:465a79f0-b5c0-ed78-8936-2ca4acf65d6a",
  "kind": "theorem",
  "lexical_name": "Real.tendsto_inv",
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
  "slug": "real-tendsto-inv--840b1b67c46c7a9457ebdd4f",
  "source": {
    "blob": "ff9496f4b89d76855514bfe5199526105c6d8e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:840b1b67c46c7a9457ebdd4fb8289335c4cb42939eeb5af4ced7d440bed9ef8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:465a79f0-b5c0-ed78-8936-2ca4acf65d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.tendsto_inv {r : ℝ} (r0 : r ≠ 0) : Tendsto (fun q => q⁻¹) (𝓝 r) (𝓝 r⁻¹) :=
  continuousAt_inv₀ r0
#align real.tendsto_inv Real.tendsto_inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9496f4b89d76855514bfe5199526105c6d8e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
