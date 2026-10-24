# hasDerivWithinAt_iff_tendsto_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2fa2c7202438671aff30a60a6ebf5214b64d30a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ab08436-65b3-e23c-a516-d4b3e8ac90c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:212757b0-42b9-ff30-0738-100e8637d4b2",
  "kind": "theorem",
  "lexical_name": "hasDerivWithinAt_iff_tendsto_slope",
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
  "slug": "hasderivwithinat-iff-tendsto-slope--88694ccba48a9db0e6cdc3ef",
  "source": {
    "blob": "e2fa2c7202438671aff30a60a6ebf5214b64d30a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88694ccba48a9db0e6cdc3efaf6b14d942ca54f4e67c595a9d6387fb96a583fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:212757b0-42b9-ff30-0738-100e8637d4b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivWithinAt_iff_tendsto_slope :
    HasDerivWithinAt f f' s x ↔ Tendsto (slope f x) (𝓝[s \ {x}] x) (𝓝 f') := by
  simp only [HasDerivWithinAt, nhdsWithin, diff_eq, inf_assoc.symm, inf_principal.symm]
  exact hasDerivAtFilter_iff_tendsto_slope
#align has_deriv_within_at_iff_tendsto_slope hasDerivWithinAt_iff_tendsto_slope

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fa2c7202438671aff30a60a6ebf5214b64d30a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
