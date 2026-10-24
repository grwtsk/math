# actualCenteredMangoldtLogError_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efafd162-eb21-6b99-f9f9-152e591e53c4",
  "kind": "theorem",
  "lexical_name": "actualCenteredMangoldtLogError_tendsto",
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
  "slug": "actualcenteredmangoldtlogerror-tendsto--00aa41503f857f545d487f59",
  "source": {
    "blob": "940c2c6c285b5ac88ea3a4ce40e1c11be25464b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant2aa32524b0284d911b2b4d01870c18df40f57802569b82750c252297d98ffdb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00aa41503f857f545d487f5936e34a9de467fd6c08d2206a28a5d66045d02942",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant2aa32524b0284d911b2b4d01870c18df40f57802569b82750c252297d98ffdb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efafd162-eb21-6b99-f9f9-152e591e53c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredMangoldtLogError_tendsto :
    Tendsto SourceActualXiErrorConvolution.actualCenteredMangoldtLogError atTop
      (𝓝 (actualPntMertensLimit + Real.eulerMascheroniConstant)) := by
  exact mangoldtLogError_tendsto_actualPntMertensLimit.add_const _

end
end FormalResearch.RiemannHypothesis.SourceActualMertensOrdinaryLimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant2aa32524b0284d911b2b4d01870c18df40f57802569b82750c252297d98ffdb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant2aa32524b0284d911b2b4d01870c18df40f57802569b82750c252297d98ffdb3.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940c2c6c285b5ac88ea3a4ce40e1c11be25464b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
