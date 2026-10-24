# endpointPolynomial_tendsto_leading

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b456b5e0-bda9-eb10-a6d2-c0a1c4d6f1a3",
  "kind": "theorem",
  "lexical_name": "endpointPolynomial_tendsto_leading",
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
  "slug": "endpointpolynomial-tendsto-leading--4b083bc973c6eff9b8a667e6",
  "source": {
    "blob": "8e3dc9aca8eada653b13113843f257f29c109700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variantee4cdc97f8876f423f8fb6a1a37683718cb0a4dd10e77add11da15bf9bd71f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b083bc973c6eff9b8a667e685e0bac443d110b702ba0fb3e91d15bece0e37ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variantee4cdc97f8876f423f8fb6a1a37683718cb0a4dd10e77add11da15bf9bd71f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b456b5e0-bda9-eb10-a6d2-c0a1c4d6f1a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPolynomial_tendsto_leading (u : ℝ) :
    Tendsto (fun A : ℝ => endpointPolynomial A u) atTop
      (𝓝 (actualLeadingEndpointPolynomial u)) := by
  have hd : Tendsto (fun A : ℝ => u / A) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop tendsto_id
  have hc : Continuous (fun v : ℝ => u ^ 2 * (2 - v) ^ 2 *
      (8 * (7 * (1 - v) ^ 2 - 1) - u ^ 2 * (2 - v) ^ 2 / 4)) := by fun_prop
  have hh := hc.continuousAt.tendsto.comp hd
  convert hh using 1
  dsimp [actualLeadingEndpointPolynomial]
  ring

/-- The original normalized test retains all three literal normalizing factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variantee4cdc97f8876f423f8fb6a1a37683718cb0a4dd10e77add11da15bf9bd71f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variantee4cdc97f8876f423f8fb6a1a37683718cb0a4dd10e77add11da15bf9bd71f33.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e3dc9aca8eada653b13113843f257f29c109700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
