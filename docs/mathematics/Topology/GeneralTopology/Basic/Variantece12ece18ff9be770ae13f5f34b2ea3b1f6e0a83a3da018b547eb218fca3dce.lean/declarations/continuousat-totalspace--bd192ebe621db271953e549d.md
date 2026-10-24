# continuousAt_totalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:401375af-67d6-7e16-ad68-7039560fd2ed",
  "kind": "theorem",
  "lexical_name": "continuousAt_totalSpace",
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
  "slug": "continuousat-totalspace--bd192ebe621db271953e549d",
  "source": {
    "blob": "b4bb4345d1ef7d147cf058ae6f1690a5620d3c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 312,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd192ebe621db271953e549d04beb7e382e8be3f55e0643e179702b20ef37b05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:401375af-67d6-7e16-ad68-7039560fd2ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_totalSpace (f : X → TotalSpace F E) {x₀ : X} :
    ContinuousAt f x₀ ↔
      ContinuousAt (fun x => (f x).proj) x₀ ∧
        ContinuousAt (fun x => ((trivializationAt F E (f x₀).proj) (f x)).2) x₀ :=
  (trivializationAt F E (f x₀).proj).tendsto_nhds_iff mem_trivializationAt_proj_source
#align fiber_bundle.continuous_at_total_space FiberBundle.continuousAt_totalSpace

end FiberBundle

variable (F E)

/-- If `E` is a fiber bundle over a conditionally complete linear order,
then it is trivial over any closed interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bb4345d1ef7d147cf058ae6f1690a5620d3c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
